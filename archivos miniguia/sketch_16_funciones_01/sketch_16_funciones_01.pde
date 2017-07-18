void setup() {
size (500,500);  
}

void draw() {
  background(0);  
  planeta();
  delay (1000);
}

void planeta() {
float centroX=random (500);
float centroY=random (500);
 noStroke();
 fill (255,0,0);
 ellipse (centroX,centroY,100,100);
 noFill();
 stroke (0,255,0);
 ellipse (centroX,centroY,200,200);
 ellipse (centroX,centroY,250,250);
}