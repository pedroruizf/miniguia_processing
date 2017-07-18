int x=10;
int velx=3;
int diametro=20;

void setup() {
 size (400,400);
 background(0);
 fill (255);
  
}

void draw() {
background (0);  
ellipse (x,height/2,diametro,diametro);
if (x<(diametro/2)) {velx=-velx;}
if (x>width-(diametro/2)) {velx=-velx;}
x=x+velx;
}