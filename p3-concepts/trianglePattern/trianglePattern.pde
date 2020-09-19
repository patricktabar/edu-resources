//un canvas personalizzato
size(600, 600);

//assegnare un colore di bg personalizzato
background(255);

noStroke();

/*
La funzione setTitle () definisce il titolo da 
 visualizzare nella parte superiore della finestra
 */
surface.setTitle("trianglePattern");

/*La funzione setLocation() definisce la posizione 
 della finestra rispetto all'angolo in alto a sinistra 
 dello schermo del computer.
 */
surface.setLocation(100, 100);

//dimensione dei quadrati in background
int dimensioneBg = width/2;

//colorMode impostato su HSB
colorMode(HSB, 360, 100, 100);

//colori da assegnare in background
color bg1 = color(49, 79, 99);
color bg2 = color(49, 79, 89);
color bg3 = color(49, 79, 79);
color bg4 = color(49, 79, 69);

//colori da assegnare in foreground
color fg1 = color(151, 99, 37);
color fg2 = color(151, 99, 47);
color fg3 = color(151, 99, 57);
color fg4 = color(151, 99, 67);

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
triangle(0, 0, width/2, 0, 0, height/2);

fill(fg2);
triangle(width/2, 0, width, height/2, width/2, height/2);

fill(fg3);
triangle(width, height/2, width/2, height, width, height);

fill(fg4);
triangle(width/2, height/2, width/2, height, 0, height);
