class enemyNormal{
  
  PImage[] enemyNormal;
  
  
  void setup(){
    
    //declaring setup variables
    eNHp = 10;
    eNMove = false;
    eNDead = true;
    eNSpawn = true;
    eNSpawn2 = false;
    eNX = random(10,width-10);
    eNPos = new PVector(eNX,-60);
    eNSpdY = new PVector(0,1.5);
    
    //enemyNormal image setup
    imageMode(CENTER);
    enemyNormal = new PImage[9];
    for(int i = 0; i < enemyNormal.length; i++){
      enemyNormal[i] = loadImage("eNormal" + (i + 1) + ".png");
    }
    
  }
  
  void visual(){
    
    //enemyNormal image animation
    image(enemyNormal[frameCount/2 % enemyNormal.length], eNX, eNPos.y);

  }
  
  void physics(int scoreN){
    
    //changes speed to 1.3 - 1.7 before 300 score
    if (score < 300){
     spdNormal = random(1.3,1.7); 
    }
    
    //changes speed to 1.5 - 2 between 300-500 score
    if (score >= 300 && score < 500){
     spdNormal = random(1.5,2);   
    }
    
    //changes speed to 1.9 - 2.5 between 300-500 score
    if (score >= 500 && score <= 1000){
     spdNormal = random(1.9,2.5);   
    }
    
    //if score is greater than or equal to scoreN spawn enemyNormal
    if (score >= scoreN){
    if (eNSpawn2 == true || (eNDead == true && eNSpawn == true)){
     eNX = random(10,width-10);
     eNPos.y = random(-120,-60);
     eNSpdY.y = spdNormal;
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
     shipHealth = shipHealth - 20;
     eNSpawn2 = true;
    }
  }
  }
}
