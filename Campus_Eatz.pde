import g4p_controls.*;

PImage phone;
PImage logo;

int screen = 2;

Welcome welcome;
locationSelection selection;
Checkout checkout;
TheShopping theShopping;

PApplet applet = this;

void setup() {
  size(500,685);
  phone = loadImage("iphone.png");
  logo = loadImage("logo.png");

}

void draw() {
  background(255,255,255);
  image(phone,80,0,340,685);
  
  selectScreen();
  
  fill(255,255,255);
  fill(0,0,0);
  textSize(15);
  text(pmouseX, 15, 10);
  text(pmouseY, 15, 30);
}

void selectScreen() {
  switch(screen) {
    case 0:
      drawLogo(120,200,width/2);     
      welcome = new Welcome();
      welcome.startButton.setVisible(true);
      break;
    case 1:
      welcome.startButton.setVisible(false);
      
      drawLogo(width/2.75,40,width/4);
      selection = new locationSelection();
      selection.locationDropList.setVisible(true);
      break;
    case 2:
    //  selection.locationDropList.setVisible(false);
      
      drawLogo(width/2.75,40,width/4);
      theShopping = new TheShopping();
      for (int i = 0; i < theShopping.theCheckboxes.length; i++) {
        theShopping.theCheckboxes[i].setVisible(true);
      }  
      break;   
    case 3:
      for (int i = 0; i < theShopping.theCheckboxes.length; i++) {
        theShopping.theCheckboxes[i].setVisible(false);
      }  
      
      checkout = new Checkout();  
      break;
    case 4:
    
  }
}

void drawLogo(float xPos, float yPos, float dimension) {
    image(logo, xPos,yPos, dimension,dimension);
}

void startButton_click(GButton button, GEvent event) {
    screen = 1;
}

void locationDropList_click(GDropList droplist, GEvent event) {
    screen = 2;   
}

void theCheckboxes_theClick(GCheckbox checkbox, GEvent event) {
    screen = 3;
}

void theFinishedShopping_theClick(GButton button, GEvent event) {
    screen = 4;
}
