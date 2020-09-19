//inizializza la griglia con tutti i valori a zero
void initGrid() {
  for (int y=0; y<cells; y++) {
    for (int x=0; x<cells; x++) {
      grid[x][y] = 0;
    }
  }
}


//funzione di debug, scrive in console i valori di ogni cella della griglia
void printGrid() {
  if (consoleDebug) {
    for (int y=0; y<cells; y++) {
      println("array [" + y + "]");
      for (int x=0; x<cells; x++) {
        print("index [" + x + "] "); 
        println("x" + x + "/y" + y + ": " + grid[x][y]);
      }
    }
  }
}


//disegna il labirinto in base ai valori della griglia
void drawLabyrinth() {

  image(livello1, 0, 0, 600, 600);  //immagine di background

  for (int y=0; y<cells; y++) {
    for (int x=0; x<cells; x++) {
      if (grid[x][y] == 0) image(texture, x*cellSize, y*cellSize, cellSize, cellSize);
    }
  }
  //immagine casella di uscita
  drawExitDoor();
}


//assegna random le celle che non fanno parte del percorso di uscita
void assignRandomCells() {   
  for (int y=0; y<cells; y++) {
    for (int x=0; x<cells; x++) {
      //se è una cella a valore zero
      if (grid[x][y] == 0) {
        //e se non è una cella di contorno
        if (x!=0 && y!=0 && x!=cells-1 && y!=cells-1) {
          //scegli un numero random 0-100
          float num = random(100);
          //se è minore di 60 (60%) assegna valore 1 quindi fai diventare la cella transitabile 
          //in caso contrario mantieni valore 0
          if (num<60) grid[x][y] = 1;
        }
      }
    }
  }
}


//trova un percorso random per uscire attorno al quale costruire il labirinto
void findPath() {
  noStroke();
  fill(#E0C734);

  // se visualDebug è attivo disegna cella a [0,0]
  if (visualDebug) rect(0, 0, cellSize, cellSize); 

  //la posizione [0,0] è assegnanata di dafualt a 1
  grid[0][0] = 1;

  //usa random per disegnare il percorso di uscita
  float randomNum = random(100);

  if (randomNum <= 45) y+=1;  //vai in basso (45%)
  else if (randomNum > 45 && randomNum <= 90) x+=1; //vai a destra (45%)
  else if (randomNum > 90 && randomNum <= 95) {  //vai a sinistra(5%)
    if (x == 0) x=0;
    else x-=1;
  } else if (randomNum > 95) {  //vai a su(5%)
    if (y==0) y=0;
    else y-=1;
  }

  // se visualDebug è attivo disegna la cella
  if (visualDebug) rect(x*cellSize, y*cellSize, cellSize, cellSize);  

  //se la posizione di x/y è all'interno della griglia assegna il valore 1
  if (x<cells && y<cells) {
    grid[x][y] = 1;
    //aggiorna l'ultimo valore del percorso d'uscita
    exitPosition[0] = x;
    exitPosition[1] = y;
  }
}
