class enemyScout2{
  
  PImage[] enemyScout2;
  
  void setup(){
    
    eSHp2 = 5;
    eSMove2 = false;
    eSDead2 = true;
    eS2Spawn = true;
    eS2Spawn2 = false;
    
    eSX2 = random(10,width-10);
    eSPos2 = new PVector(eSX2,-60);
    eSSpdY2 = new PVector(0,3);
    
    imageMode(CENTER);
    enemyScout2 = new PImage[9];
    for(int i = 0; i < enemyScout2.length; i++){
      enemyScout2[i] = loadImage("enemyScout" + (i + 1) + ".png");
    }
  }
  
  void visual(){
    
    image(enemyScout2[frameCount/2 % enemyScout2.length],eSX2, eSPos2.y);
    
  }
  
  void physics(int spawnScout){
    
    if (score >= spawnScout){
    if (eS2Spawn2 == true|| (eSDead2 == true && eS2Spawn == true)){
     eSX2 = random(10,width-10);
     eSPos2.y = random(-320,-60);
     eSSpdY2.y = random(2.5,3);
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
