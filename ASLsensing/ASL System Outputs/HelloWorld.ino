/*
  Hello World.ino
  2013 Copyright (c) Seeed Technology Inc.  All right reserved.

  Author:Loovee
  2013-9-18

  Grove - Serial LCD RGB Backlight demo.

  This library is free software; you can redistribute it and/or
  modify it under the terms of the GNU Lesser General Public
  License as published by the Free Software Foundation; either
  version 2.1 of the License, or (at your option) any later version.

  This library is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
  Lesser General Public License for more details.

  You should have received a copy of the GNU Lesser General Public
  License along with this library; if not, write to the Free Software
  Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
*/

#include <Wire.h>
#include "rgb_lcd.h"
//#include "wiring_private.h" // pinPeripheral() function
#include <SoftwareSerial.h>
#include <stdlib.h>
#include <string.h>

#define rxPin   10  // Serial input (connects to Emic 2's SOUT pin)
#define txPin   11  // Serial output (connects to Emic 2's SIN pin)
#define ledPin  13  // Most Arduino boards have an on-board LED on this pin

rgb_lcd lcd;


const int colorR = 255;
const int colorG = 255;
const int colorB = 255;

SoftwareSerial emicSerial =  SoftwareSerial(rxPin, txPin);

char* concat(char *s1, char *s2)
{
    char *result = malloc(strlen(s1)+strlen(s2)+1);//+1 for the null-terminator
    //in real code you would check for errors in malloc here
    strcpy(result, s1);
    strcat(result, s2); 
    return result;
}

void setup() 
{
  //Wire.begin();
  delay(1000);
    // set up the LCD's number of columns and rows:
    lcd.begin(16, 2);
  
    lcd.setRGB(colorR, colorG, colorB);
    
    // Print a message to the LCD.
    //lcd.print("hello,world!");
  void display();

// define pin modes
  pinMode(ledPin, OUTPUT);
  pinMode(rxPin, INPUT);
  pinMode(txPin, OUTPUT);
  
  // set the data rate for the SoftwareSerial port
  emicSerial.begin(9600);

  digitalWrite(ledPin, LOW);  // turn LED off
  
  /*
    When the Emic 2 powers on, it takes about 3 seconds for it to successfully
    initialize. It then sends a ":" character to indicate it's ready to accept
    commands. If the Emic 2 is already initialized, a CR will also cause it
    to send a ":"
  */
  emicSerial.print('\n');             // Send a CR in case the system is already up
  while (emicSerial.read() != ':');   // When the Emic 2 has initialized and is ready, it will send a single ':' character, so wait here until we receive it
  delay(10);                          // Short delay
emicSerial.flush(); // Flush the receive buffer
    
    delay(1000);
}

void loop() 
{
    static int a = 0;
    // set the cursor to column 0, line 1
    // (note: line 1 is the second row, since counting begins with 0):
    if(a == 0){ 
    // Speak some text
  char* speech = "";

  if(true){ //h
    speech = concat(speech, "h");
  }

  if(true){ //e
    speech = concat(speech, "e");
  }
  if(true){ //l
    speech = concat(speech, "l");
  }
  if(true){ //l
    speech = concat(speech, "l");
  }
  if(true){ //o
    speech = concat(speech, "o");
  }

  if(true){ // world
    speech = concat(speech, " EECS 1 49 world.");
  }

  //emicSerial.print('N2');

  emicSerial.print('S');
  emicSerial.print(speech);  // Send the desired string to convert to speech
  emicSerial.print('\n');
  digitalWrite(ledPin, HIGH);         // Turn on LED while Emic is outputting audio
  while (emicSerial.read() != ':');   // Wait here until the Emic 2 responds with a ":" indicating it's ready to accept the next command
  digitalWrite(ledPin, LOW);
    
  delay(500);    // 1/2 second delay

free(speech);//deallocate the string
  }
  a++; 

    lcd.setCursor(0, 0);
    delay(100);
    // print the number of seconds since reset:
    //lcd.print(millis()/1000);
    lcd.print("hello, world!");
    delay(1000);
}

/*********************************************************************************************************
  END FILE
*********************************************************************************************************/
