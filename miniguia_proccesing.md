#Miniguía de Processing
![ ](/images/pde-128.png  "Logo processing")
Por *Pedro Ruiz Fernández*

Licencia

![ ](/images/cc.png  "Licencia")

###¿Qué es processing?
Proccesing es un lenguaje orientado a objetos, multiplataforma que se basa en otros lenguajes como Java y c++. Está desarrollado en Java y su entorno de desarrollo (IDE) está basado en wiring como Arduino, de ahí su aspecto muy similar.
###¿Dónde encuentro a processing?
Proccesing lo puedo descargar desde la web oficial https://processing.org/, en ella son espacialmente importantes entre otros los apartados: descargas (https://processing.org/download/),  referencia (https://processing.org/reference/) el cual nos dá una ayuda magnífica a todas las órdenes del lenguaje, tutoriales (https://processing.org/tutorials/), etc. 
###Entorno de processing
###Sistema de coordenadas gráficas de Processing
En processing el origen de coordenadas (0,0) se encuentra en la esquina superior izquierda donde las x son crecientes hacia la derecha y las y son crecientes hacia abajo.
![ ](/images/coordenadas_processing.png  "Sistema de coordenadas")
###Instrucciones básicas de dibujo
**size (ancho, alto)**: establece el tamaño de la ventana gráfica.
**background (r,g,b)**: establece el color de fondo de la ventana gráfica, en este caso en RGB, cada valor entre 0 y 255.
**background (gris)**: establece el color de fondo de la ventana gráfica en escala de grises, el valor entre 0 (negro) y 255 (blanco).
**line (xPunto1,yPunto1,xPunto2,yPunto2)**: crea un línea entre dos puntos.
**rect (x,y,ancho,alto)**: crea un rectángulo, donde x e y reflejan la posición de la esquina superior izquierda.
**ellipse (x,y,diametroX,diametroY)**: crea una elipse o círculo, donde x e y establecen el centro de la misma, además tenemos que dar los valores de diámetros en los ejes X e Y, si dichos valores son los mismos tendremos un círculo.
**fill (r,g,b)**: establece color de relleno. 
**fill (escala de grises)**: establece el color de relleno en escala de grises, entre 0 (negro) y 255 (blanco).
**stroke (r,g,b)**: establece el color del borde.
**strokeWeight (grosor)**: establece el grosor de borde.
**noFill()**: elimina el relleno.
**noStroke()**: elimina los bordes.
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

