#include "wifi_handler.hpp"
#include <MQTTClient.h>
#include <WiFi.h>

#include "secure_config.h"
#include "sensors.hpp"

const int humanSensor = 2;
const int trigPin_1 = 0; // Trigger Pin
const int echoPin_1 = 4; //Echo Pin
const int trigPin_2 = 16; // Trigger Pin
const int echoPin_2 = 17; //Echo Pin

WiFiClient net;
MQTTClient client;
unsigned long lastMillis = 0;

void mqttConnect() {
  Serial.print("\nconnecting MQTT.");
  while (!client.connect("esp32-sensor", MQTT_USER, MQTT_PASS))
    Serial.print(".");

  Serial.println("connected!");
}

void messageReceived(String &topic, String &payload) {
  Serial.print("topic: " + topic);
  Serial.println("\tpayload: " + payload);
}

void setup() {
  Serial.begin(115200);
  delay(10);
  Serial.println("Hello, This is ESP32!");
  pinMode(echoPin_1, INPUT);
  pinMode(trigPin_1, OUTPUT);
  pinMode(echoPin_2, INPUT);
  pinMode(trigPin_2, OUTPUT);
  pinMode(humanSensor, INPUT_PULLUP); // Inputモードでプルアップ抵抗を有効に
  new WifiHandler(); // start Wi-Fi connection
  // Initialize MQTT Client
  client.begin("broker.shiftr.io", net);
  client.onMessage(messageReceived);
  mqttConnect();
}

void loop() {
  client.loop();
  delay(100);
  if (!client.connected()) mqttConnect();
  // publish a message roughly every second.
  if (millis() - lastMillis > 1000) {
    lastMillis = millis();
    bool humanSensorState = readHumanSensor(humanSensor);
    double distance_1 = readDistanceSensor(trigPin_1, echoPin_1);
    delay(30); // avoid interference by ultrasonic sensors
    double distance_2 = readDistanceSensor(trigPin_2, echoPin_2);
    double distance = max(distance_1, distance_2);
    bool gyouretsuMode = readGyouretsuMode(humanSensorState, distance);

    Serial.print("L: ");
    Serial.print(gyouretsuMode);
    Serial.print("\tD: ");
    Serial.println(distance);
    client.publish("/gyouretsu", String(gyouretsuMode));
    client.publish("/distance", String(distance));
  }
}
