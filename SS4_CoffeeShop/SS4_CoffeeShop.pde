//Coffee Shop By; Dorte Bien-Aime
PImage img;
int direction = 1;
float signal;
int imgX = 0;
int imgY = 0;
int w = width;
int h = height;

PFont f;


void setup() {
  size(1000, 500);
  //fullScreen();
  noFill();
  frameRate(60);
  f = createFont("Arial", 16);
   
}




void draw() {
  // int boxX = img.width/2;
  //int boxY = img.height/2;
  img = loadImage("Coffee.jpg");

  background(255);
  textFont(f, 36);
  fill(0);
  
  //text("Welcome To The Coffee Shop!!", 10, height/2);

  if (mousePressed) {
    int mx = constrain(mouseX, 0, width-1);
    int my = constrain(mouseY, 0, height-1);
    signal = my*width + mx;
  } else {
    //signal += 0.33*direction;
  }

 // set(imgX, imgY, img);  // fast way to draw an image

  int sx = int(signal) % width;
  int sy = int(signal) / width;
  color c = img.get(sx, sy);
  image(img, 0, 0, width, height);


  //rect(sx, sy, 10, 10);
  fill(c);
  rect(50, 50, 50, 50);

  print("Color " + c);
  println(" X " + sx + " Y " + sy );
  text("Welcome To The Coffee Shop!!", 10, height/1.2); 
}
