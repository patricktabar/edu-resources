//creare un canvas personalizzato
size(600, 600);

//assegnare un colore di bg personalizzato
background(225);

//creare una linea 
line(100, 100, 500, 100);

//creare un punto
point(550, 100);

//cambiare stile alla linea
//cambiare il colore di riempimento linea
stroke(127);

//cambiare lo spessore della linea
strokeWeight(10);

//cambiare lo stile della linea a ROUND
strokeCap(ROUND);
line(100, 120, 500, 120);

//cambiare lo stile della linea a SQUARE
strokeCap(SQUARE);
line(100, 140, 500, 140);

//cambiare lo stile della linea a PROJECT
strokeCap(PROJECT);
line(100, 160, 500, 160);

//cambiare lo stile del punto a ROUND
strokeCap(ROUND);
point(550, 120);

//cambiare lo stile del punto a SQUARE !!!
strokeCap(SQUARE);
point(550, 140);

//cambiare lo stile del punto a PROJECT
strokeCap(PROJECT);
point(550, 160);

//creare un rettangolo con riempimento RGB
fill(255, 146, 3);
rect(100, 200, 100, 100);

//creare un rettangolo con riempimento e margine RGB e join ROUND
fill(255, 146, 3);
stroke(#FF0B03);
strokeJoin(ROUND); // join in caso di vertici/ cap in caso di segmenti 
strokeWeight(10);
rect(300, 200, 100, 100);

//usare altri attributi strokeJoin() come METER e BEVEL
fill(#03FF8F);
stroke(#052540);
strokeJoin(MITER); // MITER
strokeWeight(10);
rect(100, 400, 100, 100);

//usare altri attributi strokeJoin() come METER e BEVEL
fill(#03FF8F);
stroke(#052540);
strokeJoin(BEVEL); // BEVEL
strokeWeight(10);
rect(300, 400, 100, 100);
