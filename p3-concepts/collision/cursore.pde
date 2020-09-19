void drawCursor() {  
  stroke(200);
  strokeWeight(1);
  fill(0);
  textFont(font);
  textSize(20);

  //creo una String in maniera dinamica passando i valori della posizione del mouse
  String txt = "X " + mouseX + ", Y " + mouseY;

  //inizializzo due variabili che poi utilizzo per modificare la posizione del testo
  float xpos, ypos;

  //con una serie di if stabilisco dove posizionare il testo
  if (mouseX < width/2) {
    xpos = 23;
  } else {
    xpos = -117;
  }
  if (mouseY > height/2) {
    ypos = 26;
  } else {
    ypos = -13;
  }

  //scrivo il testo
  text(txt, mouseX+xpos, mouseY-ypos, 120, 20);

  //disegno le due direttrici
  line(0, mouseY, width, mouseY);
  line(mouseX, 0, mouseX, height);
}
