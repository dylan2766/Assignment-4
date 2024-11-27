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
int laserPosY, laserStartPos;
float laserAclY, laserSpd;
boolean fired;

//Score variables
int score;

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
  
  //laser visuals
  Laser.visual();
  Laser.physics();
  
  //ship visuals
  Ship.visual();
  
  //ship move
  Ship.move(); 
  
  //Asteroid
  Asteroid.visual();
  
  //score
  Score.visual();
  
}

void keyPressed(){
  
}

void mousePressed(){
  
}
