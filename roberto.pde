import processing.opengl.*;

import oscP5.*;
import netP5.*;
float initBox = 200;
float r = 0;
OscP5 oscP5;
Face face = new Face();
void setup() {
   size(640,480,OPENGL);
   oscP5 = new OscP5(this, 8338);
   lights();
   stroke(0,255,0);
   fill(0);
}

void draw() {
  background(0);
  fill(0);
  translate(width/2,height/3,-initBox);
  scale(face.poseScale/2);
  rotateX(2*-face.poseOrientation.x);
  rotateY(2*-face.poseOrientation.y);
  rotateZ(2*face.poseOrientation.z);
  
  
  box(initBox);
  pushMatrix();
  translate(0,initBox*3.1);
  box(initBox, 5*initBox, initBox);
  pushMatrix();
  translate(.8*initBox,0);
  box(.4*initBox,4.5*initBox,.4*initBox);
  popMatrix();
  pushMatrix();
  translate(-.8*initBox,0);
  box(.4*initBox,4.5*initBox,.4*initBox);
  popMatrix();
  popMatrix();
  pushMatrix();
  translate(0,.2*initBox,.55*initBox);
  box(.4*initBox,.05*initBox,.1*initBox);
  
  box(.4*initBox,.05*initBox,.1*initBox);
  popMatrix();
  pushMatrix();
  translate(0,0,.55*initBox);
  box(.2*initBox,.2*initBox,.1*initBox);
  
  box(.2*initBox,.2*initBox,.1*initBox);
  popMatrix();
  pushMatrix();
  translate(.55*initBox,0);
  box(.1*initBox,.6*initBox,.6*initBox);
  popMatrix();
  pushMatrix();
  translate(-.55*initBox,0);
 box(.1*initBox,.6*initBox,.6*initBox);
  popMatrix();
  fill(r,0,0);
  pushMatrix();
  translate(-.25*initBox,-8*face.eyebrowLeft,.55 * initBox);
  box(.2*initBox,.2*initBox,.1*initBox);
  popMatrix();
  pushMatrix();
  translate(.25*initBox,-8*face.eyebrowLeft,.55 * initBox);
  box(.2*initBox,.2*initBox,.1*initBox);
  popMatrix();
  
  r = map(face.mouthHeight,1,9,0,255);
  //transalate(0,face.eyeLeft);
  
}

void oscEvent(OscMessage m) {
  face.parseOSC(m);
}
