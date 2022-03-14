  // HAPPY CAT by: Dorte Bien-Aime
  
  void setup(){
  size(1080,720);
  background(255, 245, 238);
  // ears
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
