class Clasz {
  GButton option1; 
  
  Clasz() {
    option1 = new GButton(applet, 10, 10, 120, 30, "Text");
    option1.addEventHandler(applet, "opt1_click");
  }
  
} // end of Clasz class
