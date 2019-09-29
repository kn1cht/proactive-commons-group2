#include "blower_balloon.hpp"
#include "web_client.hpp"
#include "wifi_handler.hpp"

String sendPutRequest(WebClient* client, String property, String value) {
  return client->put_request(
    "/api/cookers/0/" + property,
    String("{\"") + property + String("\": \"") + value + String("\"}")
  );
}

WebClient* client;

String res;

void setup() {
  Serial.begin(115200);
  delay(10);
  Serial.println("Hello, This is ESP32!");
  ledcDetachPin(SPEAKER_PIN); // disable speaker
  /*** Sensors ***/
  Serial.println("Initializing Sensors...");
  pinMode(WATER_TANK_SENSOR_PIN, INPUT);
  pinMode(WASTE_TANK_SENSOR_PIN, INPUT);
  new WifiHandler(); // start Wi-Fi connection
  client = new WebClient();
}

void loop() {
  int i;

  Serial.println("weight   : " + String(state.weight));
  Serial.println("prevW    : " + String(state.prevWeight));
  state.water = digitalRead(WATER_TANK_SENSOR_PIN); // 0: water shortage alert
  Serial.println("water    : " + String(state.water));
  state.waste = digitalRead(WASTE_TANK_SENSOR_PIN); // 1: water full alert
  Serial.println("waste    : " + String(state.waste));
  state.pressure = analogRead(PRESSURE_SENSOR_PIN) * 3.6 / 4096;
  Serial.println("pressure : " + String(state.pressure));

  if(state.id == STATE_STANDBY || state.id == STATE_COMPLETE) {
    res = sendPutRequest(client, "weight", String(state.weight));
  }
  delay(1000);
}
