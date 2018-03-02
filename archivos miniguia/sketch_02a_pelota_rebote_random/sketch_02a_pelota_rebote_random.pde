int x=10;
float y=height/2;
int velx=3;
int diametro=20;

void setup() {
  size (400, 400);
  background(0);
  fill (255);
}

void draw() {
  background (0);  
  ellipse (x, y, diametro, diametro);
  if (x<(diametro/2)) {
    velx=-velx; 
    y=random (height);
  }
  if (x>width-(diametro/2)) {
    velx=-velx;
    y=random (height);
  }
  x=x+velx;
}