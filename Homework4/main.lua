require("L5")

function setup()
  size(1090, 750)

  describe("A forest scene with three trees, a river, and a rock.")
end

function draw()

  -- Sky blue background
  background(98, 193, 229)
  
  -- Create ground.
  noStroke()
  fill(0, 128, 0)
  rect(0, 434, 1090, 316)
  rect(803, 316, 344, 434)
  triangle(562, 434, 803, 316, 803, 434)

  -- Create river
  stroke(0)
  fill(21, 136, 255)
  rect(0, 550, 626, 80)
  ellipse(765, 590, 300, 220)
  rect(765, 480, 325, 80)

  -- Create foreground
  noStroke()
  fill(0, 128, 0)
  rect(0, 630, 626, 80)
  ellipse(765, 670, 300, 220)
  rect(765, 560, 325, 80)

  -- Create tree trunks
  stroke(0)
  fill(137,81,41)
  rect(51, 139, 60, 310)
  rect(298, 139, 60, 310)
  rect(536, 139, 60, 310)

  -- Create tree leaves
  fill(0, 128, 0)
  ellipse(81, 139, 320, 220)
  ellipse(566, 139, 320, 220)
  ellipse(328, 139, 320, 220)

  -- Create rock
  fill(137,137,137)
  arc(945, 326, 280, 220, 3.145, PI + PI)

  -- Style the text.
  fill(0)
  textAlign(CENTER)
  textSize(10)

  -- Display the mouse's coordinates.
  text('x: '..mouseX..' y:'..mouseY, 545, 740)
end