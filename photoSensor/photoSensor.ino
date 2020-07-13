int photoSensorPin = A0;
int photoSensorState;
float brightness; //float
float zwErg;
int counter = 0;

void setup() {
  pinMode(photoSensorPin, INPUT);
  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
  photoSensorState = analogRead(photoSensorPin);
  brightness = photoSensorState / 1024.0;
  
  counter ++;
  if(counter == 1000){
    Serial.println(brightness);
  }
}
