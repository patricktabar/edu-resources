size(800, 600);
background(127);


//for loop
//sintassi: for(inizio, fine, intervallo) {blocco da eseguire}
//punti con intervallo 10px
for (int i=50; i<=width-50; i=i+10) {
  stroke(0);
  strokeWeight(5);
  point(i, 10);
}

// serie di cicli for
for (int i=0; i<=100; i+=10) {
  stroke(#31E8B9);
  strokeWeight(5);
  line(50, 50+i, 150, 50+i);
}

for (int i=0; i<=100; i+=10) {
  stroke(#31E863);
  strokeWeight(5);
  line(170, 50+i, 270, 50+i);
}

for (int i=0; i<=100; i+=10) {
  stroke(#C3E831);
  strokeWeight(5);
  line(290, 50+i, 390, 50+i);
}

for (int i=0; i<=100; i+=10) {
  stroke(#E7E831);
  strokeWeight(5);
  line(410, 50+i, 510, 50+i);
}

for (int i=0; i<=100; i+=10) {
  stroke(#E89931);
  strokeWeight(5);
  line(530, 50+i, 630, 50+i);
}

for (int i=0; i<=100; i+=10) {
  stroke(#E84D31);
  strokeWeight(5);
  line(650, 50+i, 750, 50+i);
}
