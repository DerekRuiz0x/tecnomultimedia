/* Derek Misseri Ruiz
legajo 88321/1
Comisión 3
*/

PImage Cosmos,Paul,Paul2,Cosmos2, Paul3;
String estado= "P. inicio";
int Fotograma=0;

void setup(){
size (640,480);
frameRate (30);

Cosmos=loadImage ("Spinning Cosmos.jpg");
Cosmos2=loadImage ("Spinning Cosmos 2.jpg");
Paul=loadImage ("Paul F. spinning cosmos.jpeg");
Paul2=loadImage ("Paul_.jpeg");
Paul3=loadImage ("Paul-Friedlander.jpg");
}

void draw (){
println (frameCount);
background (62,95,138);
   
 if (estado.equals ("P. inicio")){
   
    image (Paul2,170,50,300,300);
    textAlign (CENTER);
    textSize (36);
    fill (255);
    text ("''Spinning Cosmos''\nHecho por Paul Friedlander", 320,400);
    
    }
    
 else if (estado.equals ("pantalla 1")) {
    image (Cosmos,0,0,640,480);
    textAlign (CENTER);
    textSize (16);
    fill (9,121,176,100);
    rect (50,380,550,90);
    fill (255);
    text ("Lo que el espectador descubre al situarse frente a la obra son\n grandes formas incorpóreas en movimiento, suspendidas en mitad del aire,\n que al girar sobre si mismas dotan a la luz de una tridimensionalidad\n que no estamos habituados a contemplar en el espacio físico inmediato.", 320,400);
    Fotograma++;
    if (Fotograma>=100){
    estado = "pantalla 2";
    Fotograma=0;}
 
    }
 else if (estado.equals ("pantalla 2")){
 image (Paul,-70,0,800,500);
    textAlign (CENTER);
    textSize (17);
    fill (9,121,176,120);
    rect (20,390,590,75);
    fill (255);
    text ("-''Quiero expresar mi amor por el cosmos''-\nFueron palabras del artista que dejaron en claro su fascinación\n por la cosmología, el estudio del origen y la naturaleza global del universo ",320,410);

    
    //mov:
    Fotograma++;
    if (Fotograma>=100){
    estado = "pantalla 3";
    Fotograma=0;
  }
 }
  
  else if (estado.equals ("pantalla 3")){
  image (Cosmos2,0,0,640,480);
  textAlign (CENTER);
  textSize (17);
  fill (9,121,176,120);
  rect (70,400,480,70);
    fill (255);
    text ("Esta enorme instalación luminosa ubicada en Montevideo\n conjuga las dos mas grandes pasiones del artista:\n la ciencia y el arte.",320,418);
    
  
  //mov:
    Fotograma++;
    if (Fotograma>=100){
    estado = "pantalla 4";
    Fotograma=0;
  }
}
else if (estado.equals ("pantalla 4")){
  image (Paul3,0,0,640,480);
  textAlign (CENTER);
  textSize (17);
   fill (9,121,176,100);
   rect (27,380,570,97.8);
   fill (255);
   text ("El trabajo de Friedlander es además un ejemplo con respecto al vocabulario\n expresivo de los artistas hoy, para permitirles modelar la realidad \nfísica y crear imágenes que antes hubiésemos pensado solo posibles\n en el terreno de la imaginación y lo onírico.",320,400);
  }
}
void mousePressed (){
  println ("click" + estado);

     if (estado.equals("P. inicio")) {
      estado = "pantalla 1";
      Fotograma=0;
    } else if (estado.equals( "pantalla 1")) {
      estado = "pantalla 2";
      Fotograma=0;
    } else if (estado.equals("pantalla 2")) {
      estado = "pantalla 3";
      Fotograma=0;
    } else if (estado.equals("pantalla 3")) {
      estado = "pantalla 4";
      Fotograma=0;
  }
}
//botón de reinicio
void keyPressed() {  
  if (key == 'a' || key == 'A');
estado="P. inicio";
}