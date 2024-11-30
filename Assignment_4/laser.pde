class laser{
  
  PImage[] laser;
  float laserAccel;
  
  void setup(){
    
    //laser start position
    laserStartPos = 330;
    laserSpd = 5;
    laserAclY = 1;
    laserVel = new PVector(shipX.x,laserSpd);
    laserAcl = new PVector(0, laserAclY);
    laserPos = new PVector(shipX.x,shipX.y);
    
    //setup fired is false
    fired = false;

    //image setup
    imageMode(CENTER);
    laser = new PImage[4];
    for (int i = 0; i < laser.length; i++){
     laser[i] = loadImage("laserbullet" + (i + 1) + ".png");
    }
  }
  
  void visual(){
    //if fired is true draws image animation
    if (fired == true){
    image(laser[frameCount/3 % laser.length], shipX.x, laserPos.y);
    }
  }
  
  void physics(){
    
    //Checks if laser is fired
   if (mousePressed){
     fired = true;
   }
   
   if (!mousePressed && laserPos.y >= laserStartPos){
    fired = false; 
   }  
   
   if (fired == true){
     laserPos.sub(laserVel.add(laserAcl));
    if (laserVel.y >= 20){
     laserVel.y = 20; 
    }
    
    //reset position and speed
    if (laserPos.y <= 0){
     laserPos.y = laserStartPos; 
     laserVel.y = 5;
    }
    
    //check if laser hit asteroid
    if (shipX.x > aX1 && shipX.x < aX2 && laserPos.y < 200){
     laserPos.y = laserStartPos; 
     laserVel.y = 5;
     hit = true;
     explX = asteroidPos.x;
     explY = asteroidPos.y;
    }

    //check if laser hit enemyNormal
    if (fired == true && eNDead == false && (shipX.x >= eNX - 30 && shipX.x <= eNX + 30 && laserPos.y <= eNPos.y)){
     eNHp = eNHp - 5;
     laserPos.y = laserStartPos; 
     laserVel.y = 5;
     hit = true;
     explX = eNX;
     explY = eNPos.y;
      if (eNHp <= 0){
        score = score + 10;
        eNDead = true;
        eNSpawn = true;
      }
    }
    
    //check if laser hit enemyNormal2
    if (fired == true && eNDead2 == false && (shipX.x >= eNX2 - 30 && shipX.x <= eNX2 + 30 && laserPos.y <= eNPos2.y)){
     eNHp2 = eNHp2 - 5;
     laserPos.y = laserStartPos; 
     laserVel.y = 5;
     hit = true;
     explX = eNX2;
     explY = eNPos2.y;
      if (eNHp2 <= 0){
        score = score + 10;
        eNDead2 = true;
        eN2Spawn = true;
      }
    }
    
    //check if laser hit enemyScout
    if (fired == true && eSDead == false && (shipX.x >= eSX - 30 && shipX.x <= eSX + 30 && laserPos.y <= eSPos.y)){
     eSHp = eSHp - 5;
     laserPos.y = laserStartPos; 
     laserVel.y = 5;
     hit = true;
     explX = eSX;
     explY = eSPos.y;
      if (eSHp <= 0){
        score = score + 20;
        eSDead = true;
        eSSpawn = true;
      }
    }
    
    //check if laser hit enemyScout
    if (fired == true && eSDead2 == false && (shipX.x >= eSX2 - 30 && shipX.x <= eSX2 + 30 && laserPos.y <= eSPos2.y)){
     eSHp2 = eSHp2 - 5;
     laserPos.y = laserStartPos; 
     laserVel.y = 5;
     hit = true;
     explX = eSX2;
     explY = eSPos2.y;
      if (eSHp2 <= 0){
        score = score + 20;
        eSDead2 = true;
        eS2Spawn = true;
      }
    }
    
    //check if laser hit enemyTank
    if (fired == true && eTDead == false && (shipX.x >= eTX - 30 && shipX.x <= eTX + 30 && laserPos.y <= eTPos.y)){
     eTHp = eTHp - 5;
     laserPos.y = laserStartPos; 
     laserVel.y = 5;
     hit = true;
     explX = eTX;
     explY = eTPos.y;
      if (eTHp <= 0){
        score = score + 30;
        eTDead = true;
        eTSpawn = true;
      }
    }
   }
  }
  
}
