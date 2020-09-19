float posOriginaleX = 200;
float posOriginaleY = 70;
int RectSize = 80;

color verde_color = (#12E300); 
color viola_color = (#E200E3);
color arancio_color = (#E38100);

Bottone Bottone_verde;
Bottone Bottone_viola;
Bottone Bottone_arancio;


void setup() {
  frameRate(60);
  size(600, 600);
  
  Bottone_verde = new Bottone(posOriginaleX, posOriginaleY, RectSize, verde_color); 
  Bottone_viola = new Bottone(posOriginaleX+100, posOriginaleY, RectSize, viola_color );
  Bottone_arancio = new Bottone(posOriginaleX+200, posOriginaleY, RectSize, arancio_color);
}

void draw() {
  background(0);

  Bottone_verde.display();
  Bottone_verde.update();


  Bottone_viola.display();
  Bottone_viola.update();


  Bottone_arancio.display();
  Bottone_arancio.update();
}

void mouseDragged() {
  //println("mouseOK");
  if (mouseButton == LEFT) {
    if (Bottone_verde.isInside()) {
      Bottone_verde.setPosition(mouseX, mouseY);
    }

    if (Bottone_viola.isInside()) { 
      Bottone_viola.setPosition(mouseX, mouseY);
    }

    if (Bottone_arancio.isInside()) {
      Bottone_arancio.setPosition (mouseX, mouseY);
    }
  }
}

void mouseReleased() {
  Bottone_verde.setPosition(posOriginaleX, posOriginaleY);
  Bottone_viola.setPosition(posOriginaleX+100, posOriginaleY);
  Bottone_arancio.setPosition (posOriginaleX+200, posOriginaleY);
  
}
