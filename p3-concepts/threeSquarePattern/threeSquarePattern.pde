//un canvas personalizzato
size(600, 600);

/*
La funzione setTitle () definisce il titolo da 
 visualizzare nella parte superiore della finestra
 */
surface.setTitle("threeSquarePattern");

/*La funzione setLocation() definisce la posizione 
 della finestra rispetto all'angolo in alto a sinistra 
 dello schermo del computer.
 */
surface.setLocation(100, 100);

color coloreEsterno = color(#FF0000);
color coloreInterno = color(#7A00FF);

//assegnare un colore di bg personalizzato
background(coloreEsterno);


noStroke();

rectMode(CENTER);

fill(coloreEsterno);
rect(width/2, height/2, width, height);

fill(coloreInterno);
rect(width/2, height/2, width-200, height-200);

fill(coloreEsterno);
rect(width/2, height/2, width-400, height-400);
