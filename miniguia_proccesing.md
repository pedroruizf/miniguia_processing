# Miniguía de Processing
![ ](/images/pde-128.png  "Logo processing")
Por *Pedro Ruiz Fernández*

Licencia

![ ](/images/cc.png  "Licencia")

### ¿Qué es processing?
Proccesing es un lenguaje orientado a objetos, multiplataforma que se basa en otros lenguajes como Java y c++. Está desarrollado en Java y su entorno de desarrollo (IDE) está basado en wiring como Arduino, de ahí su aspecto muy similar.

### ¿Dónde encuentro a processing?
Proccesing lo puedo descargar desde la web oficial https://processing.org/, en ella son espacialmente importantes entre otros los apartados: descargas (https://processing.org/download/),  referencia (https://processing.org/reference/) el cual nos dá una ayuda magnífica a todas las órdenes del lenguaje, tutoriales (https://processing.org/tutorials/), etc.

### Entorno de processing
### Sistema de coordenadas gráficas de Processing
En processing el origen de coordenadas (0,0) se encuentra en la esquina superior izquierda donde las x son crecientes hacia la derecha y las y son crecientes hacia abajo.

![Sistema de coordenadas](/images/coordenadas_processing.png  "Sistema de coordenadas")

### Instrucciones básicas de dibujo
* **size (ancho, alto)**: establece el tamaño de la ventana gráfica.
* **background (r,g,b)**: establece el color de fondo de la ventana gráfica, en este caso en RGB, cada valor entre 0 y 255.
* **background (gris)**: establece el color de fondo de la ventana gráfica en escala de grises, el valor entre 0 (negro) y 255 (blanco).
* **line (xPunto1,yPunto1,xPunto2,yPunto2)**: crea un línea entre dos puntos.
* **rect (x,y,ancho,alto)**: crea un rectángulo, donde x e y reflejan la posición de la esquina superior izquierda.
* **ellipse (x,y,diametroX,diametroY)**: crea una elipse o círculo, donde x e y establecen el centro de la misma, además tenemos que dar los valores de diámetros en los ejes X e Y, si dichos valores son los mismos tendremos un círculo.
* **fill (r,g,b)**: establece color de relleno.
* **fill (escala de grises)**: establece el color de relleno en escala de grises, entre 0 (negro) y 255 (blanco).
* **stroke (r,g,b)**: establece el color del borde.
* **strokeWeight (grosor)**: establece el grosor de borde.
* **noFill()**: elimina el relleno.
* **noStroke()**: elimina los bordes.

Ejemplo de programa secuencial, utilizando las órdenes anteriores:
~~~
size (500,450);
background(0,255,0);
stroke (255,0,0);
strokeWeight (6);
fill (0,0,255);
rect (100,100,100,50);
noStroke();
ellipse (200,200,80,80);
noFill();
stroke (255,0,0);
line (300,300,500,450);
~~~
### Estructura básica de programa en Processing
En processing tenemos dos funciones principales (void), una de ellas es *setup* y la otra *draw*, en la primera se realiza una configuración de nuestro programa, por ejemplo el tamaño de la ventana gráfica con *size (tamañoX, tamañoY)*, y se ejecuta una sóla vez. En la función *draw* todo lo que esté definido en la misma se va a repetir indefinidamente.
En el siguiente programa antes del *setup* definimos la variable x como entera (integer) (*int x*), y en el draw en cada ciclo aumentamos su valor (x=x+1), cambiando el color de fondo y desplazando hacia la derecha la circunferencia.
~~~
int x=0;

void setup() {
  size (500, 500);
}

void draw() {
  background(0, x, 0);
  ellipse (x, 250, 50, 50);
  x=x+1;
}
~~~
Otros ejemplos:
El siguiente programa versa sobre una pelota de diámetro 20 que se dibuja en la mitad de la altura del área gráfica y se desplaza de izquierda a derecha rebotando en las paredes laterales.
~~~
int x=10;
int velx=3;
int diametro=20;

void setup() {
 size (400,400);
 background(0);
 fill (255);
 }

void draw() {
 background (0);  
 ellipse (x,height/2,diametro,diametro);
 if (x<(diametro/2)) {velx=-velx;}
 if (x>width-(diametro/2)) {velx=-velx;}
 x=x+velx;
}
~~~
#### Variables
En el ejemplo anterior hemos trabajado con variables, que son elementos sirven para guardar datos que usaremos luego en nuestro programa, las variables pueden ser globales (afectan a todos los procedimientos y se colocan antes de setup) o locales se definen y usan en una función y sólo sirven en ella (ya definiremos las funciones más tarde).

