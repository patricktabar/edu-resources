void initGrid() {
  for (int x=0; x<cells; x++) {
    for (int y=0; y<cells; y++) {
      grid[x][y] = 0;
      //println("x" + x + ", y" + y + ": " + grid[x][y]);
    }
  }
}

void printGrid() {
  for (int x=0; x<cells; x++) {
    for (int y=0; y<cells; y++) {
     println("x" + x + ", y" + y + ": " + grid[x][y]);
    }
  }
}
