//classes
ship Ship;
startMenu StartMenu;
setup Setup;
reset Reset;
space Space;
laser Laser;
score Score;
asteroid Asteroid;
explosion Explosion;

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
boolean fired, hit;

//Score variables
int score;

//Asteroid variables
PVector asteroidPos, asteroidSpd;
float asteroidMove;
boolean asteroidSpawn;
float aX1, aX2;

//Explosion variables
float explX, explY;


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
  
  //explosion
  Explosion.visual();
  
  //ship
  Ship.visual();
  Ship.move(); 
  
  //score
  Score.visual();
  
}
