PGraphics pg;
color bgColor = color(255, 255);


void setup() {
  size(800, 600, P2D);
  pg = createGraphics(width, height);
  background(bgColor);
}


void draw() {
  if (mousePressed) {
    rectMode(CENTER);
    stroke(0, 255);
    line(mouseX, mouseY, pmouseX, pmouseY);
    }
  
  // Clear the PGraphics when the mouse is pressed
  if (keyCode == UP) {
    pg.beginDraw(); 
    pg.clear();
    pg.endDraw();
 }if (keyCode == DOWN); {
    pg.beginDraw();
    pg.stroke(0, 102, 153);
    pg.line(width/2, height/2, mouseX, mouseY);
    pg.endDraw();
  }

}
