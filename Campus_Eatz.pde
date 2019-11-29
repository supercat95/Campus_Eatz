PImage phone;

int screen;

Welcome welcome;
Selection selection;
Checkout checkout;


void setup() {
  size(340,685);
  phone = loadImage("iphone.png");
 
  welcome = new Welcome;
  selection = new Selection;
  checkout = new Checkout;
  
  screen = 1;
}

void draw() {
  image(phone,0,0,340,685);
   
  selectScreen();
}

void selectScreen() {
  switch(screen) {
    case 0:
      welcome.drawWelcomeScreen();
      break;
    case 1:
      selection.drawtheSelectionScreen();
      break;
    case 2:
      checkout.drawTheCheckoutScreen();
      break;    
  }
}
