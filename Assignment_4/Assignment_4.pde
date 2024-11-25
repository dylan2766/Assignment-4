//Ship class
ship Ship;

//variables
boolean startMenu;

void setup(){
  size(400,400);
  
//startMenu is true
startMenu = true;

//setup for ship class
  Ship = new ship();
  Ship.setup();
}

void draw(){

  drawGame();
}

void drawGame(){
  
  background(0);
  
  //ship visuals
  Ship.visual();
  
  //ship move
  Ship.move(); 
}

void keyPressed(){
  
}

void mousePressed(){
  
}
