//Shades of Cold & Warm Colors by: Dorte Bien- Aime
int counter;
float var= 0;

void setup()
{
  size(400, 200);
  background(255);
  counter = 0;
}

void draw()
{
 
//if/else statement changes background when you click on the mouse    
 if (mousePressed) {
    background(119, 7, 55);
  } else {
    background(93, 63, 211);
  }

 if (counter < 20)
  {
    fill(70, 130, 180);
  }
  else
  {
    
    fill(227, 11, 92);
  }
  if (counter > 80)
  {
    counter = 0;
  }
  ellipse(mouseX, mouseY, 50, 50);
  counter = counter + 1;
  { fill(0, 50);
  rect(0, 0, width, height);
  
  fill(255);
  ellipse(random(width), random(height), 5, 5);
}
}
