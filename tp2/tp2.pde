/////// Julieta Taravini 132865/3
/////// Comision 5
/////// TP2

float variable1;

PFont fuente1;
PFont fuente2;

String texto1, texto2, texto3, texto4;

PImage imagen1, imagen2, imagen3, imagen4;

void setup (){
  size (640 , 480);
  background(0);
  
  imagen1 = loadImage ("imagen1.2.jpg");
  imagen2 = loadImage ("imagen2.jpg");
  imagen3 = loadImage ("imagen3.jpg");
  imagen4 = loadImage ("imagen4.2.jpg");

  fuente1 = loadFont ("fuente1-48.vlw");
  fuente2 = loadFont ("fuente2-48.vlw");
  
  texto1 = "          Hola, \n hoy prosentamos:";
  texto2 = "`Un juego que se \n fue de las manos´"; 
  texto3 = "Encuentra a Tai. \n     Y sobrevive";
  texto4 = "reiniciar";
 
  textFont(fuente1);
  textSize(46);
 
  textFont (fuente2);
  textSize (34);

 
 
}


void draw(){
  variable1 = frameCount *1;
   println (mouseX, mouseY);
   
  /////////// pantalla 1 ///////// LISTA
  
  background (0);
  image (imagen1, 340, 0, 300, 480);/// imagen, X ,Y ; ancho, largo
  
  textFont (fuente1);
  textSize (50);
  text (texto1, 0, variable1,30);


  /////////// pantalla 2 ////////// LISTA
  
  if (variable1 >= 480){
        variable1 = frameCount - 480;

      background (0);
      
      image (imagen2, 0, 0, 640, 480);
      
      fill (165, 6, 6);
      textSize (70);
      text (texto2, 80, variable1, 100);
     }

  /////////// pantalla 3 ///////// LISTO

  if (variable1 >= 480){
        variable1 = frameCount - 960;
        
      background (255);
        
      image (imagen3, 0, 0, 640,480); 
      
      fill (255);
      textSize (60);
      text (texto3, variable1, variable1,80);
     }
     
  /////////// pantalla 4 FIN //////   LISTO
     
  if (variable1 >= 480){
       variable1 = frameCount - 1440;
       
       background (0);
           
       image (imagen4, 0, 0, 640,480);
           
       fill (0);
       stroke (255);
       rect ( 200, 420, 200, 50);/// X Y Ancho Alto
       
       textFont (fuente2);
       fill(255);
       textSize (45);
       text (texto4, 205, 460);
     }

}


void mouseClicked (){
  if( frameCount > 485 && frameCount > 960 && frameCount > 1440 && 
      mouseX > 200 && mouseX < 200 + 200 && mouseY > 420 && mouseY < 422 + 50)
      {
   frameCount = 0;
      }

}
