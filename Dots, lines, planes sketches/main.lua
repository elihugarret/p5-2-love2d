-- ellipses in love are 0.5x bigger than in processing, maybe

-- Based on: https://www.openprocessing.org/sketch/81872
-- by https://yuyangee.blog.me/

local height, width

function love.load()
  love.window.setMode(800, 800)
  love.graphics.setBackgroundColor(100/255, 100/255, 100/255)
  height = love.graphics.getHeight()
  width = love.graphics.getWidth()
end

local function lines1()
  for y = 400, 1, -10 do
    for x = 400, 1, -5 do
      if x < 400 then
        love.graphics.setColor(200/255, 200/255, 200/255)
        love.graphics.line(x*2, y*2, x, y)
      else 
        love.graphics.rectangle("fill", x, y, x*2, y*2)
      end
    end
  end
end

local function ellipses1()
  love.graphics.setLineStyle "smooth"
  love.graphics.setColor(1, 1, 1)
  for x = 150, 600-1, 10 do
    love.graphics.ellipse("line", 50, 50, x*.5, x*.5)
  end
end

local function ellipses2()
  love.graphics.setColor(1, 1, 1)
  for x = 150, 800-1, 30 do
    love.graphics.ellipse("line", 400, 400, x*.5, x*.5)
  end
end

local function ellipses3()
  love.graphics.setColor(40/255, 40/255, 40/255)
  for x = 20, 500, 10 do 
    love.graphics.setLineWidth(4)
    love.graphics.ellipse("fill", 400, 400, x*.5 - 100, x*.5 - 100)
  end
end

local function rect1()
  for y = 0, 300-1, 20 do
    for x = 0, 400-1, 10 do
      love.graphics.setColor(x*(0.6/255), x*(0.6/255), x*(0.6/255))
      love.graphics.rectangle("fill", x+380, y+100, 12*x, 12)
    end
  end
end

local function ellipses4()
  love.graphics.setColor(1, 1, 1, 20/255)
  love.graphics.setLineStyle "smooth"
  love.graphics.setLineWidth(1)
  for y = -10, 800, 20 do 
    for x = -10, 800, 20 do 
      love.graphics.ellipse(
        "line", 
        math.random(width), 
        math.random(height), 
        math.random(width), 
        math.random(height)
      )
    end
  end
end

local function lines2()
  love.graphics.setColor(10/255, 10/255, 10/255)
  for x = 0, width, 100 do
    for y = 0, height, 100 do
      if x < 400 then
        love.graphics.setLineWidth(x/150)
        love.graphics.line(1100-x, 800-y, width/2, height/2)
      end
    end
  end
end

local function rect2()
  love.graphics.setColor(5/255, 5/255, 5/255)
  for y = 100, 200-1, 10 do 
    for x = 100, 200-1, 10 do 
      if x < 300 then
        love.graphics.rectangle("fill", x*4, y*4, 5, 5)
      end
    end
  end
end

local function ellipses5()
  love.graphics.setColor(20/255, 20/255, 20/255)
  love.graphics.setLineWidth(3)
  for x = 100, 800-1, 10 do 
    love.graphics.ellipse("line" ,560, 560, x*.15, x*.15)
  end
end

local function rect3()
  for y = 0, 300-1, 10 do
    for x = 0, 400-1, 10 do
      love.graphics.setColor(x*(.2/255), x*(.2/255), x*(.2/255))
      love.graphics.rectangle("fill", x+100, 700-y, 10, 5)
    end
  end
end

function love.draw()
  love.graphics.setLineWidth(0)
  lines1()
  ellipses1()
  ellipses2()
  ellipses3()
  rect1()
  ellipses4()
  lines2()
  rect2()
  ellipses5()
  rect3()
end