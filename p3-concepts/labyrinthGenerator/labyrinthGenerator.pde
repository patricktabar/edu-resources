int randomNum;  // variabile per salvare un valore random
int x = 0;  // posizione in x iniziale
int y = 0;  // posizione in y iniziale

int cells = 40;  // numero di celle per lato
float cellSize = 800/cells;  // la dimensione del lato della cella

boolean run = true; // se vera disegna, un click del mouse per riattivarla
boolean redraw = false;  // se vera ridisegna la schacchiera sullo sfondo

int[][] grid = new int[cells][cells];

//valori per la distribuzione del random
int Nord = 4;
int Sud = 44;
int Ovest = 6;
int Est = 46;

void setup() {  
  size(800, 800);
  frameRate(10);
  drawBg();
}


void draw() {

  if (run) {

    if (redraw) {
      drawBg();
      redraw = false;
    }

    rectMode(CORNER);
    noStroke();
    fill(0, 150);
    rect(0, 0, cellSize, cellSize);
    grid[0][0] = 1;

    // 4% Nord - 44% Sud - 6% Ovest - 46% Est
    // produco un valore random, poi in base ad esso cambio la posizione di x/y  

    randomNum = round(random(100));


    if (randomNum <= Sud) y+=1;  //se il valore è compreso tra 0 e 38 di 100 (38%) vai a Sud
    else if (randomNum > Sud && randomNum <= Sud+Est) x+=1;  // se è tra 38 e 76 (38%) vai a Est
    else if (randomNum > Sud+Est && randomNum <= Sud+Est+Nord) {  // se è compreso tra 76 e 88 (12%) vai a Ovest a meno che non siamo gia sullo zero, in tal caso rimani sullo zero
      if (x == 0) x=0;
      else x-=1;
    } else if (randomNum > Sud+Est+Nord && randomNum <= 100) {  // se il valore è compreso tra 88 e 100(12%) vai a Nord almeno che non siamo già sullo zero, in tal caso rimani sullo zero
      if (y==0) y = 0;
      else y-=1;
    }

    rect(x*cellSize, y*cellSize, cellSize, cellSize);  //disegno un quadrato nella posizione desiderata
    if (x<cells && y<cells) grid[x][y] = 1;


    // se il quadrato esce dai margini destra o sotto ridisegno lo sketch
    if (x>=cells || y>=cells) {
      printGrid();
      drawLabyrinth();
      redraw = true;
      x = 0;
      y = 0;
      run = false;
    }
  }
  
}

void mouseClicked() {
 run = true; 
}
