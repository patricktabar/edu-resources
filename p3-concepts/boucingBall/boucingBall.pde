
//raggio della palla
int ballRadius = 50;

//variabili per la posizione della palla
float xPosition, yPosition;

//variabili per la velocità iniziale della palla sui due assi
float xSpeed = 1.5;
float ySpeed = 2.5;

//variabili per la direzione della palla sui due assi
int xDirection = 1;
int yDirection = 1;


void setup() {
  size(800, 600);

  //numero di frames al secondo
  frameRate(60);

  //posizione iniziale della palla
  xPosition = (width/2);
  yPosition = (height/2);
}

void draw() {
  //ridisegna un bg ad ogni redraw
  drawBackground();

  //aggiorno la posizione della palla
  xPosition += xSpeed * xDirection;
  yPosition += ySpeed * yDirection;

  //se la palla colpisce uno dei bordi inverto la direzione
  if (xPosition > width-ballRadius || xPosition < ballRadius) {
    xDirection *= -1;
  }
  if (yPosition > height-ballRadius || yPosition < ballRadius) {
    yDirection *= -1;
  }

  drawBall(xPosition, yPosition);
}
