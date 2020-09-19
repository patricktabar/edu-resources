class Bottone {
  float posOriginaleX, posOriginaleY;
  float posX, posY;
  int size, min, max;
  color c;

  Bottone(float xPosOrigin, float yPosOrigin, int s, color col) {
    posOriginaleX = xPosOrigin;
    posOriginaleY = yPosOrigin;
    posX = posOriginaleX;
    posY = posOriginaleY;
    size = s;
    c = col;
  }

  float[] getPosition() {
    float[] position = {posX, posY};
    return position;
  }

  String getColor() {
    return ("#"+hex(c, 6));
  }

  void setPosition(float newX, float newY) {
    posX = newX;
    posY = newY;
  }

  void display() {
    push();
    fill(c);
    if (isInside()) {
      stroke(255); 
      strokeWeight(4);
    } else {
      noStroke();
    }
    rectMode(CENTER);
    strokeWeight(1);
    rect (posX, posY, size, size, 5);
    pop();
  }

  void update() {
    isInside();
  }

  boolean isInside() {
    if (mouseX >= posX-size/2 &&
      mouseX <= posX + size/2 && 
      mouseY >= posY-size/2 && 
      mouseY <= posY + size/2) return true;      
    else return false;
  }
}
