//creare un canvas personalizzato
size(600, 600);

//assegnare un colore di bg personalizzato
background(200);

/*
La funzione setTitle () definisce il titolo da 
 visualizzare nella parte superiore della finestra
 */
surface.setTitle("Primitive 2D");

/*La funzione setLocation() definisce la posizione 
 della finestra rispetto all'angolo in alto a sinistra 
 dello schermo del computer.
 */
surface.setLocation(100, 100);



/*
Primitive 2D:
 
 arc()
 circle()
 ellipse()
 line()
 point()
 quad()
 rect()
 square()
 triangle()
 */

strokeWeight(4);

rect(50, 20, 100, 50, 7);
rect(250, 20, 100, 100, 3, 6, 12, 24);
rect(450, 20, 100, 100, 15, 60, 15, 60);


//disegna un quadrato = un rettangolo con lati uguali quindi prende solo 3 parametri
square(50, 150, 200);

/*rectMode (CENTER) interpreta i primi due parametri 
 come punto centrale della forma, mentre il terzo e il quarto 
 parametro sono la sua larghezza e altezza.
 */
fill(127, 100, 127);
rectMode(CENTER);
square(50, 150, 50);

fill(255);
ellipseMode(CORNER);
ellipse(300, 150, 200, 200);

fill(127, 140, 127);
ellipseMode(CENTER);
circle(300, 150, 50);

/*arco
sintassi: 
arc(a, b, c, d, start, stop)
arc(a, b, c, d, start, stop, mode)
*/
fill(#1C3FE5);
arc(100, 450, 80, 80, 0, PI+QUARTER_PI, OPEN);
arc(300, 450, 80, 80, 0, PI+QUARTER_PI, CHORD);
arc(500, 450, 80, 80, 0, PI+QUARTER_PI, PIE);

//quad() è un poligono con 4 vertici
rectMode(CORNER);
fill(#E58E1C);
quad(338, 531, 386, 520, 369, 563, 330, 576);

//triangolo
fill(#E51C4E);
triangle(230, 575, 258, 520, 286, 575);
