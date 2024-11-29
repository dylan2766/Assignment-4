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
enemyNormal2 EnemyNormal2;
enemyScout2 EnemyScout2;

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

//enemyNormal2 variables
PVector eNPos2, eNSpdY2;
float eNX2, eNHp2;
boolean eN2Spawn, eNDead2, eNMove2, eN2Spawn2;

//enemyScout variables
PVector eSPos, eSSpdY;
float eSX, eSHp;
boolean eSSpawn, eSDead, eSMove, eSSpawn2;

//enemyScout2 variables
PVector eSPos2, eSSpdY2;
float eSX2, eSHp2;
boolean eS2Spawn, eSDead2, eSMove2, eS2Spawn2;

//enemyTank variables
PVector eTPos, eTSpdY;
float eTX, eTHp;
boolean eTSpawn, eTDead, eTMove, eTSpawn2;

//enemySpeed Change variables
float spdNormal, spdScout, spdTank;

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
  EnemyNormal.physics(0);
  
  //EnemyNormal2
  EnemyNormal2.visual();
  EnemyNormal2.physics(100);
  
  //EnemyScout
  EnemyScout.visual();
  EnemyScout.physics(300);
  
  //EnemyScout2
  EnemyScout2.visual();
  EnemyScout2.physics(500);
  
  //EnemyTank
  EnemyTank.visual();
  EnemyTank.physics(400);
  
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
