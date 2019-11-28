PImage phone;

void setup() {
  size(340,685);
  phone = loadImage("iphone.png");
}

void draw() {
  image(phone,0,0,340,685);
}
