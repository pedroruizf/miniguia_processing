int x=0;

void setup() {
  size (500, 500);
}

void draw() {
  background(0, x, 0);
  ellipse (x, 250, 50, 50);
  x=x+1;
}