class TheShopping {
  float theYPos;
  
  String[] theFlavors;
  
  GTextField[] theTextFields;
  
  GButton theFinishedShopping;
  String continuez = "Cliquez pour continuer à la prochaine étape";
  String selectionnez = "Sélectionnez ce que vous voudriez"; 
  
  TheShopping() {
    theYPos = 250;
    
    theFlavors = new String[] {"Céréales Anciens","Raisin Canelle","Canneberge","Tout","Ail","Oignons","Plaine","Pavot","Pumpernickel","Sésame"};
    
    theTextFields = new GTextField[10];  
    for (int theI = 0; theI < theTextFields.length; theI++) {
      theTextFields[theI] = new GTextField(applet, 114.0, theYPos, 15.0, 20.0);
      theTextFields[theI].setText("0");
      theTextFields[theI].setLocalColorScheme(8);
      theYPos = theYPos + 30.0;
      theTextFields[theI].setLocalColor(2,#030303);
    } 
    
    theFinishedShopping = new GButton(applet, width/4.0, 575.0, width/2.0, 30, continuez);
    theFinishedShopping.setLocalColorScheme(8);
    theFinishedShopping.addEventHandler(applet, "theFinishedShopping_theClick");
    
  }
  
  void theSelection() {
    textAlign(CENTER, CENTER);
    text(selectionnez, width/2.0, 200.0);
  }
  
  void theDisplayPrices() {
    theYPos = 250.0;
    textSize(13);
    textAlign(LEFT, TOP);
    for (int theI = 0; theI < theTextFields.length; theI++) {
      text("$1.99", 320, theYPos);
      text(theFlavors[theI], 138.0, theYPos);
      theYPos = theYPos + 30.0;
    }
  }
  
} // end of theShopping class
