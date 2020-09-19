// variabili globali

float x, y;  // la posizione del cavallo
float step = 5.0;  // la velocità in passi del cavallo
int direction = 1; // direzione di corsa +1 verso dx -1 verso sx
int horseStep = 1; // contatore per far scorrere i frame immagine del cavallo (1 o 2)
float jumpUp = 50;  //spostamento in verticale
float gravity = 5.0; //velocità di ritorno a terra

float bgPos = 0;  // posizione dell'immagine di background
float bgStep = 4.0; // velocità di scorrimento dell'immagine di background
int endScreen = -560;  // posizione di fine schermo dell'immagine

float flagPos = 1100;  // posizione della bandiera d'arrivo

// inizializzo le istanze per caricare le varie immagini
PImage bg, fg1dx, fg2dx, fg1sx, fg2sx, fgCurrent, ranch;  

void setup() {
  size(800, 600);
  background(127);

  //setto il time frame a 30fps
  frameRate(30);

  // posizione iniziale del cavallo
  x = 100;
  y = height -100;

  // carico l'immagine di background
  bg = loadImage("lowPolyBg.jpg");

  // carico l'immagine del ranch
  ranch = loadImage("ranch.png");

  // carico tutti i frame per il movimento del cavallo separatamente
  fg1dx = loadImage("fg1dx.png");
  fg2dx = loadImage("fg2dx.png");
  fg1sx = loadImage("fg1sx.png");
  fg2sx = loadImage("fg2sx.png");

  // uso una variabile unica per caricare l'immagine in uso
  fgCurrent = fg1dx;
}

void draw() {

  surface.setTitle("current frame rate: " + frameRate);

  //aggiorno il background posizionando l'immagine  
  image(bg, bgPos, 0);
  noStroke();
  fill(#303920, 230);
  rectMode(CORNER);
  rect(0, height-30, 1400, 100);

  // arrivo al ranch in background
  image(ranch, flagPos+bgPos+200, height-90, 120, 60);

  //fg
  noStroke();
  fill(255);
  rectMode(CENTER);
  //println(bgPos);

  if (y<height -100) y += gravity;
  if (y>=height -100) y=height -100;

  if (horseStep == 1 && direction == 1) {
    fgCurrent = fg1dx;
  }
  if (horseStep == 1 && direction == -1) {
    fgCurrent = fg1sx;
  }
  if (horseStep == 2 && direction == 1) {
    fgCurrent = fg2dx;
  }
  if (horseStep == 2 && direction == -1) {
    fgCurrent = fg2sx;
  }
  image(fgCurrent, x, y-10);

  // arrivo al ranch in foreground
  image(ranch, flagPos+bgPos, height-90);
}


void keyPressed() {
  if (key == CODED) {
    if (horseStep == 1) {
      horseStep = 2;
    } else {
      horseStep = 1;
    }

    //va a sx
    if (keyCode == LEFT) {

      if (x>30 && bgPos > endScreen) {
        direction = -1;
        x-=step;
      }
    }

    //va a destra
    if (keyCode == RIGHT) {

      direction = 1;

      if (bgPos == endScreen) {
        x+=step;
      } else {

        if (x == width/2) {
          if (bgPos > endScreen) {
            bgPos -= bgStep;
          }
        } else if (x<width/2) {
          x+=step;
        } else {
          x= width/2;
        }
      }
    }

    //salta in alto
    if (keyCode == UP) {
      if (y>=height -100) y -= jumpUp;
    }
  }
}
