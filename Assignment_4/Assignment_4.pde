//classes
ship Ship;
startMenu StartMenu;
setup Setup;
reset Reset;

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
  
  background(0);
  
  //ship visuals
  Ship.visual();
  
  //ship move
  Ship.move(); 
  
  //reset
  
}

void keyPressed(){
  
}

void mousePressed(){
  
}
