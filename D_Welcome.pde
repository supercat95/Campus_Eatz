class Welcome {
  String bienvenue;
  String cliquez;
  
  GButton startButton;
  
  Welcome() {
    bienvenue = "Bienvenue !";
    cliquez = "Cliquez ici à commencer votre commande";
    
    startButton = new GButton(applet, width/4, 490, width/2, 30, cliquez);
    startButton.setLocalColorScheme(8);
    startButton.addEventHandler(applet, "startButton_click");
  }
  
  void welcomeScreen() {
    fill(0);
    textSize(30);
    textAlign(CENTER);
    text(bienvenue,width/2,height/4);
  }
  
} // end of Welcome class
