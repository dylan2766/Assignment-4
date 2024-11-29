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
    
  }
  
  void visual(){
    
  }
  
  void physics(){
    
  }
  
}
