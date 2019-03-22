-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------
local CostTextfield = display.newText( "Cost of Pizza", display.contentCenterX, display.contentCenterY - 100 , native.systemFont, 30 )
CostOfPizzaTextField:setFillColor( 87, 61, 178 )

local XtraLargePizza = display.newImageRect( "assets,sprites,XtraLargePizza", 406, 157 )
XtraLargePizza.x = 250
XtraLargePizza.y = 1300
XtraLargePizza.id = "Xtra Large Pizza"
display.setDefault("background", 0, 255, 0)

local LargePizza = display.newImageRect( "assets,sprites,LargePizza.png", 406, 157 )
LargePizza.x = 250
LargePizza.y = 1300
LargePizza.id = "Large Pizza"
display.setDefault("background", 0, 255, 0)

local NumOfToppingsTextfield = native.newTextField (display.contentCenterX, display.contentCenterY + 100, native.systemFont, 90 )
NumOfToppingsTextfield.id = "Number of Topppings"

function round(num, numDecimalPlaces)
  local mult = 10^(numDecimalPlaces or 2)
  return math.floor(num * mult + 0.5) / mult
end

local function XtraLargePizzaTouch (event)
local function LargePizzaTouch (event)

local XtraLargePizza
local LargePizza
local NumOfToppings



