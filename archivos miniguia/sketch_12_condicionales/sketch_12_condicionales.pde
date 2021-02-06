void setup () {
  size (500, 500);
  fill (0, 255, 0);
}

void draw() {
  if (mouseX <= width/2) {
    background (255, 0, 0);
  } else {
    background (0, 0, 255);
  }
}