#include <MQTTClient.h>
#include <WiFi.h>

#include "secure_config.h"

WiFiClient net;
MQTTClient client;

unsigned long lastMillis = 0;

void connect() {
  while (WiFi.status() != WL_CONNECTED) {
    Serial.print(".");
    delay(1000);
  }

  Serial.print("\nconnecting...");
  while (!client.connect("esp32", "3b705a7f", "b8f0aeaa652d2f08"))
    Serial.print(".");

  Serial.println("connected!");
  client.subscribe("/hello");
}

void messageReceived(String &topic, String &payload) {
  Serial.print("topic: " + topic);
  Serial.println("payload: " + payload);
}

void setup() {
  Serial.begin(115200);
  WiFi.begin(ssid, pass);
  client.begin("broker.shiftr.io", net);
  client.onMessage(messageReceived);
  connect();
}

void loop() {
  client.loop();
  delay(100);
  if (!client.connected()) connect();

  // publish a message roughly every second.
  if (millis() - lastMillis > 1000) {
    lastMillis = millis();
    client.publish("/hello", "world");
  }
}
