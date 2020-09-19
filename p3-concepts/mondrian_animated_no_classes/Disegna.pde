void disegnaX() {
  if (x_move < x_moveNext) {
    x_move += velocitaX;
    if (x_move >= x_moveNext) {
      x_move = x_moveNext;
      x_moveNext = random (min, max);
    }
  }

  if (x_move > x_moveNext) {
    x_move -= velocitaX;
    if (x_move <= x_moveNext) {
      x_move = x_moveNext;
      x_moveNext = random(min, max);
    }
  }  

  noStroke(); 

  fill(red);
  rect(0, y_move1+100, x_move, h);  //line(0, y_move1+100, x_move, y_move1+100);

  fill(blue);
  rect(x_move, y_move2, w, h);

  fill(yellow);
  rect(0, 0, x_move, y_move1+100);  

  stroke(white);
  strokeWeight(13);
  line(x_move, 0, x_move, h); //mezzeria
}


void disegnaY() {
  if (y_move1 < y_moveNext1) {
    y_move1 += velocitaY;
    if (y_move1 >= y_moveNext1) {
      y_move1 = y_moveNext1;
      y_moveNext1 = random (min, max);
    }
  }
  if (y_move1 > y_moveNext1) {
    y_move1 -= velocitaY;
    if (y_move1 <= y_moveNext1) {
      y_move1 = y_moveNext1;
      y_moveNext1 = random(min, max);
    }
  }  
  if (y_move2 < y_moveNext2) {
    y_move2 += velocitaY;
    if (y_move2 >= y_moveNext2) {
      y_move2 = y_moveNext2;
      y_moveNext2 = random (min, max);
    }
  }
  if (y_move2 > y_moveNext2) {
    y_move2 -= velocitaY;
    if (y_move2 <= y_moveNext2) {
      y_move2 = y_moveNext2;
      y_moveNext2 = random(min, max);
    }
  }                                                      

  stroke(white);
  strokeWeight(13);
  line(x_move, y_move2, w, y_move2); //blu
  line(0, y_move1+100, x_move, y_move1+100); //giallo rosso
}
