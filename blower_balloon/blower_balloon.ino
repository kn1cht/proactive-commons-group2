#include "wifi_handler.hpp"
#include <ArduinoJson.h>
#include <MQTTClient.h>
#include <WiFi.h>

#include "secure_config.h"

WiFiClient net;
MQTTClient client;
StaticJsonDocument<200> doc;

const unsigned int blowerPin[4] = {4, 16, 17, 5};

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
  DeserializationError error = deserializeJson(doc, payload);
  if (error) {
    Serial.print("deserializeJson() failed: ");
    Serial.println(error.c_str());
    return;
  }
  JsonObject json = doc.as<JsonObject>();
  String command = json["command"];
  for(int idx=0; idx < 4; ++idx) {
    int cmdNum = command[idx] - '0';
    Serial.print("pin: ");
    Serial.print(blowerPin[idx]);
    Serial.print("\tcmd: ");
    Serial.println(cmdNum);
    digitalWrite(blowerPin[idx], cmdNum);
  }
}

void setup() {
  Serial.begin(115200);
  delay(10);
  Serial.println("Hello, This is ESP32!");
  for(const auto& pin: blowerPin) pinMode(pin, OUTPUT);
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
