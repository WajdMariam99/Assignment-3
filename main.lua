-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------
local CostTextfield = display.newText( "Cost of Pizza", display.contentCenterX, display.contentCenterY - 100 , native.systemFont, 30 )
CostOfPizzaTextField:setFillColor( 87, 61, 178 )

local XtraLargePizza = display.newImageRect( "./assets,sprites,XtraLargePizza.PNG", 406, 157 )
XtraLargePizza.x = 250
XtraLargePizza.y = 1300
XtraLargePizza.id = "Xtra Large Pizza"


local LargePizza = display.newImageRect( "./assets,sprites,LargePizza.PNG", 406, 157 )
LargePizza.x = 250
LargePizza.y = 1300
LargePizza.id = "Large Pizza"

local NumOfToppingsTextfield = native.newTextField (display.contentCenterX, display.contentCenterY + 100, native.systemFont, 90 )
NumOfToppingsTextfield.id = "Number of Topppings"

local ToppingTextfield = display.newText("Enter Number of Toppings", display.contentCenterX,display.contentCenterY -90, native.systemFont, 90)
ToppingTextfield.id = "ToppingTextfield"
ToppingTextfield:setFillColor ( 0, 255, 0 )

function round(num, numDecimalPlaces)
  local mult = 10^(numDecimalPlaces or 2)
  return math.floor(num * mult + 0.5) / mult
end

local function calculatePrice (event)
	local tax = subtotal * 1.13

local function onLargetouch( event )
	
	Toppings = tonumber (NumOfToppingsTextfield)

	if toppings == 1
end





