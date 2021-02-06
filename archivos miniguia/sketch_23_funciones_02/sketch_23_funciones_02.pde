void setup() {
size (500,500);  
}

void draw() {
  background(0);  
  planeta(random (width),random(height), random (255));
  delay (1000);
}

void planeta(float centroX,float centroY, float colorR) {
 noStroke();
 fill (colorR,0,0);
 ellipse (centroX,centroY,100,100);
 noFill();
 stroke (0,255,0);
 ellipse (centroX,centroY,200,200);
 ellipse (centroX,centroY,250,250);
}