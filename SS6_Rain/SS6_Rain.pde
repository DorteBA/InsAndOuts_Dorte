//Rain by: Dorte Bien-Aime
ArrayList<Circle> circles = new ArrayList<Circle>();
float[] circleY = new float[25];

void setup() {
  size(400, 400);
  for (int i = 0; i < circleY.length; i++) {
    circleY[i] = random(height);
    
  }
}

void draw() {
  
  background(0, 0, 63);

for (Circle c : circles) {
    c.move();
    c.display();
  }
}
//Click Screen
void mousePressed() {
  circles.add(new Circle(mouseX, mouseY));
}

// Class representing a bouncing circle
class Circle {
  float x;
  float y;
  float xSpeed;
  float ySpeed;

  Circle(float x, float y) {
    this.x = x;
    this.y = y;
    this.xSpeed = random(-2, 2);
    this.ySpeed = random(-2, 2);
  }

  void move() {
    x += xSpeed;
    if (x < 0 || x > width) {
      xSpeed *= -1;
    }

    y += ySpeed;
    if (y < 0 || y > height) {
      ySpeed *= -1;
    }
  }

  void display() {
    fill(137, 148, 153);
    ellipse(x, y, 50, 50);
    


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
  }}}
