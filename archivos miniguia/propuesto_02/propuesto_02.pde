void setup() {
  size (500, 500);
}

void draw() {
  background(0);
  noCursor();
  ellipse (width/2, height/2, mouseX, mouseX);
}