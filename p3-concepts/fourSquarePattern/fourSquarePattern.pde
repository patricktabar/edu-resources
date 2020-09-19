//un canvas personalizzato
size(600, 600);

//assegnare un colore di bg personalizzato
background(255);

noStroke();

/*
La funzione setTitle () definisce il titolo da 
 visualizzare nella parte superiore della finestra
 */
surface.setTitle("fourSquarePattern");

/*La funzione setLocation() definisce la posizione 
 della finestra rispetto all'angolo in alto a sinistra 
 dello schermo del computer.
 */
surface.setLocation(100, 100);

//dimensione dei lati dei due quadrati
int dimensioneBg = width/2;
int dimensioneFg = width/4;

//colorMode impostato su HSB
colorMode(HSB, 360, 100, 100);

//colori da assegnare in background
color bg1 = color(345, 31, 99);
color bg2 = color(345, 41, 99);
color bg3 = color(345, 51, 99);
color bg4 = color(345, 61, 99);

//colori da assegnare in foreground
color fg1 = color(195, 21, 99);
color fg2 = color(195, 31, 99);
color fg3 = color(195, 41, 99);
color fg4 = color(195, 51, 99);

rectMode(CORNER);

//quadrati in background
fill(bg1);
rect(0, 0, dimensioneBg, dimensioneBg);

fill(bg2);
rect(width/2, 0, dimensioneBg, dimensioneBg);

fill(bg3);
rect(width/2, height/2, dimensioneBg, dimensioneBg);

fill(bg4);
rect(0, height/2, dimensioneBg, dimensioneBg);

//triangoli in foreground
fill(fg1);
rect(width/4, height/4, dimensioneFg, dimensioneFg);

fill(fg2);
rect(width/2, height/4, dimensioneFg, dimensioneFg);

fill(fg3);
rect(width/2, height/2, dimensioneFg, dimensioneFg);

fill(fg4);
rect(width/4, height/2, dimensioneFg, dimensioneFg);
