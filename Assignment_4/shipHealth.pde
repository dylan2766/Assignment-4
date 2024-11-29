class shipHealth{
  
  PImage[] shipLife;
  
 void setup(){
   shipHealth = 60;
   
   imageMode(CENTER);
   shipLife = new PImage[7];
   for(int i = 0; i < shipLife.length; i++){
    shipLife[i] = loadImage("shipLife" + (i) + ".png"); 
   }
 }
 
 void visual(){
 if (shipHealth > 0){
   for(int i = 0; i < shipHealth; i = i + 29){
     image(shipLife[frameCount/3 % shipLife.length], i+20, 20); 
     }
   }
 }
 
 void physics(){
  if (shipHealth <= 0){
   lose = true; 
  }
 }
 
}
