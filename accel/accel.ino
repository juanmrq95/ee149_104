#include <Wire.h>

#include <FreeSixIMU.h>
#include <FIMU_ADXL345.h>
#include <FIMU_ITG3200.h>

int angles[6]; // yaw pitch roll

// Set the FreeSixIMU object
FreeSixIMU sixDOF = FreeSixIMU();

void setup() {
Serial.begin(9600);
Wire.begin();

delay(5);
sixDOF.init(); //begin the IMU
delay(5);
}

void loop() {

sixDOF.getRawValues(angles);

//This gets orientation instead
//sixDOF.getEuler(angles)



  Serial.print("AccelX: ");
  Serial.print(angles[0]);
  Serial.print("   AccelY: ");
  Serial.print(angles[1]);
  Serial.print("   AccelZ: ");
  Serial.print(angles[2]);
  Serial.print("   GyroX: ");
  Serial.print(angles[3]);
  Serial.print("   GyroY: ");
  Serial.print(angles[4]);
  Serial.print("   GyroZ: ");
  Serial.println(angles[5]);

delay(100);
}
