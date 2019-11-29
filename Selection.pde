class Selection {
  String choose;
  String[] locations;
 
  Selection() {
    choose = "Choisissez un restaurant";
    locations = new String[15] {"Arnold", "Hughes-Trigg Student Center", "Einstein Bros Bagels", "Lee", "Lawyers Inn", "The Mustang", "Starbucks at Dedman Rec", "Starbucks at Fondren Library", "Mac's Place", "P.O.D. at the Bonelli", "Cinco Taco", "Chick-Fil-A", "Steel City Pops", "Sushic", "The Market"};
    
    g4p_controls.GDropList.GDropList(applet, width/2.0, 182.0, width/2.0, 450.0,15); 
    g4p_controls.GDropList.setItems(locations, 0);
  }
  
  void drawtheSelectionScreen() {
    stroke(0);
    fill(255,255,255);
    rectMode(CENTER);
    rect(width/2, 182, width/2, 30);
    
    fill(0);
    textAlign(CENTER, CENTER);
    text(choose, width/2,182, width/2,30);
  }
  
  void highlightOption() {
    
  }
  
  void drawOptionsMenu() {
    
  }
} // end of Selection class
