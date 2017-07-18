void setup () {
  size (500, 500); 
  noStroke();
}

void draw () {
  fill (255, 10);//rellena de blanco con transparencia 10%
  rect (0, 0, width, height);//realiza un rectángulo de toda la pantalla con transparencia
  fill (random(255), random(255), random(255));//cambiamos a relleno aletaorio
  ellipse (mouseX, mouseY, random (100), random(100));//dibuja elipses de tamaños aleatorios en la posición del ratón
}