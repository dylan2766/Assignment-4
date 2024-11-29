class enemyTank{
  
  PImage[] enemyTank;
  
  void setup(){
    
    eTHp = 20;
    eTMove = false;
    eTDead = true;
    eTSpawn = true;
    eTSpawn2 = false;
    
    eTX = random(10,width-10);
    eTPos = new PVector(eTX,-60);
    eTSpdY = new PVector(0,0.5);
    
    imageMode(CENTER);
    enemyTank = new PImage[9];
    for(int i = 0; i < enemyTank.length; i++){
      enemyTank[i] = loadImage("enemyTank" + (i + 1) + ".png");
    }
  }
  
  void visual(){
    
    image(enemyTank[frameCount/2 % enemyTank.length],eTX, eTPos.y);
    
  }
  
  void physics(int spawnTank){
    
    //changes spdTank to 0.45 - 0.65 before 500 score
    if (score < 500){
    spdTank = random(0.45,0.65);
    }
    
    //changes spdTank to 0.6 - 0.85 between 500 - 750 score
    if (score >= 500 && score < 750){
    spdTank = random(0.6,0.85);
    }
    
    //changes spdTank to 1 - 1.5 between 500 - 750 score
    if (score >= 700 && score <= 1000){
    spdTank = random(1,1.5);
    }
    
    if (score >= spawnTank){
    if (eTSpawn2 == true|| (eTDead == true && eTSpawn == true)){
     eTX = random(10,width-10);
     eTPos.y = random(-90,-60);
     eTSpdY.y = spdTank;
     eTHp = 20;
     eTMove = true;
     eTSpawn2 = false;
     eTDead = false;
     eTSpawn = false;
    }
    if (eTMove == true){
     eTPos.add(eTSpdY);
    }
    
    //Check if enemyNormal reaches past player
    if (eTPos.y >= 420){
     eTPos.y = -30;
     shipHealth = shipHealth - 20;
     eTSpawn2 = true;
    }
   }
    
  }
  
}
