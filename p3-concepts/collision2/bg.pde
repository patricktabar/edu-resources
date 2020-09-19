void drawBg() {
  background(220);
  drawTitle();
}

void drawTitle() {
  textFont(fontBold);  
  textSize(18);
  fill(120);
  textAlign(CENTER);
  text("COLLISION DETECTION", width/2, 50, 200, 30);
}

void drawStatus(String s){
  textFont(font);  
  textSize(24);
  fill(120);
  textAlign(CENTER);
  text(s, width/2, 550, 800, 30);
}
