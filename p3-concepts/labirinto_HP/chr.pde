//disegna il personaggio di HP
void drawHP() {
  push();
  image (saetta, HPposition[0]*cellSize, HPposition[1]*cellSize, cellSize, cellSize);
  stroke(#0000FF);
  strokeWeight(3);
  noFill();
  ellipseMode(CENTER);
  ellipse(HPposition[0]*cellSize+cellSize/2, HPposition[1]*cellSize+cellSize/2, cellSize*1.3, cellSize*1.3);
  pop();
}

void resetHPposition() {
  HPposition[0] = 0;
  HPposition[1] = 0;
}

//disegna la porta di uscita
void drawExitDoor() {
  push();
  image(exit, exitPosition[0]*cellSize, exitPosition[1]*cellSize, cellSize, cellSize);
  stroke(#FF00FF);
  strokeWeight(3);
  noFill();
  ellipseMode(CENTER);
  ellipse(exitPosition[0]*cellSize+cellSize/2, exitPosition[1]*cellSize+cellSize/2, cellSize*1.3, cellSize*1.3);
  pop();
}
