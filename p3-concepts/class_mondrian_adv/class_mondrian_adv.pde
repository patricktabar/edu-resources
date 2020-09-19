int posOriginaleX = 200;
int posOriginaleY = 60;
int RectSize = 50;

Mondrian mond1 = new Mondrian(0, 100, 600, 500, #FF0000, #FFFFFF, #FFFF00, #0000FF);

color c1 = #7F00FF; 
color c2 = #FF7F00;
color c3 = #00FF00;

Bottone bottone1 = new Bottone(posOriginaleX, posOriginaleY, RectSize, c1);
Bottone bottone2 = new Bottone(posOriginaleX+100, posOriginaleY, RectSize, c2);
Bottone bottone3 = new Bottone(posOriginaleX+200, posOriginaleY, RectSize, c3);

String currentColorButton = "";
String currentColorRect = "";

void setup() {
  size(600, 600);
  frameRate(60);
}

void draw() {
  background(0);

  mond1.setVelocity(1, 0.3);
  mond1.animate();
  mond1.display();

  bottone1.display();  
  bottone2.display();
  bottone3.display();
  
  bottone1.update();
  bottone2.update();  
  bottone3.update();
  
  println("colore bottone: "+ currentColorButton);
  println("colore rect: "+ currentColorRect);
  
  if(currentColorRect.equals("#FF0000")) println("FOO!");
}


void mouseDragged() {
  //println("mouseOK");
  if (mouseButton == LEFT) {
    if (bottone1.isInside()) {
      bottone1.setPosition(mouseX, mouseY);
      currentColorButton = bottone1.getColor();
    }

    if (bottone2.isInside()) { 
      bottone2.setPosition(mouseX, mouseY);
      currentColorButton = bottone2.getColor();
    }

    if (bottone3.isInside()) {
      bottone3.setPosition (mouseX, mouseY);
      currentColorButton = bottone3.getColor();
    }
  }
}

void mouseReleased() {
  currentColorRect = mond1.getColor(mouseX, mouseY);  
  
  bottone1.setPosition(posOriginaleX, posOriginaleY);
  bottone2.setPosition(posOriginaleX+100, posOriginaleY);
  bottone3.setPosition (posOriginaleX+200, posOriginaleY);
  
  currentColorButton = "";  
}
