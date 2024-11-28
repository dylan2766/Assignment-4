class enemyNormal{
  
  void setup(){
    
    eNMove = false;
    eNDead = true;
    eNSpawn = true;
    
    eNX = random(10,width-10);
    eNPos = new PVector(eNX,-30);
    eNSpdY = new PVector(0,2);
    
  }
  
  void visual(){
    
   //Temp enemyNormal
   fill(255);
   ellipse(eNPos.x, eNPos.y,40,40);
  }
  
  void physics(){
    
    if (eNDead == true && eNSpawn == true){
     eNX = random(10,width-10);
     eNMove = true;
    }
    if (eNMove == true){
     eNPos.add(eNSpdY);
    }
    
  }
  
}
