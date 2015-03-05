// Hey there, it's Matt  I got this from the tutorial 
// available here:
// https://processing.org/reference/mousePressed_.html
//
//  I'm going to change this file incrementally and commit
//  each change to the repository.  You should look through
//  all the versions in the history to see how this file changed
//  I will track my changes with comments.
//  Ready?
//
//  Let's do this!
//
//
// Click within the image to change 
// the value of the rectangle


/*
If you run this basic sketch its pretty boring... it just changes the color of a
rectangle on the small screen.  I'm going to make the size of the canvas bigger and
see if I can get the rectangle to move around on the screen. 

You should run this one to see what it does before I make any changes.

*/

// this is just the starting amount for the variable "value" it looks like this will be
// the variable used to change the gresyscale value (color) of the rectangle.
int value = 0;

// I need to add this void setup() so I can get the canvas ready.  If you don't do this
// then Processing will just make the smallest canvas it can based on the shapes/objects
// you tell it to draw.
void setup() {
  // I'm just gonna start with 500 pixels wide x 500 pixels high
  // you can read more about this option here: https://processing.org/reference/size_.html
  size(500, 500);
}


void draw() {
  fill(value);
  // the old line of code looked like this: 
  // rect(25, 25, 50, 50);
  
  // I'm going to change it so that the position of the rectangle changes
  // as the mouse gets moved around.  
  rect(mouseX, mouseY, 50, 50);
}

// I want the color to change...
//void mousePressed() {
  
  void mouseMoved() {
   
  // this old code gave us two color options: white or black.  I want a range of grey
  //if (value == 0) {
  //  value = 255;
  // } else {
  //  value = 0;
  //}
  
  value = value + 5; 
  if (value > 255) {
    value = 0;
  }
}
