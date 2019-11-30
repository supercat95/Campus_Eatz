import g4p_controls.*;

PImage phone;
PImage logo;
PImage bagels;

int screen = 0;

Welcome welcome;
LocationSelection selection;
TheShopping theShopping;
Checkout checkout;
Confirmation confirmation;

PApplet applet = this;

// ==============================================================
void setup() {
  size(500,685);
  phone = loadImage("iphone.png");
  logo = loadImage("logo.png");
  bagels = loadImage("Einstein_Bros._Bagels_logo.png");
  bagels.resize(width/4, width/4);
  
  initializeClasses();
  setVisibilitiesToFalse();
}

void draw() {
  background(255,255,255);
  image(phone,78,0,340,685);
  
  selectScreen();
  
  fill(255,255,255);
  fill(0,0,0);
  textSize(15);
  text(pmouseX, 15, 10);
  text(pmouseY, 15, 30);
}

// ==============================================================
void initializeClasses() {
  welcome = new Welcome();
  selection = new LocationSelection();
  theShopping = new TheShopping();
  checkout = new Checkout(); 
  confirmation = new Confirmation();
}

void setVisibilitiesToFalse() {
  welcome.startButton.setVisible(false);
  selection.locationDropList.setVisible(false);
  for (int i = 0; i < theShopping.theCheckboxes.length; i++) {
    theShopping.theCheckboxes[i].setVisible(false);
  }  
  theShopping.theFinishedShopping.setVisible(false);
  checkout.commandezBouton.setVisible(false);
  checkout.timeDropList.setVisible(false);
  for (int i = 0; i < checkout.checkboxes.length; i++) {
    checkout.checkboxes[i].setVisible(false);
  } 
}

// ----------------------------------------------------------------
void selectScreen() {
  switch(screen) {
    case 0:
      drawLogo(120,200,width/2);   
      welcome.startButton.setVisible(true);
      welcome.welcomeScreen();
      break;
    case 1:
      welcome.startButton.setVisible(false);
      
      drawLogo(187,50,width/4);
      selection.locationDropList.setVisible(true);
      selection.chooseALocation();
      break;
    case 2:
      selection.locationDropList.setVisible(false);
      
      drawLogo(width/4, 50, width/4);
      image(bagels, width/2.0, 50.0);
      for (int i = 0; i < theShopping.theCheckboxes.length; i++) {
        theShopping.theCheckboxes[i].setVisible(true);
      }  
      theShopping.theFinishedShopping.setVisible(true);
      theShopping.theSelection();
      theShopping.theDisplayPrices();
      break;   
    case 3:
      for (int i = 0; i < theShopping.theCheckboxes.length; i++) {
        theShopping.theCheckboxes[i].setVisible(false);
      }  
      theShopping.theFinishedShopping.setVisible(false);
      
      drawLogo(187,50,width/4);
      checkout.commandezBouton.setVisible(true);
      checkout.timeDropList.setVisible(true);
      for (int i = 0; i < checkout.checkboxes.length; i++) {
        checkout.checkboxes[i].setVisible(true);
      } 
      checkout.confirmYourOrder();
      checkout.orderDetails();
      checkout.chooseATime();
      checkout.chooseAPaymentOption();
      break;
    case 4:
      checkout.commandezBouton.setVisible(false);
      checkout.timeDropList.setVisible(false);
      for (int i = 0; i < checkout.checkboxes.length; i++) {
        checkout.checkboxes[i].setVisible(false);
      } 
     
      drawLogo(120,200,width/2);
      confirmation.successDialog();
      break;
  }
}

// ----------------------------------------------------------------
void drawLogo(float xPos, float yPos, float dimension) {
    image(logo, xPos,yPos, dimension,dimension);
}

// ----------------------------------------------------------------
void startButton_click(GButton button, GEvent event) {
    screen = 1;
}

void locationDropList_click(GDropList droplist, GEvent event) {
    screen = 2;   
}

void theFinishedShopping_theClick(GButton button, GEvent event) {
    screen = 3;
}

void commandezBouton_click(GButton button, GEvent event) {
    screen = 4;
}
