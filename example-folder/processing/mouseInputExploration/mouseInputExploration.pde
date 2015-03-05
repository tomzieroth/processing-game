// I removed all the old comments.... see history to look at each version...
int value = 0;
int previousValue = 0;

void setup() {
  size(500, 500);
}

//I'm gonna change this to circles and change their shape...
void draw() {
  
  fill(value);
  
  // notice how I'm multiplying the changing value by 0.7... what is it doing?
  ellipse(mouseX, mouseY, value*0.7, value*0.7);
}

  void mouseMoved() {
  if (value >= previousValue && value <= 255) {
    previousValue = value;
    value = value + 5;
  }
 
  else {
    previousValue = value; 
    value = value - 5;
  }
  
  if (value <= 0) {
    value = 5;
  }
}
