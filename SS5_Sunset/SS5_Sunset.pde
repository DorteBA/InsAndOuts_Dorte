//Sunset by: Dorte Bien-Aime
PImage img;
PImage img2;
PImage img3;
int w = width;
int h = height;

float v3;

void setup() {
 size(400, 400);
    rectMode(CENTER);
    color(v3);
 
}


void draw() {
      
  v3 =map(mouseY, 0, 400, 255, 0);
  background(0, v3/2, v3);
  
   
  img = loadImage("grass.png");
  img2 = loadImage("sun.png");
  img3 = loadImage("bird.png");
  image(img2, 305,mouseY,94,94);
      
  //fill(255);
  //ellipse(random(width), random(height), 5, 5);
 image(img, 0, 0, width, height);
  for (int i=0; i<= width; i+= 40) {
    image(img3, i,50,50,40);
  }

for (float i=0; i < width ; i = i + (random(width))) {
    for (float j=0 ; j < height ; j = j + (random(height))) {
      translate(i, j);
      ellipse(-2,-2,6,6);
  
    }}}
