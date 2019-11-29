class TheShopping {
  
  String[] theFlavors;
  GCheckbox[] theCheckboxes;
 
  float theYPos;
  
  TheShopping() {
    theFlavors = new String[] {"the0","the1","the2","the3","the4","the5","the6","the7","the8","the9"};
    
    theCheckboxes = new GCheckbox[10];  
    for (int theI = 0; theI < theCheckboxes.length; theI++) {
      theYPos = 200.0;
      theCheckboxes[theI] = new GCheckbox(applet, 114.0, theYPos, width/2.0, 15.0, theFlavors[theI]);
      //theCheckboxes[theI].setVisible(true);
      theYPos = theYPos + 20.0;
      theCheckboxes[theI].addEventHandler(applet, "theCheckboxes_theClick");
    }
  }
  
} // end of theShopping class
