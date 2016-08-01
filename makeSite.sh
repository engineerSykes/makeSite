#!/bin/bash

# Script to create the directory structure
# and base files for a new websit

mkdir $1
newSite=$1
baseDir=$PWD

#create the base directories
makeDirStructure(){
  mkdir /var/www/$newSite/html
  mkdir /var/www/$newSite/images
  mkdir /var/www/$newSite/js
  mkdir /var/www/$newSite/css
  mkdir /var/www/$newSite/php
}

#create the base empty files
makeFiles(){
  cd $baseDir/$newSite/html
  touch index.html
  cd $baseDir/$newSite/js
  touch main.js
  cd $baseDir/$newSite/css
  touch style.css
  cp -r /home/$SUDO_USER/Documents/jsLibs/ $baseDir/$newSite/
}

makeDirStructure
makeFiles

#Put into index.html to make file skeleton
cat <<EOT >> $baseDir/$newSite/html/index.html
<!--  Author:       Your Name Here
//    Date:         --/--/--
//    File name:    ../js/main.js
//    Project Name: --enter--
//    version:      ##.#### -->


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
  <head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="../css/style.css" type="text/css" media="screen" />
    <script src="../js/main.js">
    </script>
  </head>
  <body>
    <p id="test">This is some test text to make sure that there is output to the screen</p>
    
    <!--
    Uncomment this area to add p5.js and addons to be included
    <script type="text/javascript" src="../jsLibs/p5.dom.js"></script>
    <script type="text/javascript" src="../jsLibs/p5.js"></script>
    <script type="text/javascript" src="../jsLibs/p5.sound.js"></script>
    -->
    
  </body>
</html>
EOT

# create the base style.css file
cat <<EOT >> $baseDir/$newSite/css/style.css
-- Author:       Your Name Here
-- Date:         --/--/--
-- File name:    ../css/style.css
-- Project Name: --enter--
-- version:      ##.####

* {
    margin: 0px;
    padding: 0px;
}

body, html {
    background: #fff;
    color:      #000;
}

canvas {
    border: #000 2px double;
    background: #ccc;
}
EOT

#create a base main.js file
cat <<EOT >> $baseDir/$newSite/js/main.js
// Author:       Your Name Here
// Date:         --/--/--
// File name:    ../js/main.js
// Project Name: --enter--
// version:      ##.####
//
// Create Variables here
//
// var this = 0;
// var that = 500;
//
// Here is setup for the base p5/process.js 'sketches'
//
// Global Variables go here
// var global = 0;
//
function setup() {

//
// initialization code goes here. Code that runs ONCE
//

}

function draw() {

//
//  loop code goes inside here, the draw function
//

}
 
EOT

## uncomment if you wish to have the new files and driectories listed after they have been made
## ls $baseDir/$newSite/html
## ls $baseDir/$newSite/js
## ls $baseDir/$newSite/css
