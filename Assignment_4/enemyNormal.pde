class enemyNormal{
  
  PImage[] enemyNormal;
  
  void setup(){
    
    eNHp = 10;
    eNMove = false;
    eNDead = true;
    eNSpawn = true;
    eNSpawn2 = false;
    
    eNX = random(10,width-10);
    eNPos = new PVector(eNX,-30);
    eNSpdY = new PVector(0,2);
    
    imageMode(CENTER);
    enemyNormal = new PImage[9];
    for(int i = 0; i < enemyNormal.length; i++){
      enemyNormal[i] = loadImage("eNormal" + (i + 1) + ".png");
    }
    
  }
  
  void visual(){
    
    image(enemyNormal[frameCount/2 % enemyNormal.length], eNX, eNPos.y);

  }
  
  void physics(){
    
    if (eNSpawn2 == true || (eNDead == true && eNSpawn == true)){
     eNX = random(10,width-10);
     eNPos.y = -60;
     eNHp = 10;
     eNMove = true;
     eNSpawn2 = false;
     eNDead = false;
     eNSpawn = false;
    }
    if (eNMove == true){
     eNPos.add(eNSpdY);
    }
    
    //Check if enemyNormal reaches past player
    if (eNPos.y >= 420){
     eNPos.y = -30;
     println("-1 life");
     eNSpawn2 = true;
    }
  }
  
}
