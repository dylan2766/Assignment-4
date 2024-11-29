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
    eSSpdY = new PVector(0,4);
    
    imageMode(CENTER);
    enemyScout = new PImage[9];
    for(int i = 0; i < enemyScout.length; i++){
      enemyScout[i] = loadImage("enemyScout" + (i + 1) + ".png");
    }
  }
  
  void visual(){
    
    image(enemyScout[frameCount/2 % enemyScout.length],eSX, eSPos.y);
    
  }
  
  void physics(){
    
    if (score >= 300){
    if (eSSpawn2 == true || (eSDead == true && eSSpawn == true)){
     eSX = random(10,width-10);
     eSPos.y = -60;
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
