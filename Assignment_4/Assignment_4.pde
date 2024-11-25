//Ship class
ship Ship;

//startMenu class
startMenu StartMenu;

//variables
boolean startMenu;

void setup(){
  size(400,400);
  
//Setup for startMenu
StartMenu = new startMenu();

//startMenu is true
startMenu = true;

//setup for ship class
  Ship = new ship();
  Ship.setup();
}

void draw(){

  if (startMenu == true){
  StartMenu.visuals();
  StartMenu.physics();
  }
  
  if (startMenu == false){
  drawGame();
  }
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
