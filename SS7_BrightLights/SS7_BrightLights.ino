const int LED1= 8;
const int LED2= 12;
const int LED3= 13;
const int buttonPin = 2; 

int buttonState = 0; 

void setup() {
  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);
  pinMode(LED3, OUTPUT);
  pinMode(buttonPin, INPUT);
}

void loop() {
 digitalWrite(LED1, HIGH);
 delay(1000);
 digitalWrite(LED1, LOW);
 delay(5000);
  digitalWrite(LED2, HIGH);
 delay(2000);
  digitalWrite(LED2, LOW);
 delay(4000);
  digitalWrite(LED3, HIGH);
 delay(3000);
  digitalWrite(LED3, LOW);
 delay(6000);

 buttonState = digitalRead(buttonPin);

  // check if the pushbutton is pressed. If it is, the buttonState is HIGH:
  if (buttonState == HIGH) {
    // turn LED on:
    digitalWrite(LED1, HIGH);
    digitalWrite(LED2, HIGH);
    digitalWrite(LED3, HIGH);
  } else {
    // turn LED off:
    digitalWrite(LED1, LOW);
    digitalWrite(LED2, LOW);
    digitalWrite(LED3, LOW);
  }
}
