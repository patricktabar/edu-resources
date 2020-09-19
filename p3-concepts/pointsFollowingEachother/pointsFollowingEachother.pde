
int[] actualPoint = {0, 0};  //il punto che insegue ROSSO
int[] newPoint = {0, 0};  //il punto da inseguire 
int speed = 1;

void setup() {
  surface.setTitle("Infinite Points Following Each Other");
  size(400, 400);
  background(255);
  frameRate(30);
  newPoint[0] = int(random(width));
  newPoint[1] = int(random(height));
}

void draw() {
  background(255);

  noStroke();

  //draw actual point
  fill(255, 0, 0);
  ellipse(actualPoint[0], actualPoint[1], 20, 20);  //il punto ROSSO

  //draw new point
  fill(0, 0, 255);
  ellipse(newPoint[0], newPoint[1], 20, 20);  //il punto BLU

  //se il punto ROSSO ha almeno una coordinata diversa dal punto BLU
  if (actualPoint[0] != newPoint[0] || actualPoint[1] != newPoint[1]) {  
    
    //se la X ROSSA è più grande di quella BLU per raggiungerla diminuiscila di SPEED
    //se la X ROSSA è più piccola di quella BLU per raggiungerla aumentala di SPEED
    //altrimenti è uguale a quella BLU
    if (actualPoint[0] > newPoint[0]) actualPoint[0] -= speed;
    else if (actualPoint[0] < newPoint[0]) actualPoint[0] += speed;
    else actualPoint[0] = newPoint[0];
    
    //se la Y ROSSA è più grande di quella BLU per raggiungerla diminuiscila di SPEED
    //se la Y ROSSA è più piccola di quella BLU per raggiungerla aumentala di SPEED
    //altrimenti è uguale a quella BLU
    if (actualPoint[1] > newPoint[1]) actualPoint[1] -= speed;
    else if (actualPoint[1] < newPoint[1]) actualPoint[1] += speed;
    else actualPoint[1] = newPoint[1];
  } 
  
  //altrimenti se ROSSO = BLU dai nuove coordinate a BLU
  else {
    newPoint[0] = int(random(width));
    newPoint[1] = int(random(height));
  }
  
  //debug delle coordinate
  println("actualPoint: " +  actualPoint[0] + "-" + actualPoint[1]);
  println("newPoint: " +  newPoint[0] + "-" + newPoint[1]);
}
