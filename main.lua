display.setDefault( "background", 255/255, 102/255, 0/255 )

local image = display.newImageRect( "Assets/age.png", 130, 130 )
image.x = 160
image.y = 60

local calculateButton = display.newImageRect( "Assets/enterbutton.PNG", 200, 100 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY
calculateButton.id = "calculate button"

print( "Try and guess my age " )

answerAsNumberField = native.newTextField( display.contentCenterX, display.contentCenterY + 150, 225, 40 )
answerAsNumberField.id = "Answer textField"

responseText = display.newText( "Try and guess my age!", 160, 150, native.systemFont, 20 )
responseText:setFillColor( 255/255, 255/255, 255/255 )

local function calculateButtonTouch( event )

ageToGuess = 15
answerAsNumber = tonumber(answerAsNumberField.text)

if answerAsNumber > ageToGuess then
  	
  	print("")
  	print (ageToGuess)
    print( "I'm younger than this!" )
    print( "Please Try Again!!!" )
    responseText.text = "I'm younger than this! Try Again!"

elseif answerAsNumber < ageToGuess then 

	print("")
	print (ageToGuess)
	print( "I'm older than this.")
	print( "Please Try Again!!!" )
	responseText.text = "I'm older than this! Try Again!"

else 
	
	responseText.text = "You guessed my age!"
	print ("")
	print (ageToGuess)
	print("You guessed my age!")

end

end

calculateButton:addEventListener( "touch", calculateButtonTouch )