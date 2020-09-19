PFont font, fontBold;
color myColor;
color pointColor = 200;

String position = "";
String x = "";
String y = "";
String xy = "";
String inside = "";
String collision = "";

int cursorStrokeWeigth = 1;
int areaStrokeWeigth = 1;
int pointerStrokeWeight = 10;


void setup() {
  size(800, 600);
  font = loadFont("Roboto-Thin-48.vlw");
  fontBold = loadFont("Roboto-Bold-48.vlw");
  surface.setTitle("Collision and Detection in 2D space");  
}

void draw() {
  //background
  drawBg();
  
  //detection
  drawDetection();  
  
  //cursor
  drawCursor();
  
  //status string on the bottom part of the screen
  drawStatus(position + " " + x + " " + y + " " + xy + " " + inside + " " + collision);
}
