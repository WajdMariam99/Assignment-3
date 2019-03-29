---------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------
local Cost = display.newText( "Cost of Pizza", display.contentCenterX, display.contentCenterY - 150 , native.systemFont, 30 )
Cost.id = "Cost of Pizza"

local XtraLargeButton = display.newImageRect( "./XtraLargeButton.png", 125, 125 )
XtraLargeButton.x = 250
XtraLargeButton.y = 400
XtraLargeButton.id = "Xtra Large Button"


local LargeButton = display.newImageRect( "./LargeButton.png", 125, 125 )
LargeButton.x = 75
LargeButton.y = 400
LargeButton.id = "Large Button"

local NumOfToppingsTextfield = native.newTextField(160,250,150,40)
NumOfToppingsTextfield.id = "Number of Toppings"

local Topping = display.newText("Enter Number of Toppings", display.contentCenterX,display.contentCenterY -50, native.systemFont, 20)
Topping.id = "Toppings"


function round(num, numDecimalPlaces)
  local mult = 10^(numDecimalPlaces or 2)
  return math.floor(num * mult + 0.5) / mult
end

local Cost
local XtraLargeButton
local LargeButton
local NumOfToppingsTextfield
local Topping

local function calculatePrice (event)
	local tax = subtotal * 1.13
end

local function LargeButtonTouch( event ) 
	
	Toppings = tonumber (NumOfToppingsTextfield)

	if Toppings == 1 then
		subtotal = 6 + 1
		calculatePrice ()

	elseif Toppings == 0 then
		subtotal = 6 + 0
		calculatePrice ()

	elseif Toppings == 2 then
		subtotal = 6 + 1.75
		calculatePrice ()

	elseif Toppings == 3 then
		subtotal = 6 + 2.5
		calculatePrice ()
	
	elseif Toppings == 4 then
		subtotal = 6 + 3.35
		calculatePrice ()

    local errorText = display.newText('Too many Toppings', display.contentCenterX + 20, display.contentCenterY - 600, native.systemFont, 70)
errorText:setTextColor ( 0, 0, 255)
    end 

end

local function XtraLargeButtonTouch (event)
	
	Toppings = tonumber (NumOfToppingsTextfield)

	if Toppings == 1 then 
		subtotal = 10 + 1
		calculatePrice ()

    elseif Toppings == 0 then
    	subtotal = 10 + 0
    	calculatePrice ()

    elseif Toppings == 2 then
    	subtotal = 10 + 1.75
    	calculatePrice ()

    elseif Toppings == 3 then
    	subtotal = 10 + 2.5
    	calculatePrice ()

    elseif Toppings == 4 then
    	subtotal = 10 + 3.35
    	calculatePrice ()

    local errorText = display.newText('Too many Toppings', display.contentCenterX + 20, display.contentCenterY - 600, native.systemFont, 70)
errorText:setTextColor ( 0, 0, 255)
    end 

end 


LargeButton: addEventListener ("touch" , onLargeButtonTouch)

XtraLargeButton: addEventListener ("touch" , onXtraLargeButtonTouch)
 





