class Rettangolo {
  float posx, posy, Width, Height;
  color colore;

  //costruttore
  Rettangolo(float px, float py, float base, float altezza, color colors) {
    posx=px;
    posy=py;
    Width = base;
    Height = altezza;
    colore = colors;
  }

  //metodi
  void display() {
    noStroke();
    fill(colore); 
    rect(posx, posy, Width, Height);
  }

  void setNewOrigin(float x, float y) {
    posx = x;
    posy = y;
  }

  void setNewSize(float w, float h) {
    Width = w;
    Height = h;
  }

  String getColor(float x, float y) {
    if(x >= posx && x <= posx+Width && y >= posy && y <= posy+Height) return ("#"+hex(colore, 6));
    return "";
  }
}
