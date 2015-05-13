// Created 2015.05.05
// by William Ismael for WILLPOWER STUDIOS
// Creative Commons License 
// If you use my code give me full credit on my work by mentioning my name + website #BusinessEthics #Respect #Honor 
// If you add cool stuff to it please share it with me :)
 

////////////////////


import processing.video.*;

import ddf.minim.*;
import ddf.minim.analysis.*;

import processing.pdf.*;


////////////////////


Minim minim;
AudioInput in;


float howBig,strokeOpacity;

// Variable for capture device
Capture cam;

boolean record;


////////////////////

void setup() {
  size( 1440,850 ); 
  background( 0 );
  smooth();
  colorMode(RGB, 255, 255, 255, 100);

  String[] cameras = Capture.list();

   minim = new Minim(this);
  // use the getLineIn method of the Minim object to get an AudioInput
  in = minim.getLineIn();
  
  if (cameras.length == 0) {
    println("There are no cameras available for capture.");
    exit();
  } else {
    println("Available cameras:");
    for (int i = 0; i < cameras.length; i++) {
      println(cameras[i]);
    }
    
    // The camera can be initialized directly using an 
    // element from the array returned by list():
    //cam = new Capture(this, cameras[0]);
    cam = new Capture( this, 1440, 900, "Logitech Camera", 30);
    cam.start();     
  }      

  //cursor(CROSS);
}

