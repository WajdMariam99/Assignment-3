------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------
local XtraLargeButton = display.newImageRect( "./XtraLargeButton.png", 125, 125 )
XtraLargeButton.x = 250
XtraLargeButton.y = 400
XtraLargeButton.id = "Xtra Large Button"


local LargeButton = display.newImageRect( "./LargeButton.png", 125, 125 )
LargeButton.x = 75
LargeButton.y = 400
LargeButton.id = "Large Button"

local NumOfToppingsTextfield = native.newTextField(160,185,155,40)
NumOfToppingsTextfield.id = "Number of Toppings"

local Topping = display.newText("Enter Number of Toppings", display.contentCenterX,display.contentCenterY -100, native.systemFont, 20)
Topping.id = "Toppings"




function round(num, numDecimalPlaces)
  local mult = 10^(numDecimalPlaces or 2)
  return math.floor(num * mult + 0.5) / mult
end





local function calculatePrice (event)
	
    local subtotal = 0
 
    local tax = 0

	local total = 0
	

	local showSubtotal = display.newText( "subtotal" .. string.format("%.2f", subtotal), display.contentCenterX + 20, display.contentCenterY + -420, native.systemFont, 80 )
     showSubtotal:setTextColor( 0, 0, 255)

	local showTax = display.newText( 'Tax: $' .. string.format("%.2f", tax), display.contentCenterX + 20, display.contentCenterY + -620, native.systemFont, 80 )
     showTax:setTextColor( 0, 0, 255 )
    
    local showTotal = display.newText( 'Total: $' .. string.format("%.2f", total), display.contentCenterX + 20, display.contentCenterY + -820, native.systemFont, 80 )
     showTotal:setTextColor( 0, 0, 255 )

end

local function LargeButtonTouch( event ) 
	
	Toppings = tonumber (NumOfToppingsTextfield.text)

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
print (tostring(subtotal))
    local errorText = display.newText('Too many Toppings', display.contentCenterX + 20, display.contentCenterY - 600, native.systemFont, 70)
errorText:setTextColor ( 0, 0, 255)
    end 

end

local function XtraLargeButtonTouch (event)
	
	Toppings = tonumber (NumOfToppingsTextfield.text)

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



LargeButton:addEventListener( "touch" , LargeButtonTouch)

XtraLargeButton:addEventListener( "touch" , XtraLargeButtonTouch)


 

