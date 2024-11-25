ship Ship;

void setup(){
  size(400,400);

  Ship = new ship();
  Ship.setup();
}

void draw(){
  background(0);
  
  Ship.visual();
}

void keyPressed(){
  
}

void mousePressed(){
  
}
