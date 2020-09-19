void drawDetection() {
  strokeWeight(5);

  if (isInside(mouseX, 200, width-200)) {
    myColor = color(#C10696);
  } else {
    myColor = color(#065BC1);
  }

  stroke(myColor);  
  line(200, 100, width-200, 100);

  if (isInside(mouseY, 150, height-100)) {
    myColor = color(#C10696);
  } else {
    myColor = color(#065BC1);
  }

  stroke(myColor);
  line(width-150, 150, width-150, height-100);

  if (isInside(mouseX, 200, width-200) && isInside(mouseY, 150, height-100)) {
    myColor = color(#C10696);
  } else {
    myColor = color(#065BC1);
  }

  fill(210);
  strokeWeight(1);
  stroke(myColor);
  rect(200, 150, 400, 350);
}

/*
questa funzione restituisce true se valore (val) 
 è compreso tra un minimo (min) e un massimo (max)
 restituisce false in caso contrario
 */
boolean isInside(float val, float min, float max) {
  boolean b = false;
  if (val >= min && val <= max) b = true;
  return b;
}
