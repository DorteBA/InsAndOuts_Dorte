import processing.serial.*;
Serial myPort; // creates object from Serial class

PImage img;
PFont myFont;
// match img to variable name
PImage rock;
PImage paper;
PImage scissors;
// int for choices
int button1=0;
int button2=0;
int button3=0;
//int rocks=0;
//int papers=0;
//int scissorss =0;
boolean gameOver=false;
// Generates random number for computer
int computer = int(random(1, 4));
// game state
boolean gameOn = true;
void setup() {
  noFill();
  size(600,600);
   // print computers random guess for testing
  println("Computer Picked: " + computer);
 
  
  String[] portList = Serial.list();
  printArray(portList); // this line prints the port list to the console
  String portName = Serial.list()[4]; //change the number in the [] for the port you need
  myPort = new Serial(this, "/dev/cu.usbmodem14401", 9600);
   
 
}
void draw() {
  if ( myPort.available() > 0) { // If data is available, -- if you don't do this, you will read a bunch of -1 values mixed in
  button1 = myPort.read();  
  button2 = myPort.read(); 
  button3 = myPort.read(); 
  }
img = loadImage("royal1.jpg");
  // styling the font of text
  myFont = createFont("Arial", 43);
  textFont(myFont);
  textAlign(CENTER);
  //fill(255, 195, 0);
  fill(255, 153, 51);
  image(img, 0, 0, width, height);
  // text locations
  text("Lets Play",width/2,100);
  text("Royal Rock, Paper, Scissors!!",width/2,150);
  text("Rock",100,375);
  text("Paper",300,375);
  text("Scissors",500,375);
  
  // load img(s) from "data" folder
  rock = loadImage("rock.png");
  paper = loadImage("paper.png");
  scissors = loadImage("scissors.png");
  // img locations
  image(rock, 50, 400, 100, 100);
  image(paper, 250, 400, 100, 100);
  image(scissors, 450, 400, 100, 100);
  //displayGame();
//}

//void mousePressed() {
  //println(button1);
  if (mouseX >= 50 && mouseX <= 50+100 && mouseY >= 400 && mouseY <= 400+100) {
    println(button1);
    button1=1;
  } else if (mouseX >= 250 && mouseX <= 250+100 && mouseY >= 400 && mouseY <= 400+100) {
   println(button2);
    button2 =1;
  }
  else if (mouseX >= 450 && mouseX <= 450+100 && mouseY >= 400 && mouseY <= 400+100) {
    println(button3);
    button3 =1;
  }
  // if user draws with computer
  if (button1==1 && computer==1) {
    //println("Tie!");
   background(255);
    text("Tie", width/2, height/2);
    
  }
  if (button2==1 && computer==2) {
    //println("Tie!");
    background(255);
    text("Tie", width/2, height/2);
    
  }
  if (button3 ==1 && computer==3) {
    //println("Tie!");
    background(255);
    text("Tie", width/2, height/2);
    
  }
  // if user wins
  if (button1==1 && computer==3) {
    //println("Victorious!");
     background(255);
    text("Victorious!", width/2, height/2);
    
  }
  if (button2==1 && computer==1) {
    //println("Victorious!");
  background(255);
    text("Victorious!", width/2, height/2);
    
  }
  if (button3==1 && computer==2) {
   // println("Victorious!");
    background(255);
    text("Victorious!", width/2, height/2);
    
  }
  // if user loses
  if (button1==1 && computer==2) {
    //println("Defeated! :(");
    background(255);
    text("Defeated! :(", width/2, height/2);
   
  }
  if (button2==1 && computer==3) {
   // println("Defeated! :(");
    background(255);
    text("Defeated! :(", width/2, height/2);
   
  }
  if (button3 ==1 && computer==1) {
   // println("Defeated! :(");
    background(255);
    text("Defeated! :(", width/2, height/2);
   
  }
}
