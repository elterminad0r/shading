int n;

void setup() {
  size(1600, 800);
  background(0);
  n = 3;
}

void addLine() {
  float fact = random(1);
  float y = random(height);
  float x = fact * width;
  float h = fact * 255;
  float th = random(HALF_PI - 0.2, HALF_PI + 0.2);
  float s = n * random(5, 6);
  
  stroke(h, 255, 255);
  
  pushMatrix();
  translate(x, y);
  rotate(th);
  line(0, 0, 0, s);
  popMatrix();
  
}

void draw() {
  colorMode(HSB, 255, 255, 255);
  for (int i = 0; i < 2000; i++) {
    addLine();
  }
}

void keyPressed() {
  switch(keyCode) {
    case 'R':
      setup();
      break;
    case UP:
      n++;
      break;
    case DOWN:
      n--;
      break;
  }
}