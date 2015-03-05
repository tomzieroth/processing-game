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

// I'm adding this so I can compare value to previousValue below.  This will allow me to 
// check to see if I'm counting up or counting down...
int previousValue = 0;

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

  // I like the mouseMoved() better than mouseClicked() because it makes for 
  // smoother transitions. But now I'd like my colors to change in a different way...
  
  // I'd like my colors to transition from black --> white and then --> black...
  //  in the previous version of the code the colors jumped quickly from white back to black
  //  let's change that.
  void mouseMoved() {
  
   /*
   So the following chunck gets a bit complex bt basically what I did was setup an
   additional variable called previousValue so that I could compare the current value
   to the previous.  This would tell me if I was counting up or counting down...
   
   In the event that I'm counting up it looked something like this: value = value + 5;
   if I keep doing that pretty soon value will be bigger than 255 and then weird things
   start to happen because you can only have values between 0 and 255. So I needed a way to
   start counting down... this would allow the colors to smoothly transition from black
   to white and then back to black.  
   
   If you look at previous versions of this code you can see how they handled it...
   they basically just checked to see if value was bigger than 255 and if it was they just
   reset it back to zero... and that works fine but it didn't give me the color behavior I
   wanted.
   
   So!!!
   
   I compare value to previousValue.  If value is bigger than previousValue then I must
   be counting up... right?  So as long as I'm counting up but not getting too big I will 
   just keep counting up...
   
   */
  
  // This is the "counting up" part.  Notice how it has the && value <=255
  // this is called a "compound conditional" statement and it checks for two things instead
  // of just one.  
  if (value >= previousValue && value <= 255) {
    previousValue = value;
    value = value + 5;
  }
  
  // If either of those two cases above aren't true then I must be counting down 
  // so that's what this part does... it counts down...
  else {
    previousValue = value; 
    value = value - 5;
  }
  
  // I didn't know that I needed this at first but if its not here weird things happen.  
  // try removing it and watch what happens...
  
  // I put this here to make sure I don't count down too far...  essentially it stops the 
  // countdown at 0 
  if (value <= 0) {
    value = 5;
  }
 
}
