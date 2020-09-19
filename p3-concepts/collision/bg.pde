void drawBg() {
  background(220);
  drawTitle();
}

void drawTitle() {
  textFont(fontBold);  
  textSize(18);
  fill(120);
  textAlign(CENTER);
  text("COLLISION DETECTION", width/2-100, 50, 200, 30);
}
