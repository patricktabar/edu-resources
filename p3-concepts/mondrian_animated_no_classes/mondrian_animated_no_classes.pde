color red = #FF0004;
color yellow = #F2F700;
color blue = #0A30FF;
color black = #000000;
color white = #FFFFFF;

int w = 600;
int h = 600;

int min = 0+100;
int max = w-100;

float  x_move = random (min, max);
float  x_moveNext = random(min, max);
float  y_move1 = random (min, max);
float  y_moveNext1 = random (min, max);
float  y_move2 = random (min, max);
float  y_moveNext2 = random (min, max);

float velocitaX = 1.5;
float velocitaY = 1.5;

//float latoArancio = 300;
////float latoRosso = y1;
//float latoMagenta = 500;
////float latoGiallo = h-latoRosso;
////float latoAzzurro = h-latoMagenta; 
//float latoBlu = w-latoArancio; 


void settings() {
  size(w, h);
}
void setup() {
  background(black);
  frameRate(50);
  surface.setTitle("Mondrian");
}

void draw() {
  background(black);
  disegnaX();
  disegnaY();
}
