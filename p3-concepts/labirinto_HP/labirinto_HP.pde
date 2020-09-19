PImage sfondo1;
PImage saetta;  
PImage livello1;
PImage texture;
PImage exit;

//variabili utilizzate per calcolare il percorso
int x = 0;  
int y = 0;  

int cells = 20; //numero di celle per lato
int cellSize = 600/cells; // dimensione della singola cella

boolean run = true; //se true ridisegna un livello

int[][] grid = new int[cells][cells];  
int[] HPposition = {0, 0}; //posizione di HP
int[] exitPosition = new int[2]; // in questo array andrà l'ultima posizione del percorso 

boolean visualDebug = false;
boolean consoleDebug = false;

void setup() {  
  size(600, 600);
  sfondo1 = loadImage("sfondo.jpg");
  saetta = loadImage("saetta.png");
  livello1 = loadImage("livello1.jpg");
  texture = loadImage("texture.jpg");
  exit = loadImage("exit.jpg");

  frameRate(60);

  Bg();
  initGrid();
}


void draw() {

  // se run è true calcolami il labirinto
  if (run) {    

    findPath();  //calcola il percorso    

    //se x o y escono dallo spazio utile il percorso è trovato quindi...
    if (x>=cells || y>=cells) {
      //assegna random le celle che non fanno parte del percorso di uscita
      assignRandomCells();  
      //scrivi il debug in console
      printGrid();
      //disegna il labirinto
      drawLabyrinth(); 
      //azzero x/y per il prossimo ricalcolo
      x = 0;
      y = 0;
      //setto run a false per non continuare a ricalcolare labirinti
      run = false;
    }
  }

  // se ha finito di calcolare il labirinto
  // mostra immagine della saetta aggiornabile tramite i tasti in keyPressed()
  if (!run) drawHP();

  //se la posizione di HP è uguale alla posizione di uscita ridisegna labirinto
  if (HPposition[0] == exitPosition[0] && HPposition[1] == exitPosition[1]) {
    Bg();
    initGrid();
    resetHPposition();
    run = true;
  }
}

void keyPressed() {
  //go left
  if (key == 'a') {
    if (HPposition[0] <= 0) HPposition[0] = 0;
    else {
      if (grid[HPposition[0]-1][ HPposition[1]] == 1) HPposition[0] -= 1;
    }
    drawLabyrinth();
  }

  //go right
  if (key == 'd') {
    if (HPposition[0] >= cells-1) HPposition[0] = cells-1;
    else {
      if (grid[HPposition[0]+1][ HPposition[1]] == 1) HPposition[0] += 1;
    }
    drawLabyrinth();
  }

  //go up
  if (key == 'w') {
    if (HPposition[1] <= 0) HPposition[1] = 0;
    else {
      if (grid[HPposition[0]][ HPposition[1]-1] == 1) HPposition[1] -= 1;
    }
    drawLabyrinth();
  }

  //go down
  if (key == 's') {
    if (HPposition[1] >= cells-1) HPposition[1] = cells-1;
    else {
      if (grid[HPposition[0]][ HPposition[1]+1] == 1) HPposition[1] += 1;
    }
    drawLabyrinth();
  }  

  //redraw
  if (key == 'R') {
    Bg();
    initGrid();
    resetHPposition();
    run = true;
  }
}
