class Mondrian {
  float posx, posy, Width, Height;
  float x_move, x_moveNext, y_move1, y_moveNext1, y_move2, y_moveNext2;
  float r0w, r0h, r1w, r1h, r2w, r2h, r3w, r3h;
  float min, max;
  float velocitaX = 1.5;
  float velocitaY = 1.5;
  Rettangolo[] rettangolo = new Rettangolo[4];


  //costruttore
  Mondrian(float px, float py, float b, float a, color c0, color c1, color c2, color c3) {
    posx = px;
    posy = py;
    Width = b;
    Height = a;

    min = min(Width, Height) * 0.1;
    max = min(Width, Height) * 0.9;

    x_move = random(min, max);
    x_moveNext = random(min, max);
    y_move1 = random(min, max);
    y_moveNext1 = random(min, max);
    y_move2 = random(min, max);
    y_moveNext2 = random(min, max);

    r0w = x_move;
    r0h = y_move1;
    r1w = Width - r0w;
    r1h = y_move2;
    r2w = r1w;
    r2h = Height - r1h;
    r3w = r0w;
    r3h = Height - r0h;

    rettangolo[0] = new Rettangolo(posx, posy, r0w, r0h, c0);
    rettangolo[1] = new Rettangolo(posx + x_move, posy, r1w, r1h, c1);
    rettangolo[2] = new Rettangolo(posx + x_move, posy + y_move2, r2w, r2h, c2); 
    rettangolo[3] = new Rettangolo(posx, posy + y_move1, r3w, r3h, c3);
  }

  //metodi
  void display() {
    push();
    rettangolo[0].display();
    rettangolo[1].display();  
    rettangolo[2].display();   
    rettangolo[3].display();
    lines();
    pop();
  } 

  void lines() {   
    push();
    stroke(#000000);
    strokeWeight(13);
    line(posx + x_move, posy, posx + x_move, posy + Height);
    line(posx, posy + y_move1, posx + x_move, posy + y_move1);
    line(posx + x_move, posy + y_move2, posx + Width, posy + y_move2);
    pop();
  }

  void setVelocity(float vx, float vy) {
    velocitaX = vx;
    velocitaY = vy;
  }

  void animate() {
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

    r0w = x_move;
    r0h = y_move1;
    r1w = Width - r0w;
    r1h = y_move2;
    r2w = r1w;
    r2h = Height - r1h;
    r3w = r0w;
    r3h = Height - r0h;

    rettangolo[0].setNewOrigin(posx, posy);
    rettangolo[0].setNewSize(r0w, r0h);
    rettangolo[0].display();
    rettangolo[1].setNewOrigin(posx+r0w, posy);
    rettangolo[1].setNewSize(r1w, r1h);
    rettangolo[1].display();
    rettangolo[2].setNewOrigin(posx+r0w, posy + r1h);
    rettangolo[2].setNewSize(r2w, r2h);
    rettangolo[2].display();
    rettangolo[3].setNewOrigin(posx, posy+r0h);
    rettangolo[3].setNewSize(r3w, r3h);
    rettangolo[3].display();

    lines();
  }

  String getColor(float x, float y) {
    if (x >= posx && x <= posx+Width && y >= posy && y <= posy+Height) {
      if (rettangolo[0].getColor(x, y) != "") return rettangolo[0].getColor(x, y);
      if (rettangolo[1].getColor(x, y) != "") return rettangolo[1].getColor(x, y);
      if (rettangolo[2].getColor(x, y) != "") return rettangolo[2].getColor(x, y);
      if (rettangolo[3].getColor(x, y) != "") return rettangolo[3].getColor(x, y);
    }
    return "";
  }
}
