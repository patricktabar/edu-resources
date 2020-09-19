size(800, 400);
background(20);

colorMode(HSB, 360, 100, 100);
strokeWeight(2);
strokeJoin(BEVEL);

//limiti delle bande
int startX = 20;
int startY = 150;
int stopX = 780;
int stopY = 300;

//dimensione x/y della banda
int sizeX = 45;
int sizeY = 3;

//spazio tra gli elementi
int gapX = 5;
int gapY = 10;

//valori iniziali del colorMode HSB
int h = 50;
int s = 70;
int b = 90;

//incrementi di modificazione dei valori cromatici
int colorGapOrizzontale = 20;
int colorGapVerticale = 4;

//Ciclo For Annidato (Nested For Loop)
for (int x = 0; x <= (stopX-startX-sizeX); x += (gapX+sizeX)) {

  for (int y = 0; y <= stopY; y += gapY) {

    noFill(); 
    stroke(h,s,b);
    rect(x+startX, y+startY, sizeX, sizeY);
    //aggiorno il valore Brigthness ogni chiusura di ciclo y
    b -= colorGapVerticale;
  }
  //aggiorno il valore di Hue ogni chiusura di ciclo x 
  h += colorGapOrizzontale;
  //se il valore è troppo grande riporto al valore iniziale
  if (h>360) h=50;
  //resetto il valore di Brightness
  b = 90;
}
