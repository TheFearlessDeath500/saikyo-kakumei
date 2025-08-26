--func:DrawText(x, y, text)
--func:DrawNum(x, y, num)
--func:AddGraph("filename")
--func:DrawGraph(x, y, filename)
--func:DrawRectGraph(x, y, rect_x, rect_y, rect_width, rect_height, filename)
--func:DrawGraphCenter(x, y, filename)
--func:DrawGraphRectCenter(x, y, rect_x, rect_y, rect_width, rect_height, filename)
--func:SetOpacity(opacity, "filename")
--func:SetRotation(angle, "fileName")
--func:SetScale(xscale, yscale, "filename")
--func:SetColor(r, g, b, "filename")

local bg_width = 15360
local x = 0
local y = 0

function clearIn(player)
end

function clearOut(player)
end

function init()
    func:AddGraph("Background.png")
end

function update()
    x = x - (bg_width * deltaTime / 24)
    if x < -bg_width then
        x = 0
    end
end

function draw()
    for i = 0, 3 do
        func:DrawGraph(x + i * bg_width, y, "Background.png")
    end
end
