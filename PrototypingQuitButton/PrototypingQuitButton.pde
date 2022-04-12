//Global Variables
int appWidth, appHeight;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color yellow=#FFFF00, purple=#FF00FF, resetWhite=#FFFFFF, buttonColour; //Notice Nightmode BLUE Values
//
void setup()
{
  fullScreen(); //displayWidth, displayHeight
  //Landscape, not portrait nor square
  String landscape = "Your eatin good!";
  String portrait = "You srs? Turn your phone!";
  String displayOritentation = ( displayWidth >= displayHeight ) ? landscape : portrait ;
  if ( displayOritentation==portrait ) println ( displayOritentation );
  if ( displayOritentation==landscape ) appWidth = displayWidth; //option displayWidth
  if ( displayOritentation==landscape ) appHeight = displayHeight; //option displayHeight
  //println (appWidth, appHeight);
  //
  //Population
  int centerX = appWidth*1/2;
  int centerY = appHeight*1/2;
  quitButtonX = centerX - appWidth*1/4; //1/4 on one-half, 1/4 on other half
  quitButtonY = centerY - appHeight*1/4;
  quitButtonWidth = appWidth*1/2;
  quitButtonHeight = appHeight*1/2;
}//End setup
//
void draw()
{
  //DisplayOrientation Finishing Code
  //
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) { //Hover Over Effect
    buttonColour = yellow;
  } else {
    buttonColour = purple;
  }//End Hover Over Effect
  //
  //alternate verification that mousex and y is on the button
  println("x-value", quitButtonX, mouseX, quitButtonX+quitButtonWidth, "\t\t look at middle value");
  println("x-value", quitButtonY, mouseY, quitButtonY+quitButtonHeight, "\t\t look at middle value");
  //
  fill(buttonColour);
  rect( quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight );
  fill(resetWhite); //Not night mode compatible, must change
}//End draw
//
void keyPressed()
{
  //Quit KeyBoard Button
  if ( key=='Q' || key=='q' ) exit(); //Key Board si separated on key-variables: key & keyCode
}//End keyPressed
//
void mousePressed() {
}//End mousePressed
//
//End Main Program or Driver
