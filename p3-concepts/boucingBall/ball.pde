void drawBall(float x, float y) {
  ellipseMode(RADIUS);  
  strokeWeight(4);
  stroke(#C4F7FF, 127);
  fill(#C6D7FF, 170);
  ellipse(x, y, ballRadius, ballRadius);
  strokeWeight(2);
  noStroke();
  fill(#C4F7FF, 100);
  ellipse(x-2, y+3, ballRadius-10, ballRadius-10);
  fill(255, 170);
  ellipse(x+ballRadius-23, y-ballRadius+26, 4, 4);
  ellipse(x+ballRadius-36, y-ballRadius+18, 3, 3);
  fill(255, 100);
  ellipse(x-36, y+18, 3, 3);
}
