class enemyScout2{
  
  PImage[] enemyScout2;
  
  void setup(){
    
    //variable declaration
    eSHp2 = 5;
    eSMove2 = false;
    eSDead2 = true;
    eS2Spawn = true;
    eS2Spawn2 = false; 
    eSX2 = random(10,width-10);
    eSPos2 = new PVector(eSX2,-60);
    eSSpdY2 = new PVector(0,3);
    
    //image setup
    imageMode(CENTER);
    enemyScout2 = new PImage[9];
    for(int i = 0; i < enemyScout2.length; i++){
      enemyScout2[i] = loadImage("enemyScout" + (i + 1) + ".png");
    }
  }
  
  void visual(){
    
    //image animation
    image(enemyScout2[frameCount/2 % enemyScout2.length],eSX2, eSPos2.y);
    
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
    
    //spawns if score is high enough
    if (score >= spawnScout){
    if (eS2Spawn2 == true|| (eSDead2 == true && eS2Spawn == true)){
     eSX2 = random(10,width-10);
     eSPos2.y = random(-320,-60);
     eSSpdY2.y = spdScout;
     eSHp2 = 5;
     eSMove2 = true;
     eS2Spawn2 = false;
     eSDead2 = false;
     eS2Spawn = false;
    }
    if (eSMove2 == true){
     eSPos2.add(eSSpdY2);
    }
    
    //Check if enemyNormal reaches past player
    if (eSPos2.y >= 420){
     eSPos2.y = -30;
     shipHealth = shipHealth - 20;
     eS2Spawn2 = true;
    }
   }
  }
  
}
