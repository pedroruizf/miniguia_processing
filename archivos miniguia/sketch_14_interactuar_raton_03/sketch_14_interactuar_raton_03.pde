int x=0;
void setup() {

  size (500, 400);
  background(0);
}

void draw () {
  if (mousePressed==true) {
    if (mouseButton==LEFT) {
      ellipse (mouseX, mouseY, 50, 50);
    }

    if (mouseButton==RIGHT) {
      rect (mouseX, mouseY, 50, 50);
    }

    if (mouseButton==CENTER) {
      background(0);
    }
  }
  println (mouseButton);
}