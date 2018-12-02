float x, y, z;
float screenW = 600;
int screenH = 600;
float a = 0.0;
float degree = TWO_PI/180.0;
float cubesPerLevel = 5;
float angle = 360/5.0;
int radius = 200;

class Cube { 
  float ypos, xpos, zpos, speed; 
  int sizeW, sizeH, cubeLevel;
  Cube (float x, float y, int w, int h, float s) {  
    ypos = y; 
    xpos = x; 
    zpos = -100;
    speed = s; 
    sizeW = w;
    sizeH = h;
  } 
  void level(int cLevel){
    cubeLevel = cLevel;
  }
  void update(float index) { 
    zpos += speed; 
    if (ypos > width) { 
      ypos = 0; 
    } 
    float newAngle = angle+(cubeLevel*45);
    float xPos = xpos+(radius*cos((newAngle*index)*degree));
    float yPos = ypos+(radius*sin((newAngle*index)*degree));
    float zPos = zpos-(cubeLevel*100);
    if(zPos>100){
      zPos -= 2000;
    }
    pushMatrix();
    translate (xPos, yPos, zPos);
    fill (255);
    box (50);
    stroke(0);
    popMatrix();
  } 
}

Cube[] totalCubes = new Cube[50]; 

void setup() {
  size (600, 600, P3D);
  background(0);
    x = width;
    y = height;
    z = -100;
    
    int currentLevel = 0;
    int currentLevelItems = 0;
    
    for (int i = 0; i < totalCubes.length; i = i+1) {
      totalCubes[i] = new Cube(screenW/2,screenH/2, 40, 30,10);
      totalCubes[i].level(currentLevel);
      if(currentLevelItems>=5){
         currentLevel++;
      }
      currentLevelItems++;
    }
}

void draw () {
  background(0);
  for (int i = 0; i < totalCubes.length; i = i+1) {
    totalCubes[i].update(i);
  }
  
  // z = z+5;
  // y = width/5;
  // x = height/5;
}
