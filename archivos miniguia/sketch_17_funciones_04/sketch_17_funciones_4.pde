int posX,posY;

void setup() {
  size (600,400);
  posX=width/2;
  posY=height/2;
}

void draw() {
  ellipse (posX,posY,20,20);
}


void keyPressed(){
  posX=posX+deltaX();
  posY=posY+deltaY();
}

int deltaX() {//función que devuelve incremento de X 
  int valor=0;
  if (key=='a') {valor=-5;}
  if (key=='s') {valor=5;}
  return valor;  
}

int deltaY() {//función que devuelve incrementode Y
  int valor=0;
  if (key=='w') {valor=-5;}
  if (key=='z') {valor=5;}
  return valor;  
}
