int ring_side = 9;
int middle_tip = 13;
int middle_b = 10;
int middle_side = 11;
int index_tip = 12;
int index_side = 17;
int pinky_side = 2;


void setup() 
{
  pinMode(ring_side, INPUT);
  pinMode(middle_tip, INPUT);
  pinMode(middle_b, INPUT); 
  pinMode(middle_side, INPUT);
  pinMode(index_tip, INPUT);
  pinMode(index_side, INPUT);
  pinMode(pinky_side, INPUT);
  Serial.begin(9600);
}

void loop() 
{
  Serial.print("ring_side ");
  Serial.print(digitalRead(ring_side));
  Serial.print("   middle_tip: ");
  Serial.print(digitalRead(middle_tip));
  Serial.print("   middle_b: ");
  Serial.print(digitalRead(middle_b));
  Serial.print("   middle_side: ");
  Serial.print(digitalRead(middle_side));
  Serial.print("   index_tip: ");
  Serial.print(digitalRead(index_tip));
  Serial.print("   index_side: ");
  Serial.print(digitalRead(index_side));
  Serial.print("   pinky_side: ");
  Serial.println(digitalRead(pinky_side));

  
delay(100);
}
