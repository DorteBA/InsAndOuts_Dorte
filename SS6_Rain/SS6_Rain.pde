//Rain by: Dorte Bien-Aime
float[] circleY = new float[25];

void setup() {
  size(400, 400);
  for (int i = 0; i < circleY.length; i++) {
    circleY[i] = random(height);
    
  }
}

void draw() {
  
  background(0, 0, 63);


  
  for (int i = 0; i < circleY.length; i++) {
    float circleX = width * i / circleY.length;
    fill(73, 216, 230);
     ellipse(circleX, circleY[i], 5, 15);
  

    circleY[i] ++;

    if (circleY[i] > height) {
     circleY[i] = 0;
     
    }
    
 fill(34, 139, 34);
 ellipse(335, 700,700, 700 );
  fill(79, 121, 66);
  ellipse(25, 700, 700, 700);
  }}
