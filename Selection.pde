class Selection {
  String choose;
 
  Selection() {
    choose = "Choisissez un restaurant";
  }
  
  void drawtheSelectionScreen() {
    stroke(0);
    fill(255,255,255);
    rectMode(CENTER);
    translate(width/2, height/8);
    rect(0, 0, width/2, 30);
    
    fill(0);
    textAlign(CENTER, CENTER);
    text(choose, 0,0,width/2,30);
  }
  
  void highlightOption() {
    
  }
  
  void drawOptionsMenu() {
    
  }
} // end of Selection class
