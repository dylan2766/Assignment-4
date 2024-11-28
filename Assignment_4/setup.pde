class setup{
  
  void start(){

  //Setup for startMenu
  StartMenu = new startMenu();
  startMenu = true;

  //Setup for reset
  Reset = new reset();
  reset = false;

  //Setup for space background
  Space = new space();
  Space.setup();

  //setup for ship class
  Ship = new ship();
  Ship.setup(); 
  
  //setup for asteroid
  Asteroid = new asteroid();
  Asteroid.setup();
  
  //setup for enemyNormal
  EnemyNormal = new enemyNormal();
  EnemyNormal.setup();
  
  //laser setup
  Laser = new laser();
  Laser.setup();
  
  //score setup
  Score = new score();
  Score.setup();
  
  //explosion setup
  Explosion = new explosion();
  Explosion.setup();
  }
  
}
