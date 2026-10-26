require("L5")

redcolor = 0
bluecolor = 0
greencolor = 0
visible = true

function setup()
  size(1200, 500)

  -- Set the program title
  windowTitle("Modular Story")

  describe('A program that generates a random story')

end

function draw()

  fill(redcolor, greencolor, bluecolor)
  if mouseIsPressed and visible == true then
    circle(mouseX, mouseY, 50)
  end
end

function mouseDragged()
  
  if key == 'r' then
    redcolor = mouseX
  end
  if key == 'g' then
    greencolor = mouseX
  end
  if key == 'b' then
    bluecolor = mouseX
  end
end



