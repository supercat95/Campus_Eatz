class Welcome {
  String bienvenue = "Bienvenue !";
  
  Welcome() {
    
  }
  
  void drawWelcomeScreen() {
    text("bienvenue",0,0);
    
    rect(130,490,width/2,30);
    textAlign(CENTER);
  }
  
} // end of Welcome class
