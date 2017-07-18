class pelota {
  
float posx,posy,diametro,velx,vely;

pelota (float x,float y) {
  
 posx=x;
 posy=y;
 diametro=random(100);
 velx=random(10);
 vely=random(10);
  
}
  
  void dibujapelota() {
  ellipse (posx,posy,diametro,diametro);
     
  }
  
 void muevepelota() {
  posx=posx+velx;
  posy=posy+vely;
  if (posx>width-diametro/2) {velx=-velx;}
  if (posx<diametro/2) {velx=-velx;}
  if (posy>height-diametro/2) {vely=-vely;}
  if (posy<diametro/2) {vely=-vely;}
   
 }
  
  
}
int x;
int numeropelotas=100;
pelota pelotas []=new pelota [numeropelotas];
 

void setup() {
 size (800,600);
 for (x=0;x<numeropelotas;x++) {
  pelotas[x]=new pelota (random (width),random(height)); 
  }
  
}


void draw() {
 background(0);
  for (x=0;x<numeropelotas;x++) {
  pelotas[x].dibujapelota();
  pelotas[x].muevepelota();
  
 }
  
}