int coorX, coorY;

void setup() {
  background(0);
  size (600, 500);
  coorX=width/2;
  coorY=height/2;
}

void draw() {
  ellipse(coorX, coorY, 20, 20);
}


void keyPressed() {

  if (key=='d') {
    coorX=coorX+5;
  }

  if (key=='a') {
    coorX=coorX-5;
  }

  if (key=='w') {
    coorY=coorY-5;
  }

  if (key=='s') {
    coorY=coorY+5;
  }


  if (coorX>=width-10) {
    coorX=width-10;
  }
  if (coorX<=10) {
    coorX=10;
  }
  if (coorY>=height-10) {
    coorY=height-10;
  }
  if (coorY<=10) {
    coorY=10;
  }

  println(key);
}