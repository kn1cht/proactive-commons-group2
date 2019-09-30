#ifndef SENSORS_HPP
#define SENSORS_HPP

#include "moving_counter.hpp"

MovingCounter humanSensorCounter(60);

bool readHumanSensor(int humanSensor) {
  bool state = !digitalRead(humanSensor);
  return state;
}

double readDistanceSensor(int trigPin, int echoPin) {
  digitalWrite(trigPin, LOW);
  delayMicroseconds(2);
  digitalWrite(trigPin, HIGH); // 超音波を出力
  delayMicroseconds(10);
  digitalWrite(trigPin, LOW);
  double duration = pulseIn(echoPin, HIGH); // センサからの入力
  return (duration > 0 && duration < 24000) ? duration / 29 / 2 : 0;
}

bool readGyouretsuMode(bool human, double distance) {
  humanSensorCounter.push((int)human);
  bool superhs = humanSensorCounter.get_average() >= 0.8; // 0.8以上なら人感センサーは通行人ではなく行列に反応
  bool gyouretsu = superhs || (distance > 1 && distance < 300);
  return gyouretsu;
}

#endif // SENSORS_HPP
