void setup() {
  size (600, 500);
}

void draw() {

  if (key=='v' || key=='V') {
    background(0, 255, 0);
  }

  if (key=='r' || key=='R') {
    background(255, 0, 0);
  }

  println (key);
}