PFont font, fontBold;
color myColor;

void setup() {
  size(800, 600);
  font = loadFont("Roboto-Thin-48.vlw");
  fontBold = loadFont("Roboto-Bold-48.vlw");
  surface.setTitle("Collision in 2D space");  
}

void draw() {
  //background
  drawBg();
  
  //detection
  drawDetection();  
  
  //cursor
  drawCursor();
}
