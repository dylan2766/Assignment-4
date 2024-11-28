//classes
ship Ship;
startMenu StartMenu;
setup Setup;
reset Reset;
space Space;
laser Laser;
score Score;
asteroid Asteroid;

//variables
boolean startMenu;
boolean reset;

//Ship variables
PVector shipX, posX;
int shipPosX;

//Laser variables
PVector laserVel, laserPos, laserAcl;
int laserStartPos;
float laserAclY, laserSpd;
boolean fired;

//Score variables
int score;

//Asteroid variables
PVector asteroidPos, asteroidSpd;
float asteroidMove;
boolean asteroidSpawn;
float aX1, aX2;


void setup(){
  size(400,400);
  Setup = new setup();
  
  Setup.start();
}

void draw(){

  //reset
  Reset.update();
  
  if (reset == true){
   Setup.start();
   reset = false;
  }
  
  //start menu
  if (startMenu == true){
  StartMenu.visuals();
  StartMenu.physics();
  }
  
  if (startMenu == false){
  drawGame();
  }
}

void drawGame(){
  
  //Background
  Space.background();
  
  //Asteroid
  Asteroid.visual();
  Asteroid.physics();
  
  //laser
  Laser.visual();
  Laser.physics();
  
  //ship
  Ship.visual();
  Ship.move(); 
  
  //score
  Score.visual();
  
}

void keyPressed(){
  
}

void mousePressed(){
  
}
