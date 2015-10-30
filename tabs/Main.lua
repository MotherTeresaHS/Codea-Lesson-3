-- Lesson3

-- Created by: Mr Coxall
-- Created on: Nov 2015
-- Created for: ICS2O
-- This program displays an image and moves it around the screen

-- variables local to entire file
local manPosition = vec2()

-- Use this function to perform your initial setup
function setup()
    -- setup display and drawing functions
    supportedOrientations(LANDSCAPE_ANY)    
    displayMode(FULLSCREEN)
    noFill()
    noSmooth()
    noStroke()
    pushStyle()
    
    -- get the width and height of the device you are on
    -- then divide in 1/2 to get device center position
    manPosition = vec2(WIDTH/2, HEIGHT/2)
end

-- This function gets called once every frame
function draw()
    -- local varaibles
 
    -- this gets the "x" input from the iPad accelerometer
    manPosition.x = manPosition.x + (Gravity.x * 10)
    
    sprite("SpaceCute:Background", 512, 384, 1024, 768)
    sprite("SpaceCute:Beetle Ship", manPosition.x, manPosition.y)
end