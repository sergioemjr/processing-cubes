float x, y, z;

void setup() {
  size (600, 600, P3D);
  background(255);
    x = width;
    y = height;
    z = -1000;

  
}

void draw () {
 background(0);
  
  
  // Primeira caixa
  translate (60, 200, z);
  fill (255);
  box(50);
  stroke(0);
  
  //Segunda caixa
  translate (120, 0, z);
  box (50);
  
  //Terceira caixa
  translate (180, 0, z);
  box (50);
  
  //Quarta caixa
   translate (240, 0, z);
   box (50);
  
  
  
  
  
  // Primeira caixa
  translate (120, 120, z);
  fill (255);
  box(50);
  stroke(0);
  
  //Segunda caixa
  translate (120, 120, z);
  box (50);
  
  //Terceira caixa
  translate (120, 120, z);
  box (50);
  
  //Quarta caixa
   translate (120, 120, z);
   box (50);
   
  
  
    z = z+5;
    y = width/5;
    x = height/5;


}
