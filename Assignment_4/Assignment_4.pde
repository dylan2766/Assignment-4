//Ship class
ship Ship;

void setup(){
  size(400,400);

//setup for ship class
  Ship = new ship();
  Ship.setup();
}

void draw(){
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
