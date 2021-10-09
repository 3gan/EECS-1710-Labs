class npc { 
  
  boolean debug = true;
  PVector position, target;
  PImage faceCurrent, docile, blink;
  float margin = 50;
  
  boolean isBlinking = false;
  int blinkMarkTime = 0;
  int blinkTimeout = 4000;
  int blinkDuration = 200;
  
  npc(float x, float y) {
   position = new PVector(x, y);
   
   docile = loadImage("docile.png");
   docile.resize(docile.width/2, docile.height/2);
   blink = loadImage("blink.png");
   blink.resize(blink.width/2, blink.height/2);
   
   faceCurrent = docile;
    
  }
  
  void update() {
    
    if (!isBlinking && millis() > blinkMarkTime + blinkTimeout) {
      isBlinking = true;
      blinkMarkTime = millis();
    } else if (isBlinking && millis() > blinkMarkTime + blinkDuration) {
      isBlinking = false;
    }
    
    if (isBlinking) {
      faceCurrent = blink; // blink with happy expression
    } else {
      faceCurrent = docile; // happy expression
    } 
    
  }
  
  void draw() {    
    ellipseMode(CENTER);
    rectMode(CENTER);
    imageMode(CENTER);
    fill(value);
    rect(width/2, height/2, 50, 50); 
  
    image(faceCurrent, width/2, height/2);
    
  }
  
  
  void run() {
    update();
    draw();
  }
  
}
