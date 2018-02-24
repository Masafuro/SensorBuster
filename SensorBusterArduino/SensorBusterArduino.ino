#include "SRF05.h"

SRF05 Sensor(3, 2, 200, 10);// trigPin, echoPin, MaxDist, readInterval
int rainfallpin = 0;


String data[30];

void setup() {
    Serial.begin(9600);
    Sensor.Unlock = true;
}

void loop() {
  data[0] = supersonic();
  data[1] = analogRead(rainfallpin);
  Serial.println(data[0] + "," + data[1]);
  delay(100);

}

String supersonic(){
    if ( Sensor.Read() > -1 ) {
        if ( Sensor.Distance == 0 ) {
            return "out";
        } else {
            return String(Sensor.Distance);
        }
    }
}
