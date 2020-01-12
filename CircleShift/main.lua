-- Based on CircleShift https://www.openprocessing.org/sketch/425051
-- by https://www.openprocessing.org/user/65007

-- ellipses in love are 0.5x bigger than in processing

local height, width
local time = 0
local backcol = 242

local function map(value, istart, istop, ostart, ostop)
  return ostart+(ostop-ostart)*((value-istart)/(istop-istart))
end

function love.load()
  love.window.setMode(600, 600)
  love.graphics.setBackgroundColor(backcol/255, backcol/255, backcol/255)
  height = love.graphics.getHeight()
  width = love.graphics.getWidth()
end

function love.draw()
  for i = 0, 360-1, 2 do 
    local x = math.cos(math.rad(i))*50+width/2
    local y = math.sin(math.rad(i))*100+height/2
    local w = math.sin(math.rad(time+i))*200
    w = math.abs(w)

    local col = map(i, 0, 360, 120, 255)
    love.graphics.setColor(0/255, 88/255, col/255, 10/255)
    love.graphics.ellipse("fill", x, y, w/2, w/2)
    love.graphics.setColor(0/255, col/255, 88/255, 15/255)
    love.graphics.ellipse("line", x, y, w/1.9, w/1.9)
  end
end

function love.update() 
  time = time+1
end
