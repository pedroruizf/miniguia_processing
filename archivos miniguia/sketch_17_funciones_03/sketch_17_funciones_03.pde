void setup() {
  size (600, 400);
}

void draw() {
  pintapelota (random (width), random(height), random (5, 30));
}

void pintapelota (float posX, float posY, float diametro) {
  ellipse (posX, posY, diametro, diametro);
}
