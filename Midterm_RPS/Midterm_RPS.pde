PImage img;
PImage img2;
PImage img3;
int w = width;
int h = height;

void setup() {
  size (500, 500);
  textAlign(CENTER);
  textSize(36);
}

void draw() {
  img = loadImage("rock.png");
  img2 = loadImage("paper.png");
  img3 = loadImage("scissors.png");
  
  if (state== "pregame") {
    pregame();
  } else if (state== "game") {
    game();
  } else if (state== "game over") {
    gameover();
  }
  println(state);
}

void mousePressed() {
   if (state== "pregame") {
    state= "game"();
  } else if (state== "game over") {
    state= "pregame"();
  }
}

void pregame() {
  background(0);
  text("Click to start the game ", width/2, height/2);
}

void game() {
  background(0);
  text("What A Fun Game!!", width/2, height/2);
  ellipse(mouseX, ellipseY, 100, 100);
  ellipseY++;
  
  if (ellipseY>height+50 ) {
    state="game over";
    ellipseY=0;
  }
