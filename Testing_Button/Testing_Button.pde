import g4p_controls.*;

int selectedState = 0;

PApplet applet = this;

Clasz clasz;

void setup() {
  size(400, 240, JAVA2D);
  textSize(40);
  clasz = new Clasz();
}

void draw() {
  background(60, 60, 220);
  fill(0);
  text(selectedState, width/2 - 10, height/2 + 10);
}

void opt1_click(GButton button, GEvent event) { //_CODE_:option1:965250:
    selectedState = 1;
  } //_CODE_:option1:965250:
