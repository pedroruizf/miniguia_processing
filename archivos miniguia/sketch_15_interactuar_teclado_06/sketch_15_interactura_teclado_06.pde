int[] pos=new int[2];//se define un array llamado "pos" compuesto por dos enteros
int paso=5;// se define lo que se mueve en x e y

void setup() {
  size (600, 400);
  background (0);
  pos[0]=width/2;//se asigna al primer valor de la lista (posicion x) el ancho entre 2
  pos[1]=height/2;//se asigna al segundo valor de la lista (posicion y) el alto entre 2
}

void draw () {
  background (0);
  ellipse (pos[0], pos[1], 20, 20);
}

void keyPressed () {
  switch (key) {
  case 'a':
    pos[0]=pos[0]-paso;
    break;
  case 's':
    pos[0]=pos[0]+paso;
    break;
  case 'w':
    pos[1]=pos[1]-paso;
    break;
  case 'z':
    pos[1]=pos[1]+paso;
    break;
  }
}
