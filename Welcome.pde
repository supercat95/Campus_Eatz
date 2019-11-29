class Welcome {
  String bienvenue = "Bienvenue !";
  String cliquez = "Cliquez ici à commencer";
  
  Welcome() {
    
  }
  
  void drawWelcomeScreen() {
    fill(0);
    textSize(30);
    textAlign(CENTER);
    text(bienvenue,width/2,height/4);
    
    fill(76,115,190);
    rectMode(CENTER);
    rect(width/2,490,width/2,30);
    
    fill(255,255,255);
    textSize(20);
    textAlign(CENTER,CENTER);
    text(cliquez, width/2,490);
    
    
    
  }
  
} // end of Welcome class
