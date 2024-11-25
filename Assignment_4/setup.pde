class setup{
  
  void start(){
    
  //Setup for startMenu
  StartMenu = new startMenu();
  //startMenu is true
  startMenu = true;

  //Setup for reset
  Reset = new reset();
  //reset is false
  reset = false;

  //setup for ship class
  Ship = new ship();
  Ship.setup(); 
  }
  
}
