class pelota {
  //parámetros de la clase

  float posX, posY, diametro, velX, velY;
  //constructor

  pelota (float x, float y) {
    posX=x;
    posY=y;
    diametro=random (100);
    velX=random (10);
    velY=random (10);
  }

  void dibujapelota () {
    ellipse (posX, posY, diametro, diametro);
  }

  void muevepelota() {
        posX=posX+velX;
    posY=posY+velY;
    if (posX>(width-(diametro/2)) || posX<(diametro/2)) {
      velX=-velX;
    }
    if (posY<(diametro/2) || posY>(height-(diametro/2))) {
      velY=-velY;
    }
  }
}

pelota pelota1, pelota2;
void setup() {
  size (800, 600);
  pelota1= new pelota (random (width), random (height));
  pelota2= new pelota (random (width), random(height));
}



void draw() {
  background(0);
  pelota1.dibujapelota();
  pelota1.muevepelota();
  pelota2.dibujapelota();
  pelota2.muevepelota();
}