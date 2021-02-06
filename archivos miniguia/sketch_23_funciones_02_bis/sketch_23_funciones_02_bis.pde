void setup() {
size (500,500);  
}

void draw() {
  background(0);  
  planeta(random (width),random(height), random (255), random(6));
  delay (1000);
}

void planeta(float centroX,float centroY, float colorR, float anillos) {
 noStroke();
 fill (colorR,0,0);
 ellipse (centroX,centroY,100,100);
 noFill();
 stroke (0,255,0);
 for (int x=1;x<=int(anillos);x++) {
 ellipse (centroX,centroY,100+x*(300/anillos),100+x*(300/anillos));
 }
println (int(anillos));
}