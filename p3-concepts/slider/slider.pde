
Slider rosso = new Slider(150, 80, 300, 0, 255, color(255, 0, 0));
Slider verde = new Slider(150, 150, 300, 0, 255, color(0, 255, 0));
Slider blu = new Slider(150, 220, 300, 0, 255, color(0, 0, 255));

String[] armony = {"complementari", "analoghi", "triade", "quadrata"};
String currentArmony = armony[0]; 

void setup() {
  surface.setTitle("RGB slider");
  size(600, 600);
  background(127);
  frameRate(60);
}

void draw() {

  background(210);

  rosso.display();
  rosso.update();
  println("R:" + rosso.getCurrentValue());

  verde.display();
  verde.update();
  println("G:" + verde.getCurrentValue());

  blu.display();
  blu.update();
  println("B:" + blu.getCurrentValue());

  //rect sx
  rectMode(CORNER);
  noStroke();
  fill(rosso.getCurrentValue(), verde.getCurrentValue(), blu.getCurrentValue());
  rect(0, 300, 300, 300);

  //rect dx
  if (currentArmony == "complementari") {
    rectMode(CORNER);
    noStroke();
    fill(255-rosso.getCurrentValue(), 255-verde.getCurrentValue(), 255-blu.getCurrentValue());
    rect(300, 300, 300, 300);
  }

  if (currentArmony == "analoghi") {
  }

  if (currentArmony == "triade") {
  }

  if (currentArmony == "quadrata") {
    rectMode(CORNER);
    noStroke();    
    fill(255-rosso.getCurrentValue(), 255-verde.getCurrentValue(), 255-blu.getCurrentValue());
    rect(300, 300, 150, 150);
    fill(rosso.getCurrentValue(), verde.getCurrentValue(), blu.getCurrentValue());
    rect(450, 300, 150, 150);

    if (rosso.getCurrentValue() >= verde.getCurrentValue() && rosso.getCurrentValue() >= blu.getCurrentValue()) {
      fill(rosso.getCurrentValue(), blu.getCurrentValue(), verde.getCurrentValue());
      rect(300, 450, 150, 150);
      fill(255-rosso.getCurrentValue(), verde.getCurrentValue(), blu.getCurrentValue());
      rect(450, 450, 150, 150);
    } else if (verde.getCurrentValue() >= rosso.getCurrentValue() && verde.getCurrentValue() >= blu.getCurrentValue()) {
      fill(blu.getCurrentValue(), verde.getCurrentValue(), rosso.getCurrentValue());
      rect(300, 450, 150, 150);
      fill(rosso.getCurrentValue(), 255-verde.getCurrentValue(), blu.getCurrentValue());
      rect(450, 450, 150, 150);
    } else {
      fill(verde.getCurrentValue(), rosso.getCurrentValue(), blu.getCurrentValue());
      rect(300, 450, 150, 150);
      fill(rosso.getCurrentValue(), verde.getCurrentValue(), 255-blu.getCurrentValue());
      rect(450, 450, 150, 150);
    }
  }
}

void mouseDragged() {
  if (mouseButton == LEFT) {
    if (rosso.cursor.isOver()) rosso.cursor.setPosition(mouseX, rosso.getPosition()[1]);
    if (rosso.cursor.getPosition()[0] < rosso.getPosition()[0]) rosso.cursor.setPosition(rosso.getPosition()[0], rosso.getPosition()[1]);
    if (rosso.cursor.getPosition()[0] > rosso.getPosition()[0]+rosso.size) rosso.cursor.setPosition(rosso.getPosition()[0]+rosso.size, rosso.getPosition()[1]);

    if (verde.cursor.isOver()) verde.cursor.setPosition(mouseX, verde.getPosition()[1]);
    if (verde.cursor.getPosition()[0] < verde.getPosition()[0]) verde.cursor.setPosition(verde.getPosition()[0], verde.getPosition()[1]);
    if (verde.cursor.getPosition()[0] > verde.getPosition()[0]+verde.size) verde.cursor.setPosition(verde.getPosition()[0]+verde.size, verde.getPosition()[1]);

    if (blu.cursor.isOver()) blu.cursor.setPosition(mouseX, blu.getPosition()[1]);
    if (blu.cursor.getPosition()[0] < blu.getPosition()[0]) blu.cursor.setPosition(blu.getPosition()[0], blu.getPosition()[1]);
    if (blu.cursor.getPosition()[0] > blu.getPosition()[0]+blu.size) blu.cursor.setPosition(blu.getPosition()[0]+blu.size, blu.getPosition()[1]);
  }
}
