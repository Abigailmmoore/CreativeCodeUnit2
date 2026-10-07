require("L5")

function setup()
  size(1000, 500)

  -- Set the program title
  windowTitle("Randomness and Patterns")

  describe('')

  angleMode(DEGREES)

  rectMode(CENTER)
end

function draw()

end

function mousePressed()
  background(225)

  for i = 1, 8, 1 do
    push()
    translate(width*0.25, height*0.5)
    fill(255, 232, 0, 255-30*i)
    rotate(-135 + i*45)
    circle(width*0.13, 0, width*0.05)
    pop()

    push()
    translate(width*0.25, height*0.5)
    fill(255, 72, 176, 255-30*i)
    rotate(-90 + i*-45)
    circle(width*0.13, 0, width*0.05)
    pop()
  end

  fill(0)
  rect(width*0.5, height*0.5, width*0.01, height)

  for w = 1, 9, 1 do
    blue = {0, 120, 191}
    green = {0,128,0}
    purple = {157,0,255}

    fill(random({blue, green, purple}))
    rect(width*0.75, 0 + height*w*0.1, random(width*0.1, width*0.27), height*0.03)
  end

end