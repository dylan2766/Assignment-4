class enemyScout{
  
  PImage[] enemyScout;
  
  void setup(){
    
    eSHp = 5;
    eSMove = false;
    eSDead = true;
    eSSpawn = true;
    eSSpawn2 = false;
    
    eSX = random(10,width-10);
    eSPos = new PVector(eSX,-60);
    eSSpdY = new PVector(0,3);
    
    imageMode(CENTER);
    enemyScout = new PImage[9];
    for(int i = 0; i < enemyScout.length; i++){
      enemyScout[i] = loadImage("enemyScout" + (i + 1) + ".png");
    }
  }
  
  void visual(){
    
    image(enemyScout[frameCount/2 % enemyScout.length],eSX, eSPos.y);
    
  }
  
  void physics(int spawnScout){
    
    //changes spdScout to 2.5-3 before 400 score
    if (score < 400){
    spdScout = random(2.5,3);
    }
    
    //changes spdScout to 2.8-3.5 between 400-700 score
    if (score >= 400 && score < 700){
    spdScout = random(2.8,3.5);
    }
    
    //changes spdScout to 3.5-4.5 between 700-1000 score
    if (score >= 700 && score <= 1000){
    spdScout = random(3.5,4.5);
    }
    
    if (score >= spawnScout){
    if (eSSpawn2 == true|| (eSDead == true && eSSpawn == true)){
     eSX = random(10,width-10);
     eSPos.y = random(-320,-60);
     eSSpdY.y = spdScout;
     eSHp = 5;
     eSMove = true;
     eSSpawn2 = false;
     eSDead = false;
     eSSpawn = false;
    }
    if (eSMove == true){
     eSPos.add(eSSpdY);
    }
    
    //Check if enemyNormal reaches past player
    if (eSPos.y >= 420){
     eSPos.y = -30;
     shipHealth = shipHealth - 20;
     eSSpawn2 = true;
    }
   }
  }
  
}
