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

boolean isPointInsideSurface(float px, float py, float surfaceXmin, float surfaceYmin, float surfaceXmax, float surfaceYmax){
  boolean b = false;
  if(isInside(px, surfaceXmin, surfaceXmax) && isInside(py, surfaceYmin, surfaceYmax)) b = true;
  return b;
}

boolean isSurfaceInsideSurface(float pXmin, float pYmin, float pXmax, float pYmax, float surfaceXmin, float surfaceYmin, float surfaceXmax, float surfaceYmax){
  boolean b = false;
  if(isPointInsideSurface(pXmin, pYmin, surfaceXmin, surfaceYmin, surfaceXmax, surfaceYmax) 
  && isPointInsideSurface(pXmax, pYmax, surfaceXmin, surfaceYmin, surfaceXmax, surfaceYmax)) b = true;
  return b;
}

boolean isSurfaceColliding(float pXmin, float pYmin, float pXmax, float pYmax, float surfaceXmin, float surfaceYmin, float surfaceXmax, float surfaceYmax){
  boolean b = false;
  if(isPointInsideSurface(pXmin, pYmin, surfaceXmin, surfaceYmin, surfaceXmax, surfaceYmax) 
  || isPointInsideSurface(pXmax, pYmax, surfaceXmin, surfaceYmin, surfaceXmax, surfaceYmax)
  || isPointInsideSurface(pXmin, pYmax, surfaceXmin, surfaceYmin, surfaceXmax, surfaceYmax)
  || isPointInsideSurface(pXmax, pYmin, surfaceXmin, surfaceYmin, surfaceXmax, surfaceYmax)) b = true;
  return b;
}
