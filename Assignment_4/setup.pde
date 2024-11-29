class setup{
  
  void start(){

  //Setup for win and lose
  win = false;
  lose = false;
    
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
  
  //setup for shipHealth class
  ShipHealth = new shipHealth();
  ShipHealth.setup();
  
  //setup for asteroid
  Asteroid = new asteroid();
  Asteroid.setup();
  
  //setup for enemyNormal
  EnemyNormal = new enemyNormal();
  EnemyNormal.setup();
  
  //setup for enemyNormal2
  EnemyNormal2 = new enemyNormal2();
  EnemyNormal2.setup();
  
  //setup for enemyScout
  EnemyScout = new enemyScout();
  EnemyScout.setup();
  
  //setup for enemyScout
  EnemyScout2 = new enemyScout2();
  EnemyScout2.setup();
  
  //setup for enemyTank
  EnemyTank = new enemyTank();
  EnemyTank.setup();
  
  //laser setup
  Laser = new laser();
  Laser.setup();
  
  //score setup
  Score = new score();
  Score.setup();
  
  //explosion setup
  Explosion = new explosion();
  Explosion.setup();
  
  //loseMenu setup
  LoseMenu = new loseMenu();
  LoseMenu.setup();
  }
  
}
