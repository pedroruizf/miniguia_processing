int x1, y1, x2, y2;

void setup () {
  size (500, 500);
}

void draw() {
}

void mousePressed() {
  x1=mouseX;
  y1=mouseY;
  println (x1, y1);
}

void mouseReleased() {
  x2=mouseX;
  y2=mouseY;
  println (x2, y2);
  line (x1, y1, x2, y2);
}