void setup() {
  size (400, 400);
  background(0);
  fill (255);
}

void draw() {

  if (mousePressed==true) {

    if (mouseButton==LEFT) {
      fill (255);
      ellipse (mouseX, mouseY, 20, 20);
    }

    if (mouseButton==RIGHT) {
      fill (0);
      ellipse (mouseX, mouseY, 50, 50);
    }
  }
}