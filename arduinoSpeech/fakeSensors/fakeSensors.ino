// Reading from fake sensors to spell a word
const int pin2 = 2;     // the number of the pushbutton pin
const int pin3 = 3;     
const int pin4 = 4;     
const int pin5 = 5;     


// variables will change:

int sensor2 = 0;  
int count_c = 0; 
int sensor3 = 0; 
int count_o = 0; 
int sensor4 = 0;
int count_w = 0; 
int sensor5 = 0;   

void setup() {
  // put your setup code here, to run once:
  pinMode(pin2, INPUT);
  pinMode(pin3, INPUT);
  pinMode(pin4, INPUT);
  pinMode(pin5, INPUT);

  Serial.begin(9600);
}

void loop() {
// put your main code here, to run repeatedly:
  sensor2 = digitalRead(pin2);
  sensor3 = digitalRead(pin3);
  sensor4 = digitalRead(pin4);
  sensor5 = digitalRead(pin5);

  if(sensor2 == HIGH){
    //Serial.print(count_c);
    count_c++;
    if(count_c == 10){
      Serial.println("c");
      count_c = 0;
      while(sensor2 != LOW){
        sensor2 = digitalRead(pin2);
        Serial.println(sensor2);        
        Serial.println("waiting");
      }
    }
  } else if (sensor3 == HIGH){
    //Serial.print(count_o);
    count_o++;
    if(count_o == 10){
      Serial.print("o");
      count_o = 0;
      delay(500);
    }
  } else if (sensor4 == HIGH){
    //Serial.print(count_w);
    count_w++;
    if(count_w == 10){
      Serial.print("w");
      count_w = 0;
      delay(500);
    }    
  } else if (sensor5 == HIGH){
    Serial.print(".");
  } else {
  }
//  Serial.print("sensor2: ");
//  Serial.print(sensor2);
//  Serial.print(" sensor3: ");
//  Serial.print(sensor3);
//  Serial.print(" sensor4: ");
//  Serial.print(sensor4);
//  Serial.print(" sensor5: ");
//  Serial.println(sensor5);
//  
  delay(200);
}