void draw() {

  if (record) {
    // Note that #### will be replaced with the frame number. Fancy!
    beginRecord(PDF, "frame-####.pdf"); 
  }

  
   if (cam.available() == true) {
    cam.read();
     
       // Look up the RGB color in the source image
      cam.loadPixels();


   // Mic 
   float sound = in.mix.level () * random( 50 );




   for (int   i = 0; i < 1500; i+=36) {
    for (int j = 0; j < 900; j+=36) {

      howBig = random(70);
      strokeOpacity = 225;

      int colorz01 = cam.get( i+18,j+18 );
      int colorz02 = cam.get( i+18,j+18 );

      pushMatrix();

      translate( (width-i-75),j );

      fill( colorz01 );
      stroke( colorz01,strokeOpacity );
      strokeWeight( 2 );

      rect( 1,1,34,34 );

      popMatrix();

    }
  }



      if ( key=='1' ) {

      for (int   i = 0; i < 1500; i+=36) {
        for (int j = 0; j < 900; j+=36) {

      pushMatrix();
      translate( (width-i-75),j );

      int colorz = cam.get( i+18,j+18 );
      
      fill( colorz );
      stroke( colorz,strokeOpacity );
      rect( 0,0,35,35 );

      popMatrix();

      }
    }
  }


if ( key=='2' ) {

        for (int   i = 0; i < 1500; i+=36) {
    for (int j = 0; j < 900; j+=36) {

      pushMatrix();
      translate( (width-i-75),j );

      int colorz01 = cam.get( i+ 8,j+8 );
      int colorz02 = cam.get( i+29,j+29 );
      
      fill( colorz01 );
      stroke( colorz01,strokeOpacity );
      rect( 0,0,17,17 );
      fill( colorz02 );
      stroke( colorz02,strokeOpacity );
      rect( 18,18,17,17 );

      popMatrix();

      }
    }
  }


if ( key=='3' ) {

        for (int   i = 0; i < 1500; i+=36) {
    for (int j = 0; j < 900; j+=36) {

      pushMatrix();
      translate( (width-i-75),j );

      int colorz01 = cam.get( i+12,j+30 );
      int colorz02 = cam.get( i+30,j+12 );
      
        //01
      fill( colorz01 );
      stroke( colorz01,strokeOpacity );
      triangle( 0,0,0,36,36,36 );

      //02
      fill( colorz02 );
      stroke( colorz02,strokeOpacity );
      triangle ( 0,0,36,0,36,36 );

      popMatrix();

      }
    }
  }


    if ( key=='4' ) {

        for (int   i = 0; i < 1500; i+=54) {
    for (int j = 0; j < 900; j+=54) {

      pushMatrix();
      translate( (width-i-90),j );
      
      int colorz01 = cam.get( i+13,j+ 7 );
      int colorz02 = cam.get( i+40,j+ 7 );
      int colorz03 = cam.get( i+40,j+21 );
      int colorz04 = cam.get( i+40,j+33 );
      int colorz05 = cam.get( i+33,j+39 );
      int colorz06 = cam.get( i+13,j+46 );
      int colorz07 = cam.get( i+13,j+33 );
      int colorz08 = cam.get( i+13,j+21 );
      int colorz09 = cam.get( i+27,j+27 );

      fill( colorz01 );
      stroke( colorz01,25 );
      triangle( 0,0,27,0,27,27 );
      fill( colorz02 );
      stroke( colorz02,25 );
      triangle ( 27,0,54,0,27,27 );
      fill( colorz03 );
      stroke( colorz03,25 );
      triangle ( 54,0,54,27,27,27 );
      fill( colorz04 );
      stroke( colorz04,25 );
      triangle ( 54,27,54,54,27,27 );
      fill( colorz05 );
      stroke( colorz05,25 );
      triangle( 54,54,27,54,27,27 );
      fill( colorz06 );
      stroke( colorz06,25 );
      triangle ( 27,54,0,54,27,27 );
      fill( colorz07 );
      stroke( colorz07,25 );
      triangle ( 0,27,0,54,27,27 );
      fill( colorz08 );
      stroke( colorz08,25 );
      triangle ( 0,0,0,27,27,27 );

      popMatrix();

      }
    }
  }


  if ( key=='5' ) {

        for (int   i = 0; i < 1500; i+=72) {
    for (int j = 0; j < 900; j+=72) {

      pushMatrix();
      translate( (width-i-75),j );
      
      int colorz01 = cam.get( i+ 1,j+18 );
      int colorz02 = cam.get( i+18,j+18 );
      int colorz03 = cam.get( i+35,j+18 );
      int colorz04 = cam.get( i+01,j+54 );
      int colorz05 = cam.get( i+18,j+54 );
      int colorz06 = cam.get( i+35,j+54 );

      int colorz07 = cam.get( i+ 1,j+18 );
      int colorz08 = cam.get( i+18,j+18 );
      int colorz09 = cam.get( i+35,j+18 );
      int colorz10 = cam.get( i+01,j+54 );
      int colorz11 = cam.get( i+18,j+54 );
      int colorz12 = cam.get( i+35,j+54 );

      
      strokeOpacity = 55;
      strokeWeight( 2 );
      //noStroke();
      fill( colorz01 );
      stroke( colorz01,strokeOpacity );
      triangle( 0,0,18,0,0,36 );
      fill( colorz02 );
      stroke( colorz02,strokeOpacity );
      triangle( 0,36,36,36,18,0 );
      fill( colorz03 );
      stroke( colorz03,strokeOpacity );
      triangle( 18,0,36,0,36,36 );
      fill( colorz04 );
      stroke( colorz04,strokeOpacity );
      triangle( 0,36,0,72,18,72 );
      fill( colorz05 );
      stroke( colorz05,strokeOpacity );
      triangle( 0,36,18,72,36,36 );
      fill( colorz06 );
      stroke( colorz06,strokeOpacity );
      triangle( 36,36,18,72,36,72 );

      fill( colorz03 );
      stroke( colorz03,strokeOpacity );
      triangle( 36,0,54,0,36,36 );
      fill( colorz02 );
      stroke( colorz02,strokeOpacity );
      triangle( 54,0,36,36,72,36 );
      fill( colorz01 );
      stroke( colorz01,strokeOpacity );
      triangle( 54,0,72,0,72,36 );
      fill( colorz06 );
      stroke( colorz06,strokeOpacity );
      triangle( 36,36,36,72,54,72 );
      fill( colorz05 );
      stroke( colorz05,strokeOpacity );
      triangle( 36,36,54,72,72,36 );
      fill( colorz04 );
      stroke( colorz04,strokeOpacity );
      triangle( 72,36,54,72,72,72 );

      popMatrix();

      }
    }
  }


  if ( key=='6' ) {

        for (int   i = 0; i < 1500; i+=36) {
    for (int j = 0; j < 900; j+=36) {

      pushMatrix();
      translate( (width-i-75),j );

      int colorz01 = cam.get( i+18,j+18 );
      
      ellipseMode(CENTER);
      //01
      fill( colorz01,125 );
      stroke( colorz01,strokeOpacity );
      ellipse( 0,0,34,34);

      popMatrix();

      }
    }
  }


  if ( key=='7' ) {

        for (int   i = 0; i < 1500; i+=36) {
    for (int j = 0; j < 900; j+=36) {

      strokeOpacity = 25;

      pushMatrix();
      translate( (width-i-75),j );

      int colorz01 = cam.get( i+18,j+18 );
      
      ellipseMode(CENTER);
      //01
      fill( colorz01,125 );
      stroke( 255,strokeOpacity );
      strokeWeight( 1 );
      //noStroke();
      ellipse( 0,0,36,36 );

      popMatrix();

      }
    }
  }

  if ( key=='8' ) {

        for (int   i = 200; i < 1240; i+=36) {
    for (int j = 0; j < 900; j+=36) {

      strokeOpacity = 25;

      pushMatrix();
      translate( (width-i-75),j );

      int colorz01 = cam.get( i+18,j+18 );
      
      ellipseMode(CENTER);
      //01
      fill( colorz01,125 );
      stroke( 255,strokeOpacity );
      strokeWeight( 1 );
      //noStroke();
      ellipse( 0,0,36,36 );

      popMatrix();

      }
    }

    for (int   i = 0; i < 200; i+=36) {
    for (int j = 0; j < 900; j+=36) {

      strokeOpacity = 25;

      pushMatrix();
      translate( (width-i-75),j );

      int colorz01 = cam.get( i+18,j+18 );
      
      ellipseMode(CENTER);
      //01
      fill( colorz01,125 );
      noStroke();
      rect( 0,0,248,36 );

      popMatrix();

      }
    }

    for (int   i = 1240; i > 1440; i+=36) {
    for (int j = 0; j < 900; j+=36) {

      strokeOpacity = 25;

      pushMatrix();
      translate( (width-i-75),j );

      int colorz01 = cam.get( i+18,j+18 );
      
      ellipseMode(CENTER);
      //01
      fill( colorz01,125 );
      noStroke();
      rect( 0,0,248,36 );

      popMatrix();

      }
    }
  }



  noCursor();

  }

   if (record) {
      endRecord();
      record = false;
    }

}

// Generate Vector Art
void mousePressed() {
  record = true;
}

