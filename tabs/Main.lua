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
    
    manPosition = vec2(WIDTH/2, HEIGHT/2)
end

-- This function gets called once every frame
function draw()
    
    -- local varaibles
 
    manPosition.x = manPosition.x + (Gravity.x * 10)
    -- This sets a dark background color 
    background(0, 0, 0, 255)
    
    sprite("SpaceCute:Background", 512, 384, 1024, 768)
    sprite("SpaceCute:Beetle Ship", manPosition.x, manPosition.y)
end


