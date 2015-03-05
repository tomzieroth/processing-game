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

int value = 0;

void draw() {
  fill(value);
  rect(25, 25, 50, 50);
}

void mousePressed() {
  if (value == 0) {
    value = 255;
  } else {
    value = 0;
  }
}
