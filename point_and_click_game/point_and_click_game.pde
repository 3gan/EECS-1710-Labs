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
    String[] words = {"Can I help you?"};        
    int index = int(random(words.length));  
    fill(0);
    text(words[index], 400, 592, 280, 320); 
    
    fill(255);
    rect(650, 400, 200, 25);
    String[] Yes = {"Yes"};        
    int qwer = int(random(Yes.length));  
    fill(0);
    text(Yes[qwer], 700, 550, 280, 320);
    
    fill(255);
    rect(650, 350, 200, 25);
    String[] No = {"No"};        
    int asdf = int(random(No.length));  
    fill(0);
    text(No[asdf], 700, 500, 280, 320);
    
  }
    
}
  
