
color red = color(255, 0, 0);
color blue = color(0, 0, 255);
color yellow = color(255, 255, 0);

Square s1 = new Square(75, 75, 200, red);
Square s2 = new Square(325, 75, 200, blue);
Square s3 = new Square(200, 325, 200, yellow);



void setup() {
  size(600, 600);
  background(255);
  frameRate(30);
  surface.setTitle("change colors on mouse click");
}

void draw() {
  background(255);
  s1.display();
  s2.display();
  s3.display();
}

void mouseClicked() {
  
  if(s1.isInside(mouseX,mouseY)) {
    s1.changeColor(yellow);
    s2.changeColor(blue);
    s3.changeColor(red);    
  }
  
  if(s2.isInside(mouseX,mouseY)) {
    s1.changeColor(red);
    s2.changeColor(yellow);
    s3.changeColor(blue);    
  }
  
  if(s3.isInside(mouseX,mouseY)) {
    s1.changeColor(yellow);
    s2.changeColor(red);
    s3.changeColor(blue);    
  }
}
