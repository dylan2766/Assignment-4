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
enemyNormal EnemyNormal;
shipHealth ShipHealth;
loseMenu LoseMenu;
enemyScout EnemyScout;
enemyTank EnemyTank;

//variables
boolean startMenu, reset, win, lose;

//Ship variables
PVector shipX, posX;
int shipPosX, shipHealth;

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

//enemyNormal variables
PVector eNPos, eNSpdY;
float eNX, eNHp;
boolean eNSpawn, eNDead, eNMove, eNSpawn2;

//enemyScout variables
PVector eSPos, eSSpdY;
float eSX, eSHp;
boolean eSSpawn, eSDead, eSMove, eSSpawn2;

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
  
  if (lose == true){
   loseMenu(); 
  }
}

void drawGame(){
  
  //Background
  Space.background();
  
  //Asteroid
  Asteroid.visual();
  Asteroid.physics();
  
  //EnemyNormal
  EnemyNormal.visual();
  EnemyNormal.physics();
  
  //EnemyScout
  EnemyScout.visual();
  EnemyScout.physics();
  
  //EnemyTank
  EnemyTank.visual();
  EnemyTank.physics();
  
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
  
  //ship health
  ShipHealth.visual();
  ShipHealth.physics();
  
}

void loseMenu(){
  
  //loseMenu visuals
 LoseMenu.visual(); 
 LoseMenu.physics();
 
}
