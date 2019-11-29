class TheShopping {
  
  String[] theFlavors;
  GToggleGroup theCheckOrNot;
  GCheckbox[] theCheckboxes;
  GButton theFinishedShopping;
  String continuez = "Cliquez pour continuer à la prochain étape";
 
  float theYPos = 150;
  
  TheShopping() {
    theFlavors = new String[] {"the0","the1","the2","the3","the4","the5","the6","the7","the8","the9"};
    theCheckOrNot = new GToggleGroup();
    
    theCheckboxes = new GCheckbox[10];  
    for (int theI = 0; theI < theCheckboxes.length; theI++) {
      theCheckboxes[theI] = new GCheckbox(applet, 114.0, theYPos, width/2.0, theYPos, theFlavors[theI]);
      theYPos = theYPos + 20.0;
      
      theCheckOrNot.addControl(theCheckboxes[theI]);
      theCheckboxes[theI].setSelected(false);
    } 
    
    theFinishedShopping = new GButton(applet, width/4.0, 575.0, width/2.0, 30, continuez);
    theFinishedShopping.setLocalColorScheme(8);
    theFinishedShopping.addEventHandler(applet, "theFinishedShopping_theClick");
    
  }
  
} // end of theShopping class
