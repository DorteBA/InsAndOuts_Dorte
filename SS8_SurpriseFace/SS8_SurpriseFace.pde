import processing.serial.*;

Serial myPort; // creates object from Serial class
int val=0; // creates variable for data coming from serial port

void setup() {
  size(400, 400);
  /*
   IMPORTANT: We must tell Processing which port to read from.
   Run the sketch and check your console to see the results of printArray(Serial.list());
   and that is how you know the port to use.
   On my Mac, it is port 1 and so I open Serial.list()[1].
   */
  String[] portList = Serial.list();
  printArray(portList); // this line prints the port list to the console
  String portName = Serial.list()[4]; //change the number in the [] for the port you need
  myPort = new Serial(this, "/dev/cu.usbmodem14101", 9600);
}

void draw() {
  if ( myPort.available() > 0) { // If data is available, -- if you don't do this, you will read a bunch of -1 values mixed in
    val = myPort.read(); // read it and store it in val
  }

  //draws an ellipse that grows and shrinks in relation to val
  //background(255);
  //fill (0);
  //ellipse (width/2, height/2, val, val);
  
  
  if (val <= 150) {
    background(random(255), random(255), random(255));
    //delay(100);
    
fill(82, 255, 84);
 ellipse(150, 230, 100, 200);            
 fill(10,0,0);
 ellipse(180, 233, 30, 30);
 fill(10,0,0);
 ellipse(120, 233, 30, 30);
 fill(207, 70, 0);
 ellipse(120,233,10,20);
 fill(207, 70, 0);
 ellipse(180,233,10,20);

 arc(150, 280, 60, 90, 0, PI/1);
  } 
  
    else {  
  background(159, 168, 218);
  stroke(255);
  strokeWeight(8);
  noFill();
  
  
   //for (int i = 0; i < 50; i++) {
  for (int i= width; i>=0; i-=50) {
    stroke(random(255));
    translate(random(width), random(height));
    scale(random(1.5), random(1.5));
  
  // draw a cat!
    // ears'
  fill(184, 115, 51);
  triangle(58, 25, 72, 34, 80, 10);
  triangle(42, 25, 28, 34, 20, 10);

  // head
  fill(184, 115, 51);
  ellipse(50, 50, 60, 60);
 
 //eyes
  fill(0,128,128);
  ellipse(40, 40, 10, 10); 
  ellipse(60, 40, 10, 10);
  
  //mouth
   ellipse(50, 59, 23, 12);
  fill(227, 150, 62);
  ellipse(37, 54, 25, 15);
  ellipse(63, 54, 25, 15);
  
  // right whiskers
  line(70, 50, 90, 50);
  line(70, 45, 90, 37);
  line(70, 55, 90, 63);
  // left whiskers
  line(30, 50, 10, 50);
  line(30, 45, 10, 37);
  line(30, 55, 10, 63);
  
}
   }
    }

//"/dev/cu.usbmodem14101"
