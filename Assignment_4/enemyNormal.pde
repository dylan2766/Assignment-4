class enemyNormal{
  
  void setup(){
    
    eNMove = false;
    eNDead = true;
    eNSpawn = true;
    eNSpawn2 = false;
    
    eNX = random(10,width-10);
    eNPos = new PVector(eNX,-30);
    eNSpdY = new PVector(0,2);
    
  }
  
  void visual(){
    
   //Temp enemyNormal
   fill(255);
   ellipse(eNX, eNPos.y,40,40);
  }
  
  void physics(){
    
    if (eNSpawn2 == true || (eNDead == true && eNSpawn == true)){
     eNX = random(10,width-10);
     eNPos.y = -30;
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
    
    //Check if laser hits enemyNormal
    if (eNDead == false && (shipX.x >= eNX - 40 && shipX.x <= eNX + 40 && laserPos.y <= eNPos.y)){
      eNDead = true;
      eNSpawn = true;
    }
  }
  
}
