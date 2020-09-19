// 3 coordinate per disegnare una linea verticale e due orizzontali (START)
float x = 300;
float y = 300;
float y2 = 300;
// 3 variabili per conservare i valori della nuova posizione (TARGET)
float new_x = x;
float new_y = y;
float new_y2 = y2;

// velocità con la quale incremento i valori
float speed = 2.5;

void setup(){
size(600,600);
background(#3C224B);
frameRate(30);
surface.setTitle("moving lines on mouse click");
}

void draw(){
  background(#3C224B);
  stroke(#D17537);
  strokeWeight(9);
  
  /*
  premendo il mouse assegno valori diversi alle 3 variabili TARGET
  ogni qualvolta si esegue 'draw' se i valori START e TARGET sono diversi viene aggiornata la posizione di conseguenza
  se il valore TARGET è minore del valore START diminusco il valore START della velocità
  se il valore TARGET è maggiore del valore START aumento il valore START della velocità
  */
  
  if(new_x < x) x = x-speed;
  if(new_x > x) x = x+speed;
  
  if(new_y < y) y = y-speed;
  if(new_y > y) y = y+speed;
  
  if(new_y2 < y2) y2 = y2-speed;
  if(new_y2 > y2) y2 = y2+speed;
  
  line(x,0,x,height);
  line(0,y,x,y);
  line(x,y2,width,y2);
  
  println(x,y,new_x,new_y);
}

void mouseClicked(){  
  new_x = random(50, width-50);    
  new_y = random(50, height-50);
  new_y2 = random(50, height-50);
}
