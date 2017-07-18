float x=random (width);
float y= random (height);
float velx= random (5);
float vely= random (5);

int diametro=20;

void setup() {
 size (400,400);
 background(0);
 fill (255);
  
}

void draw() {
background (0);  
ellipse (x,y,diametro,diametro);
if (x<(diametro/2)) {velx=-velx;}
if (x>width-(diametro/2)) {velx=-velx;}
if (y<(diametro/2)) {vely=-vely;}
if (y>height-(diametro/2)) {vely=-vely;}
x=x+velx;
y=y+vely;
}