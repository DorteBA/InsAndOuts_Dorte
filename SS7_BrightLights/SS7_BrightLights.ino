const int LED1= 3;
const int LED2= 5;
const int LED3= 6;
const int LED4= 9;
const int LED5= 10;
const int LED6= 11;
const int buttonPin = 8; 

int buttonState = 0; 

void setup() {
  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);
  pinMode(LED3, OUTPUT);
  pinMode(LED4, OUTPUT);
  pinMode(LED5, OUTPUT);
  pinMode(LED6, OUTPUT);
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
digitalWrite(LED4, HIGH);
 delay(3000);
 digitalWrite(LED4, LOW);
 delay(6000);
 digitalWrite(LED5, HIGH);
 delay(2000);
 digitalWrite(LED5, LOW);
 delay(5000);
 digitalWrite(LED6, HIGH);
 delay(1000);
 digitalWrite(LED6, LOW);
 delay(4000);

 buttonState = digitalRead(buttonPin);

  // check if the pushbutton is pressed. If it is, the buttonState is HIGH:
  if (buttonState == HIGH) {
    // turn LED on:
     digitalWrite(LED1, HIGH);
 delay(1000);
      digitalWrite(LED2, HIGH);
 delay(2000);
  digitalWrite(LED3, HIGH);
 delay(3000);
 digitalWrite(LED4, HIGH);
 delay(3000);
 digitalWrite(LED5, HIGH);
 delay(2000);
 digitalWrite(LED6, HIGH);
 delay(1000);
  } else {
    // turn LED off:
    digitalWrite(LED1, LOW);
 delay(5000);
    digitalWrite(LED2, LOW);
 delay(4000);
    digitalWrite(LED3, LOW);
 delay(6000);
 digitalWrite(LED4, LOW);
 delay(6000);
 digitalWrite(LED5, LOW);
 delay(5000);
 digitalWrite(LED6, LOW);
 delay(4000);

  }
  }
