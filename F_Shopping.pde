class TheShopping {
  float theYPos;
  
  String[] theFlavors;
  
  GToggleGroup theCheckOrNot;
  GCheckbox[] theCheckboxes;
  
  GButton theFinishedShopping;
  String continuez = "Cliquez pour continuer à la prochaine étape";
  String selectionnez = "Sélectionnez ce que vous voulez"; 
  
  TheShopping() {
    theYPos = 250;
    
    theFlavors = new String[] {"Céréales Anciens","Raisin Canelle","Canneberge","Tout","Ail","Oignons","Plaine","Pavot","Pumpernickel","Sésame"};
    theCheckOrNot = new GToggleGroup();
    
    theCheckboxes = new GCheckbox[10];  
    for (int theI = 0; theI < theCheckboxes.length; theI++) {
      theCheckboxes[theI] = new GCheckbox(applet, 114.0, theYPos, width/2.0, 20.0, theFlavors[theI]);
      theYPos = theYPos + 30.0;
      theCheckboxes[theI].setLocalColor(2,#030303);
      
      theCheckOrNot.addControl(theCheckboxes[theI]);
      theCheckboxes[theI].setSelected(false);
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
    for (int theI = 0; theI < theCheckboxes.length; theI++) {
      text("$1.99", 320, theYPos);
      theYPos = theYPos + 30.0;
    }
  }
  
} // end of theShopping class
