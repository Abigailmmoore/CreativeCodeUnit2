require("L5")

--Size of the flower center
centerSize = 1

--Determines whether flower center is shrinking or growing
shrinkGrow = 0.3

--X Position of the ladybug
ladyX = 0.5

function setup()
  size(600, 800)

  -- Set the program title
  windowTitle("Animated Flower")

  describe('A simple flower animation')
end

function draw()
  background(130,200,229)

  noStroke()

  --Night sky background that changes depending on Y position of the mouse.
  fill(17,17,132,(mouseY/height)*255)
  rect(0, 0, width, height)

  --Brown ground
  fill(101,67,33)
  rect(0, height*0.9, width, height*0.1)

  --Green Flower Stem
  fill(76,187,23)
  rect(width*0.45, height*0.35, width*0.1, height*0.55)

  --Pink Flower Petals
  fill(237,128,233)
  circle(width/2, height*0.35, ((height + width)/2)*0.50)
  
  --Yellow Flower Center
  fill(255,237,41)
  circle(width/2, height*0.35, ((height + width)/2)*0.30 + centerSize)

  --Ladybug Body
  fill(219,45,67)
  arc(width*ladyX, height*0.9, ((height + width)/2)*0.20, ((height + width)/2)*0.15, PI, PI + PI)

  --Ladybug Head
  fill(37,37,37)
  arc(width*ladyX - ((width+height)/2)*0.05, height*0.9, ((height + width)/2)*0.10, ((height + width)/2)*0.13, PI, PI + 1.6)

  --Mouse Position Tool
  --fill(0)
  --text("X: "..mouseX/width.."Y: "..mouseY/height, mouseX + 5, mouseY + 30)

  --Change between shrinking and growing for the flower center
  if centerSize > 20 then
    shrinkGrow = -0.3

  elseif centerSize < 1 then
    shrinkGrow = 0.3

  end

  --Change size of flower center
  centerSize = centerSize + shrinkGrow

  --Change Ladybug position
  ladyX = ladyX - 0.005

  --Reset Ladybug position
  if ladyX < -0.20 then
    ladyX = 1.20
  end
  
end