// I removed all the old comments.... see history to look at each version...
int value = 0;
int previousValue = 0;

void setup() {
  size(500, 500);
  // makes the background white...
  background(255);
}

//I'm gonna change this to circles and change their shape...
void draw() {
  
  fill(value);
  
  // notice how I'm multiplying the changing value by 0.7... what is it doing?
  ellipse(mouseX, mouseY, value*0.7, value*0.7);
}

  // I wanted to be able to "clear" the drawing when I clicked the mouse... this worked and
  // it much more interesting than what I tried first: background(255);
  void mouseClicked() {
   background(value); 
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
