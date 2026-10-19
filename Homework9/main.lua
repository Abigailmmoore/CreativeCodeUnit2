require("L5")

function setup()
  size(699, 466)

  windowTitle("Images and Alphas")

  img = loadImage('Assets/LakePhoto.jpg')
end

function draw()
  image(img, 0, 0, width, height)

  noStroke()

  fill(255, 239, 0, 190)
  circle(width*0.8, height*0.16, height*0.2)

  fill(237, 128, 233, 150)
  ellipse(width*0.505, height*0.695, width*0.24, height*0.2)

  fill(255, 180)
  ellipse(width*0.23, height*0.13, width*0.28, height*0.18)

  fill(255, 210)
  ellipse(width*0.40, height*0.21, width*0.28, height*0.15)

  fill(6, 148, 148, 90)
  circle(width*0.22, height*0.53, height*0.18)
end