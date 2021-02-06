void setup() {

  size (500, 500);
}

void draw() {
  fill (0, 0, 0, 30);
  rect (0, 0, width, height);
  noStroke();
  noCursor();
  fill (0, 0, 255);
  ellipse (mouseX, mouseY, 50, 50);
}