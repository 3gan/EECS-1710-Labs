int numnpc = 1;
int value = 0;
 
npc[] npc = new npc[numnpc];


void setup() { 
  size(800, 600, P2D);
  
  for (int i=0; i<npc.length; i++) {
    npc[i] = new npc(random(width), random(height));
  }
  
}

void draw() {
 
  for (int i=0; i<npc.length; i++) {
    npc[i].run();
  }
}

void mouseClicked() {
  if (value == 0) {
    
    fill(255);
    rect(400, 475, 350, 100);
    String[] words = { "As you can see, I'm just minding my business standing here", "Can I help you?", "Hello traveller", "Do you think I'm just a fictitious character programmed within a stranger's computer for the sole purpose to act as a stranger's assignment, only to be marked with a poor grade for what effort this stranger put into their work?"};
    int index = int(random(words.length));  
    fill(0);
    text(words[index], 400, 592, 280, 320);    
  }
}
  
