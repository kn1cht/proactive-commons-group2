#include "wifi_handler.hpp"
#include <WiFi.h>
#include <MQTTClient.h>

#include "secure_config.h"

WiFiClient net;
MQTTClient client;

String res;
unsigned long lastMillis = 0;

void mqttConnect() {
  Serial.print("\nconnecting MQTT.");
  while (!client.connect("esp32-balloon", MQTT_USER, MQTT_PASS))
    Serial.print(".");

  Serial.println("connected!");
  client.subscribe("/balloon");
}

void messageReceived(String &topic, String &payload) {
  Serial.print("topic: " + topic);
  Serial.println("\tpayload: " + payload);
}

void setup() {
  Serial.begin(115200);
  delay(10);
  Serial.println("Hello, This is ESP32!");
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
}