|**Tipo de variable**|**¿Que guardan?**|**ejemplo**
|--|--|--
|integer|números enteros positivos y negativos. Entre 2,147,483,647 y -2,147,483,648|int x;
|float|números decimales comprendidos entre 3.40282347E+38 y -3.40282347E+38|float x;
|boolean|pueden tomar valores verdaderos (true) o falso (false)|boolean x;
|char|puede guardar un conjunto de caracteres o un carácter. La definición de un conjunto de caracteres se hace con comillas dobles y la de un carácter con comillas simples|char palabra=”hola”; char caracter=’h’;

#### Números aleatorios (Random)
A veces es necesario la generación de número aleatorios, para ello usamos la orden random de dos formas diferentes
- **random (numero máximo)**: genera un número aleatorio entre o y el número dado, devuelve un valor tipo float (decimal).
- **random (número mínimo, número máximo)**: genera un número aleatorio entre un número mínimo y el número máximo dado, devuelve un valor tipo float (decimal).

Para conocer mejor estas órdenes proponemos un ejercicio que genera ellipses aleatorias de tamaños entre 0 y 100, de color de relleno aleatorio, sin bordes y sobre un fondo con transparencia. En este ejercicio introducimos las variables de sistema mouseX, mouseY que nos devuelven la coordenadas X e Y del puntero del ratón, y width y height que nos devuelven el ancho y alto de la ventana de trabajo.
~~~
void setup () {
  size (500, 500);
  noStroke();
}

void draw () {
  fill (255, 10);//rellena de blanco con transparencia 10%
  rect (0, 0, width, height);//realiza un rectángulo de toda la pantalla con transparencia
  fill (random(255), random(255), random(255));//cambiamos a relleno aleatorio
  ellipse (mouseX, mouseY, random (100), random(100));//dibuja elipses de tamaños aleatorios en la posición del ratón
}
~~~
### Estructuras de control for y while
Con la estructura de control *for* vamos a  realizar una serie de acciones mientras se cumpla una condición de salida del bucle.

***for (valor inicial de condición;condición de salida;acción sobre condición) {instrucciones;}***

Vamos a realizar un programa que repita un círculo de diámetro 20 de izquierda a derecha desde la primera posición (posición x=10)c incrementando su posición en 20 cada vez, hasta que llegue al final de las posiciones x, la ventana gráfica será de 500x500.
Para ello hemos utilizado dos variables de processing que nos dan valores de la ventana gráfica, como:

- **width**: variable predefinida que nos devuelve el ancho de la ventana gráfica.
- **height**: variable predefinida que nos devuelve el alto de la ventana gráfica.
~~~
int x;
int y;
background (0);
size (500,500);  
fill (255);

for (x=10; x<=width; x=x+20) {
 ellipse (x,10,20,20);
}
~~~
También el programa se puede hacer con un bloque de control while:

***while (condición a cumplir) {instrucciones;}***
~~~
int x=10;
background (0);
size (500,500);  
fill (255);

while (x<=width) {
 ellipse (x,10,20,20);
 x=x+20;
}
~~~

*Ejercicio propuesto 1: realizar una serie de círculos concéntricos de color tipo (r,g,b) variable aleatorio, espaciados 3 unidades sin sobrepasar una ventana gráfica de 500 x 500. Investigar o estudiar la orden random antes de nada.*

Ahora vamos a realizar no sólo la primera fila sino todas, rellenando toda la pantalla gráfica de círculos, haciendo que se repita la primera desplazándola 20 unidades en y. Lo haremos tanto con *for* como con *while*.

Con *for*:
~~~
int x;
int y;
background (0);
size (500, 500);  
fill (255);


for (y=10; y<=height; y=y+20) {

  for (x=10; x<=width; x=x+20) {
    ellipse (x, y, 20, 20);
  }
}
~~~
Con *while*:
~~~
int x=10;
int y=10;
background (0);
size (500, 500);  
fill (255);


while (y<=height) {
  x=10;
  while (x<=width) {
    ellipse (x, y, 20, 20);
    x=x+20;
    println (y);
  }
  y=y+20;
}
~~~
### Interactuar con el ratón.
#### Variables de posición
En processing tenemos dos variables predefinidas que nos dan los valores de la posición en X e Y ne nuestro cursor del ratón, que son:
- **mouseX**: variable predefinida que nos devuelve la posición en X del cursor.
- **mouseY**: variable predefinida que nos devuelve la posición en Y del cursor.
En el siguiente programa movemos una circunferencia con el puntero del ratón. Observar que  “background (0)” va dentro del draw para que se borre el fondo cada vez y usamos la orden “**noCursor()**” para que no se muestre el puntero del ratón.
