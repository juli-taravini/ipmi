///TP2
///JULIETA TARAVINI
///132865/3

int cant = 15;
int ubic;
PImage imagen;

void setup() {
  size(800, 400);
  ubic = width/cant;
 imagen = loadImage ("F17.jpg");
}

void draw() {

 // float mx = map(mouseX, 0, width, 0, 255);
 // float my = map (mouseY, 0, height, 0, 255);
 // background(mx, 0, my);
 background(0);

  ubic = width/cant;
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      float distan = dist(mouseX, mouseY, i *ubic + ubic/2, j *ubic + ubic/2);
      float diagonal = dist(0, 0, width, height);
      float tam = map(distan, 0, diagonal, 20, ubic);

      if ((i+j)%2==0) {
        float mx = map(mouseX, 0, width, 0, 255);
        float my = map (mouseY, 0, height, 0, 255);
        fill(mx, 0, my);
        ellipse(i*ubic+ubic/2, j*ubic+ubic/2, tam, tam);
      } 
      else {
        float mx = map(mouseX, 0, width, 0, 255);
        float my = map (mouseY, 0, height, 0, 255);
        fill(mx, 0, my);
        ellipse(i*ubic+ubic/2, j*ubic+ubic/2, tam, tam);
      }
    }
  }
  
  image (imagen, 0,0);

}

void mouseClicked() {
  cant++;
}
void keyPressed() {

  if (key == ENTER) {
    cant = 15;
    background (0);
  }
}
