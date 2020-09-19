void drawBg() {
  background(127);
  
  push(); // gli stili tra push() e pop() non interferiscono con il resto dello sketch
  
  //disegna una griglia di linee
  stroke(100);
  for (int x=0; x<width; x++) {
    line(x*cellSize, 0, x*cellSize, height);
    for (int y=0; y<height; y++) {
      line(0, y*cellSize, width, y*cellSize);
    }
  }
  
  pop();
  
  initGrid();
}
