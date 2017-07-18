class pelota {
  //parametros de la clase
  float posX, posY, diametro, velX, velY;

  //constructor
  pelota (float x, float y) {
    posX=x;
    posY=y;
    diametro=random(100);
    velX=random (10);
    velY=random(10);
  }

  //procedimientos
  void dibujaPelota () {
    ellipse (posX, posY, diametro, diametro);
  }

  void muevePelota() {
    posX=posX+velX;
    posY=posY+velY;
    if (posX<(diametro/2) || posX>(width-(diametro/2))) {
      velX=-velX;
    }
    if (posY<(diametro/2) || posY>(height-(diametro/2))) {
      velY=-velY;
    }
  }
}

pelota [] pelotas=new pelota [10];

void setup() {
  size (800, 600);
  background(0);
   for (int i=0; i<10; i++) {
    pelotas[i]= new pelota (random (width), random (height));
  }
}


void draw() {
  background (0);
  for (int i=0; i<10; i++) {
    pelotas[i].muevePelota();
    pelotas[i].dibujaPelota();
  }
}