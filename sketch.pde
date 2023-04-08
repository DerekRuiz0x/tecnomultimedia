/* T.P. n°0: Retrato.

Derek Misseri Ruiz
Legajo: 88321/1
Profesor: David Bedoian
Comisión: 3
*/
PImage rostro;

void setup(){
  size (800,400);
rostro= loadImage ("rostro.jpg");
  
}
void draw (){
  background (#C5D1C7);

 //cuello
  {
   fill (#FADAC3);
   ellipse (230,270,150,200);
   fill (0);
   bezier (125,255,170,275,210,290,260,250);
 
  }
  //cara base:
  fill (#FADAC3);
  ellipse (200,200,240,140);
  rect (90,77,240,150,100);
  noStroke();
  
  //ojos:
  {
   fill (0);
   bezier (91,160,120,150,140,150,155,160);
   bezier (200,160,220,150,240,150,265,160);
  }
  
  //boca y nariz
  {
   bezier (155,160,130,180,115,220,140,210);
   ellipse (170,204,8,15);
   fill (#F3AC74);
   bezier (115,230,130,217,175,217,200,230);
   bezier (115,232,130,250,175,250,200,232);
  }
  
  //pelo
  {
   fill (0);
   rect (92,70,175,40);
   rect (263,87,50,50);
   rect (280,115,50,50);
   rect (285,135,40,80);
   rect (63,100,25,80);
   
   triangle (150,40,120,80,220,80);
   triangle (200,40,170,80,230,80);
   triangle (90,50,60,145,120,100);
   triangle (119,40,130,80,160,80);
   triangle (250,35,220,80,265,80);
   triangle (300,35,245,80,310,100);
   triangle (330,60,285,100,360,150);
   triangle (285,70,290,180,360,200);
   
   //cejas:
   fill (80);
   bezier (91,135,100,130,140,130,155,135);
   bezier (200,135,210,130,240,130,265,135);
  }
  
  //oreja
  {
    fill (#FADAC3);
    ellipse (320,170,50,40);
    fill (0);
    rect (283,140,30,80);
    triangle (293,170,330,220,300,250);
  }
  
  //ropa
  {
    triangle (300,250,260,450,450,400);
    triangle (300,320,160,450,300,400);
    triangle (154,270,100,400,220,400);
    ellipse (200,383,140,40);
  }
  
  //referencia:
  image (rostro,400,0,350,400);
  println (mouseX,mouseY);
}