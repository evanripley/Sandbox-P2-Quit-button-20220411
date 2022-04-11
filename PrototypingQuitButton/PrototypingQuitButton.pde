//global variables
int appWidth, appHeight;
float quitButtonX,quitButtonY,quitButtonWidth,quitButtonHeight;
//
void setup() 
{
  size(400,800);
  //fullScreen();
  //landscape
  String landscape = "Your eatin good!";
  String portrait = "You srs? Turn your phone!";
  String displayOrientation = ( width >= height ) ? landscape : portrait;
  if (displayOrientation==portrait) println(displayOrientation);
  if (displayOrientation==landscape) appWidth = width;
  if (displayOrientation==landscape) appHeight = height;
  println(appWidth, appHeight); //be null if portrait until landscape
}
//end setup
void draw() 
{
  rect(quitButtonX,quitButtonY,quitButtonWidth,quitButtonHeight);
}
//end draw
void keyPressed() 
{
  //quit button
  if ( key=='Q' || key=='q'  ) exit(); //keyboard is seperated on key-variables: key and keyCode
}
//end key
void mousePressed() 
{
  
}
//end mouse
//
//end
