int espaciado=8;
int alturaLinea=15;
int posX=espaciado;
int posY=alturaLinea;
int totalLineas= height/alturaLinea;
int numeroCaracteresLinea=width/espaciado;

void setup() {
size (500,100);
background (0);

}


void draw() {
  
   
}

 void keyPressed() {
   text (key,posX,posY);
   posX=posX+espaciado;
   
   if (posX>=width) {
     posX=espaciado;
     posY=posY+alturaLinea;
    
  }
  
  if (posY>height) {
   background(0);
    posX=espaciado;
   posY=alturaLinea;
  }
 }