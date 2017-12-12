/* This code runs on Arduino UNO:
Recieves data through serial pins and then displays to the lcd screen" */

char incomingByte ; //Initialized variable to store recieved data
#include <Wire.h>
#include "rgb_lcd.h"

#include <SoftwareSerial.h>

rgb_lcd lcd;

const int colorR = 255;
const int colorG = 255;
const int colorB = 255;

#define rxPin   10  // Serial input (connects to Emic 2's SOUT pin)
#define txPin   11  // Serial output (connects to Emic 2's SIN pin)

SoftwareSerial lcdSerial =  SoftwareSerial(rxPin, txPin);
void setup() {
  // Begin the Serial at 9600 Baud
  Serial.begin(9600);
  lcdSerial.begin(9600);
  lcd.begin(16, 2);
  
  lcd.setRGB(colorR, colorG, colorB);
    
  // Print a message to the LCD.
  //lcd.print("hello,world!");
  void display();

  pinMode(rxPin, INPUT);
  pinMode(txPin, OUTPUT);
}

void loop() {
    while(incomingByte !='.'){
      if (lcdSerial.available() > 0) {
        // read the incoming byte:
        incomingByte = lcdSerial.read();
        Serial.print("I received: ");
        Serial.println(incomingByte);
        
        static int curs = 0;
        lcd.setCursor(curs, 0);
        delay(100);
        // print the number of seconds since reset:
        //lcd.print(millis()/1000);
        lcd.print(incomingByte);
        delay(150);
       //delay(250);
        curs++;
      }
    }
}
