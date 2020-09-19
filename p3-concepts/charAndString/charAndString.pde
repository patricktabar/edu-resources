
char carattere;
String stringa = "";
String lista = "\n";
//creo una nuova istanza PFont
PFont font1, font2;
//enumerazione quantità prodotti
int qta = 1;


void setup() {
  size(800, 600);
  background(200);
  //stampo a console la lista dei font disponibili
  //println(PFont.list());
  //assegno alla variabile il font che ho creato
  font1 = loadFont("OpenSans-48.vlw");
  font2 = loadFont("CenturySchL-Roma-48.vlw");
}

void draw() {
  drawBackground();
  //prima linea di controllo
  fill(#1E2758);
  textFont(font1);
  textSize(32);
  text("Characters & Strings", 40, 40);

  //linea di testo che controlla il tasto premuto sulla tastiera
  textFont(font2);
  textSize(18);
  fill(#581E22);
  text("Il carattere che sto digitando è: " + carattere, 40, 120);

  //linea con tutta la stringa
  textFont(font2);
  textSize(18);
  fill(#581E22);
  text("La mia stringa è: " + stringa, 40, 160);

  //scatola di testo per contenere la lista 
  //sintassi: text("testo", xpos, ypos, xsize, ysize);
  textFont(font2);
  textSize(24);
  fill(#1E2758);
  textLeading(40);
  text("La mia lista: " + lista, 400, 224, width/2, 400);
}

void keyTyped() { 
  if (key != '\n' && key != BACKSPACE) {
    carattere = key;
    stringa += key;
  } 
  if (key == '\n') {
    stringa = qta + ") " + stringa;
    lista += stringa + ",\n";
    stringa = "";
    qta++;
  }
  if (key == BACKSPACE) {
    stringa = "";
  }
  //console debug
  //println(key);
}
