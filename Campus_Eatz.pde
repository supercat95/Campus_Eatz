import g4p_controls.*;

PImage phone;
PImage logo;

int screen = 2;

Welcome welcome;
locationSelection selection;
Checkout checkout;
TheShopping shopping;

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
      break;
    case 1:
      drawLogo(width/2.75,40,width/4);
      selection = new locationSelection();
      break;
    case 2:
      drawLogo(width/2.75,40,width/4);
      shopping = new TheShopping();
      break;   
    case 3:
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
    welcome.startButton.setVisible(false);
}

void locationDropList_click(GDropList droplist, GEvent event) {
    screen = 2;
    //locationSelection.locationDropList.setVisible(false);
}

void theCheckboxes_theClick(GCheckbox theCheckbox, GEvent theEvent) {
    screen = 3;
}
