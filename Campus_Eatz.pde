import g4p_controls.*;

PImage phone;
PImage logo;

int screen = 0;

Welcome welcome;
Selection selection;
Checkout checkout;

PApplet applet = this;

void setup() {
  size(500,685);
  phone = loadImage("iphone.png");
  logo = loadImage("logo.png");
  
  checkout = new Checkout();  
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
      selection = new Selection();
      break;
    case 2:
      checkout.drawTheCheckoutScreen();
      break;    
  }
  println(screen);
}

void drawLogo(float xPos, float yPos, float dimension) {
    image(logo, xPos,yPos, dimension,dimension);
}

void startButton_click(GButton button, GEvent event) {
    screen = 1;
}
