class Cursor {
  //dati
  float posX, posY, size;
  color col;
  
  //costruttore
  Cursor(float px, float py, float s, color c) {
    posX = px;
    posY = py;
    size = s;
    col = c;
  }
  
  //metodi == funzioni  
  float[] getPosition() {
    float[] position = {posX, posY};
    return position;
  }

  void setPosition(float newX, float newY) {
    posX = newX;
    posY = newY;
  }

  void display() {
    ellipseMode(CENTER);
    strokeWeight(2);
    stroke(255);
    fill(col);
    if (isOver()) {
      stroke(col);
      fill(255);
    }    
    ellipse(posX, posY, size, size);

    //label
    rectMode(CENTER);
    noStroke();
    fill(255);
    rect(posX, posY-size*1.5, size*2, size*1.2, 5);
  }
  
  void update(){
    isOver();
  }

  boolean isOver() {
    float minX, minY, maxX, maxY;
    minX = posX-(size/2)-20;
    maxX = posX+(size/2)+20;
    minY = posY-(size/2)-20;
    maxY = posY+(size/2)+20;
    if (mouseX >= minX && mouseX <= maxX && mouseY >= minY && mouseY <= maxY) return true;
    else return false;
  }
}
