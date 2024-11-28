class startMenu{
 
  void visuals(){
    background(10,40,80);
    fill(255,150);
    noStroke();
    rect(0,300,width,height);
  }
  
  void physics(){
   if (mousePressed && mouseY >= 300){
    startMenu = false; 
   }
  }
  
}
