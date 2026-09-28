require("L5")

function setup()
  size(500, 500)

  -- Set the program title
  windowTitle("City Street")

  describe('Drawing of a urban scene')
end

function draw()
  -- Fills the background with a night sky color
  background(14, 14, 85)

  --Sidewalk
  fill(151,148,150)
  rect(0, height*0.75, width, height*0.25)

  --Street
  fill(82,77,80)
  rect(0, height*0.85, width, height*0.15)

  --Yellow Street Stripe
  fill(254, 208, 23)
  rect(0, height*0.94, width, height*0.03)

  --Building 1
  fill(100, 20, 1)
  rect(0, 0, width*0.18, height*0.75)

  --Building 2
  rect(width*.3, 0, width*0.55, height*0.75)

  --Building 3
  rect(width*0.97, 0, width*0.03, height*0.75)

  --Windows and doors
  fill(115, 115, 254)
  rect(width*0.01, height*0.51, width*0.13, height*0.24)
  rect(width*0.01, height*0.13, width*0.13, height*0.18)
  rect(width*0.445, height*0.51, width*0.26, height*0.24)
  rect(width*0.34, height*0.13, width*0.13, height*0.18)
  rect(width*0.68, height*0.13, width*0.13, height*0.18)

  --Mouse coordinates as a percentage of screen
  fill(255, 255, 255)
  text("X: "..mouseX/width.."  Y: "..mouseY/height, mouseX + 30, mouseY + 5)

end