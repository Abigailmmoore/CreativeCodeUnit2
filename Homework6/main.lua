require("L5")

--centerSize = 

function setup()
  size(500, 500)

  -- Set the program title
  windowTitle("City Street")

  describe('Drawing of a urban scene')
end

function draw()
  background(130,200,229)

  fill(0)
  text("X: "..mouseX/width.."Y: "..mouseY/height, mouseX + 5, mouseY + 30)
end