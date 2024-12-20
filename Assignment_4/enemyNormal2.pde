class enemyNormal2{
  
  PImage[] enemyNormal2;
  
  
  void setup(){
    
    //variable setup declaration
    eNHp2 = 10;
    eNMove2 = false;
    eNDead2 = true;
    eN2Spawn = true;
    eN2Spawn2 = false;
    eNX2 = random(10,width-10);
    eNPos2 = new PVector(eNX2,-60);
    eNSpdY2 = new PVector(0,1.5);
    
    //image setup
    imageMode(CENTER);
    enemyNormal2 = new PImage[9];
    for(int i = 0; i < enemyNormal2.length; i++){
      enemyNormal2[i] = loadImage("eNormal" + (i + 1) + ".png");
    }
    
  }
  
  void visual(){
    
    //calls image animation
    image(enemyNormal2[frameCount/2 % enemyNormal2.length], eNX2, eNPos2.y);

  }
  
  void physics(int scoreN){
    
    //changes speed to 1.3 - 1.7 before 300 score
    if (score < 300){
     spdNormal = random(1.3,1.7); 
    }
    
    //changes speed to 1.5 - 2 between 300-500 score
    if (score >= 300 && score <= 500){
     spdNormal = random(1.5,2);   
    }
    
    //changes speed to 1.9 - 2.5 between 300-500 score
    if (score >= 500 && score <= 1000){
     spdNormal = random(1.9,2.5);   
    }
    
    //spawns if score is high enough
    if (score >= scoreN){
    if (eN2Spawn2 == true || (eNDead2 == true && eN2Spawn == true)){
     eNX2 = random(10,width-10);
     eNPos2.y = random(-120,-60);
     eNSpdY2.y = spdNormal;
     eNHp2 = 10;
     eNMove2 = true;
     eN2Spawn2 = false;
     eNDead2 = false;
     eN2Spawn = false;
    }
    if (eNMove2 == true){
     eNPos2.add(eNSpdY2);
    }
    
    //Check if enemyNormal reaches past player
    if (eNPos2.y >= 420){
     eNPos2.y = -30;
     shipHealth = shipHealth - 20;
     eN2Spawn2 = true;
    }
  }
  }
}
