void drawBackground(){
  color bg = #E8DFBE;
  color fg = #86816C;
  int spazioLaterale = 30;
  int intervalloLinea = 40;
  
  rectMode(CORNER);
  noStroke();
  fill(bg);
  rect(0,0,width,height);  
  
  for(int i=intervalloLinea; i<=height; i+=intervalloLinea){
    stroke(fg);
    strokeWeight(1);
    line(spazioLaterale, i , width-spazioLaterale, i);
  }
}
