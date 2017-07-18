float velX=0;
float velY=1;
float acelY=0.1;
float posX;
float posY=1;
float rebote;
void setup() {
size (600,500);
background(0);
posX=random (width);
rebote=random (-10,10);
}

void draw() {
  background(0);
  ellipse (posX,posY,20,20);
  //velX=random(-5,5);
  posX=posX+velX;
  velY=(velY+acelY);
  posY=posY+velY;
  posX=posY*rebote;
  if (posY>height) { posY=height;}
  if (posY<0) {posY=0;}
  if (posY>=height || posY<=0) {
  velY=-velY;
  //acelY=-acelY;
  }
  if (posX>width) {
  posX=width;
  }
  if (posX<0) {
    posX=0;}
println (velY);
}