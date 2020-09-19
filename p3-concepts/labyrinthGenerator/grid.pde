void initGrid() {
  for (int y=0; y<cells; y++) {
    for (int x=0; x<cells; x++) {
      grid[x][y] = 0;
    }
  }
}

void printGrid() {
  for (int y=0; y<cells; y++) {
    println("array [" + y + "]");
    for (int x=0; x<cells; x++) {
      print("index [" + x + "] "); 
      println("x" + x + "/y" + y + ": " + grid[x][y]);
    }
  }
}

void drawLabyrinth() {
  color bg = #D3D0E3;
  color fg = #373355;
  background(bg);
  for (int y=0; y<cells; y++) {
    for (int x=0; x<cells; x++) {

      // se la cella è 0 riempila o di bianco o di nero
      if (grid[x][y] == 0) {
        // se è ai margini la cella è per forza scura
        if (x==0 || y==0 || x==cells-1 || y==cells-1) fill(fg);
        else {
          float num = random(1);
          if (num<.35) fill(fg);
          else fill(bg);
        }       
        noStroke();
        rect(x*cellSize, y*cellSize, cellSize, cellSize);
      }
    }
  }
}
