//global variables
int appWidth, appHeight;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color yellow=#FFFF00, purple=#FF00FF, resetWhite=#FFFFFF, buttonColour;
//
void setup() 
{
  //size(800,400);
  fullScreen();
  //landscape
  String landscape = "Your eatin good!";
  String portrait = "You srs? Turn your phone!";
  String displayOrientation = ( displayWidth >= displayHeight ) ? landscape : portrait;
  if (displayOrientation==portrait) println(displayOrientation);
  if (displayOrientation==landscape) appWidth = displayWidth;
  if (displayOrientation==landscape) appHeight = displayHeight;
  println(appWidth, appHeight); //be null if portrait until landscape
  //
  //
  int smallerDisplayDimension = appHeight;
  int canvasCenter = smallerDisplayDimension*1/2;
  quitButtonX = (appWidth*1/2)-appWidth*1/4;
  quitButtonY = canvasCenter-appHeight*1/4;
  quitButtonWidth = appWidth*1/2;
  quitButtonHeight = appHeight*1/2;
}
//end setup
void draw() 
{
  if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) {
    buttonColour = yellow;
  } else {
    buttonColour = purple;
  }
  buttonColour = purple; //yellow
  fill(buttonColour);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  fill(resetWhite);
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
