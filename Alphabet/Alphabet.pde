PImage letters, alphabet;

void setup() { 
  size(800, 600, P2D);
  alphabet = loadImage("letters.png");

  
}

void draw() {
  imageMode(CENTER); 
  image(alphabet, width/2, height/2);  
}
