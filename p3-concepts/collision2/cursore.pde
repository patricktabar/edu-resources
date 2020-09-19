void drawCursor() {  
  //disegno le due direttrici
  rectMode(CENTER);
  strokeWeight(1);
  stroke(myColor);
  strokeWeight(cursorStrokeWeigth);
  rect(mouseX, mouseY, 100, 100);
  
  //disegno la supeficie di detection
  stroke(200);
  strokeWeight(1);
  line(0, mouseY, width, mouseY);
  line(mouseX, 0, mouseX, height);
  
  //disegno il punto di incrocio delle direttrici
  stroke(pointColor);
  strokeWeight(pointerStrokeWeight);
  point(mouseX, mouseY);
  
  position = "x" + mouseX + " , Y" + mouseY;
}
