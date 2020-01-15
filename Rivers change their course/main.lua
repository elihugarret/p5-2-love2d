-- Translated to Love2d from https://www.openprocessing.org/sketch/814856
-- by https://www.openprocessing.org/user/154720

local C, H = 0, 128
local W = 700

local function mag(x, y)
  return math.sqrt((x*x)+(y*y))
end

local function map(value, istart, istop, ostart, ostop)
  return ostart+(ostop-ostart)*((value-istart)/(istop-istart))
end

function love.load()
  love.window.setMode(W, W)
end

function D(x, y, s)
  local a, b = x+s/2, y+s/2
  if math.abs(love.math.noise(a/W, b/W, mag(a, b)/W-C)-.5) > map(s, 4, H, .05, .18) then
    love.graphics.rectangle("line", x, y, s, s)
  else
    s = s / 2
    if s >= 4 then
      D(x,     y, s)
      D(x+s,   y, s)
      D(x,   y+s, s)
      D(x+s, y+s, s)
    end
  end
end

function love.draw()
  C = C + .002
  local j = 0
  while j < W do 
    local i = 0
    while i < W do
      D(i, j, H)
      i = i + H
    end
    j = j + H
  end
end
