require("L5")

beginning = {"Once there was an energetic squirrel", "Once there was a distracted musician", "Once there was a sleepy griffon", "Once there was a dutiful dancer"}

middle = {" who defeated a dragon", " who won a race", " who found a hidden treasure", " who filed taxes"}

ending = {" using differential equations.", " by yodeling very loudly.", " by redeeming a coupon.", " using a mechanical pencil."}

colors = {{r = 104, g = 42, b = 25}, {r = 101, g = 95, b = 20}, {r = 38, g = 101, b = 20}, {r = 20, g = 101, b = 72}, {r = 20, g = 26, b = 101}}

function setup()
  size(1200, 500)

  -- Set the program title
  windowTitle("Modular Story")

  describe('A program that generates a random story')

  textAlign(CENTER, CENTER)

  textSize(25)

  currentColor = ceil(random(#colors))

  background(colors[currentColor].r, colors[currentColor].g, colors[currentColor].b)

  text(random(beginning)..random(middle)..random(ending), width/2, height/2)
end

function draw()

end

function mousePressed()
  generateStory()
end

function generateStory()
  currentColor = ceil(random(#colors))
  background(colors[currentColor].r, colors[currentColor].g, colors[currentColor].b)
  text(random(beginning)..random(middle)..random(ending), width/2, height/2)
end