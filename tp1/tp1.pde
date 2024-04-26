/// TP1
/// Julieta Taravini
/// Comisión 5
PImage img;

void setup(){
  size (800,400);
  img = loadImage("pera.jpg");
   background (255,255,255);
}

void draw (){
 
  background ( 255,255,255);
   image (img,0,0);
   ////////
     fill ( 18,98,17);
  triangle ( 610,90,650,35,700,160);
   ///////
    stroke (114,180,56);
  strokeWeight (3);
 line (600,40,700,160);
   /////////
       stroke (98,66,17);
       strokeWeight (9);
   line (605,30,590,120);
   ///////
      fill (200,216,111);
      noStroke();
   circle (600,280,200);
   circle (600,180,130);
  //////////////
 
}
