class Square{
  float xpos, ypos, size;
  color myColor;
  
  Square(float x, float y, float s, color c){
    xpos = x;
    ypos = y;
    size = s;
    myColor = c;
  }
  
  void display(){
    stroke(0);
    strokeWeight(10);
    fill(myColor);
    rect(xpos, ypos, size, size);
  }
  
  void changeColor(color newColor){
    myColor = newColor;
  }
  
  boolean isInside(float x, float y){
    boolean b = false;
    if(x >= xpos && x <= xpos+size && y>= ypos && y <= ypos+size) b = true;
    return b;
  }
    
}
