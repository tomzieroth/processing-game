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
