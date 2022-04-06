
// int for choices
int rocks=0;
int papers=0;
int scissorss =0;
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

}


void draw() {
 
  displayGame();
  
}

void mousePressed() {
  
  if (mouseX >= 50 && mouseX <= 50+100 && mouseY >= 400 && mouseY <= 400+100) {
    println("You chose Rock." );
    rocks=1;
  } else if (mouseX >= 250 && mouseX <= 250+100 && mouseY >= 400 && mouseY <= 400+100) {
    println("You chose paper.");
    papers=1;
  }
  else if (mouseX >= 450 && mouseX <= 450+100 && mouseY >= 400 && mouseY <= 400+100) {
    println("You chose Paper.");
    scissorss=1;
  }
  // if user draws with computer
  if (rocks==1 && computer==1) {
    println("Tie!");
    endGame();
  }
  if (papers==1 && computer==2) {
    println("Tie!");
    endGame();
  }
  if (scissorss==1 && computer==3) {
    println("Tie!");
    endGame();
  }
  // if user wins
  if (rocks==1 && computer==3) {
    println("Winner!");
    endGame();
  }
  if (papers==1 && computer==1) {
    println("Winner!");
    endGame();
  }
  if (scissorss==1 && computer==2) {
    println("Winner!");
    endGame();
  }
  // if user loses
  if (rocks==1 && computer==2) {
    println("You lose! :(");
    endGame();
  }
  if (papers==1 && computer==3) {
    println("You lose! :(");
    endGame();
  }
  if (scissorss==1 && computer==1) {
    println("You lose! :(");
    endGame();
  }
}
