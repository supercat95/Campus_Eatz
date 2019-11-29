import g4p_controls.*;

PImage phone;
PImage logo;

int screen;

Welcome welcome;
Selection selection;
Checkout checkout;

PApplet applet = this;

void setup() {
  size(500,685);
  phone = loadImage("iphone.png");
  logo = loadImage("logo.png");
  
  welcome = new Welcome();
  selection = new Selection();
  checkout = new Checkout(applet);
  
  screen = 1;
}

void draw() {
  background(255,255,255);
  image(phone,width/7,0,340,685);
  
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
      welcome.drawWelcomeScreen();
      break;
    case 1:
      drawLogo(width/2.75,40,width/4);
      g4p_controls.GDropList.GDropList(applet, width/2.0, 182.0, width/2.0, 450.0,15); 
      g4p_controls.GDropList.setItems(selection.locations, 0);
      selection.drawtheSelectionScreen();
      break;
    case 2:
      checkout.drawTheCheckoutScreen();
      break;    
  }
}

void drawLogo(float xPos, float yPos, float dimension) {
    image(logo, xPos,yPos, dimension,dimension);
}
