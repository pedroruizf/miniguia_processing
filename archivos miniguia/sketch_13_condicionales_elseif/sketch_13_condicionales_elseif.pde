
void setup () {
  fill (0);
  size (600, 400);
}

void draw() {
  background (0);

  if (mouseX<=200) {
    fill (255, 0, 0);
    println (mouseX+" es menor o igual a 200");
  } else if (mouseX>200 && mouseX<=400) {
    fill (0, 250, 0);
    println (mouseX+" está entre 200 y 400");
  } else if (mouseX>400) {
    fill (0, 0, 255);
    println (mouseX+ " es mayor de 400");
  }  

  ellipse (mouseX, mouseY, 75, 75);
}