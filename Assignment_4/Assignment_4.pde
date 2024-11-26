//classes
ship Ship;
startMenu StartMenu;
setup Setup;
reset Reset;
space Space;

//variables
boolean startMenu;
boolean reset;

void setup(){
  size(400,400);
  Setup = new setup();
  
  Setup.start();
}

void draw(){

  //reset
  Reset.update();
  
  if (reset == true){
   Setup.start();
   reset = false;
  }
  
  //start menu
  if (startMenu == true){
  StartMenu.visuals();
  StartMenu.physics();
  }
  
  if (startMenu == false){
  drawGame();
  }
}

void drawGame(){
  
  //Background
  Space.background();
  
  //ship visuals
  Ship.visual();
  
  //ship move
  Ship.move(); 
  
}

void keyPressed(){
  
}

void mousePressed(){
  
}
