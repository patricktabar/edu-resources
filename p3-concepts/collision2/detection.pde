void drawDetection() {
  strokeWeight(5);

  if (isInside(mouseX, 200, width-200)) {
    myColor = color(#C10696);
    x = "X range, ";
  } else {
    myColor = color(#065BC1);
    x = "";
  }

  stroke(myColor);  
  line(200, 100, width-200, 100);

  if (isInside(mouseY, 150, height-100)) {
    myColor = color(#C10696);
    y = "Y range, ";
  } else {
    myColor = color(#065BC1);
    y = "";
  }

  stroke(myColor);
  line(width-150, 150, width-150, height-100);

  if (isPointInsideSurface(mouseX, mouseY, 200, 150, width-200, height-100)) {
    myColor = color(#C10696);
    pointColor = myColor;
    pointerStrokeWeight = 12;
    x = "";
    y = "";
    xy = "XY range, ";
    
  } else {
    myColor = color(#065BC1);    
    pointColor = 200;
    pointerStrokeWeight = 10;
    xy = "";
  }

  if (isSurfaceInsideSurface(mouseX-50, mouseY+50, mouseX+50, mouseY-50, 200, 150, width-200, height-100)) {
    myColor = color(#C10696);
    inside = "inside, ";
    areaStrokeWeigth = 3;
  } else {
    myColor = color(#065BC1);
    inside = "";
    areaStrokeWeigth = 1;
  }
  
  if (isSurfaceColliding(mouseX-50, mouseY+50, mouseX+50, mouseY-50, 200, 150, width-200, height-100)) {
    myColor = color(#C10696);
    cursorStrokeWeigth = 3;
    collision = "COLLISION!";
  } else {
    myColor = color(#065BC1);
    cursorStrokeWeigth = 1;
    collision = "";
  }
  
  fill(210);
  strokeWeight(areaStrokeWeigth);
  stroke(myColor);
  rectMode(CORNER);
  rect(200, 150, 400, 350);
}
