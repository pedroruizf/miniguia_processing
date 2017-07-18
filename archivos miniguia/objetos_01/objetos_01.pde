class pelota {
  //atributos de posición y tamaño de la clase
  float x, y;
  float diametro; 
  //contructor
  pelota (float a, float b) {
    x=a;
    y=b;
    diametro=random(100);
  }

  void dibujapelota() {
    ellipse (x, y, diametro, diametro);
  }
}

pelota pelota1, pelota2;
void setup() {
  size (800, 600);
  pelota1= new pelota (random (width), random(height));
  pelota2= new pelota (random (width), random(height));
}

void draw() {
  background (255);
  pelota1.dibujapelota();
  pelota2.dibujapelota();
}