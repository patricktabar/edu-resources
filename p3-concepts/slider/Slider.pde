class Slider {
  float posX, posY; 
  int size, min, max; 
  color c;
  Cursor cursor;

  Slider(float px, float py, int s, int rmin, int rmax, color col) {
    posX = px;
    posY = py;
    size = s;
    min = rmin;
    max = rmax;
    c = col;    
    cursor = new Cursor(posX+size/2, posY, 20, c);
  }

  float[] getPosition() {
    float[] position = {posX, posY};
    return position;
  }

  void setPosition(float newX, float newY) {
    posX = newX;
    posY = newY;
  }

  void display() {
    strokeWeight(5);
    stroke(c);
    fill(c);
    line(posX, posY, posX+size, posY);

    ellipseMode(CENTER);
    strokeWeight(2);
    fill(255);    
    //cerchio a sx
    ellipse(posX, posY, 10, 10);
    //cerchio a dx
    ellipse(posX+size, posY, 10, 10);
    //
    cursor.display();
  }

  void update() {
    cursor.update();
  }

  int getCurrentValue() {    
    //map(value, min, max, newMin, newMax);
    //es. map(2, 0, 10, 0, 100); -> 20
    return int(map(cursor.getPosition()[0], posX, posX+size, min, max));
  }
}
