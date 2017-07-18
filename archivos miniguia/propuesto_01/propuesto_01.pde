size (500,500);
int diametro;
diametro=0;
int espaciado=3;
noFill();

while (diametro<width) {
stroke (random(255),random(255),random(255));
ellipse (width/2,height/2,diametro,diametro);
diametro=diametro+espaciado;
}