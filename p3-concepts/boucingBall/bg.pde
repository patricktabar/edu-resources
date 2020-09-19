void drawBackground() {
  background(#3A5793);
  ellipseMode(RADIUS);
  noStroke();
  fill(#3065D6);
  //dimensione dei cerchi di sfondo
  int dotSize = 10;
  //dimensione dello spazio tra cerchi
  int gap = 5;
  //riassegno condiderando il diametro dei cerchi di sfondo
  gap += 2 * dotSize;
  //creo una griglia di cerchi
  for (int x=0; x<width+dotSize; x+=gap) {
    for (int y=0; y<height+dotSize; y+=gap) {
      ellipse(x, y, dotSize, dotSize);
    }
  }
}
