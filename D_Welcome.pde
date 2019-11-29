class Welcome {
  String bienvenue = "Bienvenue !";
  String cliquez = "Cliquez ici à commencer votre commande";
  
  GButton startButton;
  
  boolean isClicked;
  
  Welcome() {
    fill(0);
    textSize(30);
    textAlign(CENTER);
    text(bienvenue,width/2,height/4);
    
    startButton = new GButton(applet, width/4, 490, width/2, 30, cliquez);
    startButton.setLocalColorScheme(8);
    startButton.addEventHandler(applet, "startButton_click");
    startButton.setVisible(true);
  }
  
} // end of Welcome class
