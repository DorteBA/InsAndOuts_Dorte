//Sunset by: Dorte Bien-Aime
float v3;

void setup() {
 size(400, 400);
    rectMode(CENTER);
    color(v3);
 
}


void draw() {
      
  v3 =map(mouseY, 0, 400, 255, 0);
  background(0, v3/2, v3);
  
    fill(255, 255, 0);
    ellipse(355,mouseY,84,84);
    fill(0, 105, 0);
    rect(150, 400, 500, 150);

      
  fill(255);
  ellipse(random(width), random(height), 5, 5);

 
    }
