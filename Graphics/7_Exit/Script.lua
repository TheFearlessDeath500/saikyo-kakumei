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

local anim = 0

function clearIn(player)
end

function clearOut(player)
end

function playEndAnime()
    animeCounter = 0
end

function init()
    func:AddGraph("BG.png")
    func:AddGraph("Text.png")
end

function update()
    anim = anim + (0.5 * deltaTime)
end

function draw()
    func:DrawGraph(0, 0, "BG.png")
    func:DrawGraph(0, 0, "Text.png")

    --3rd value is opacity
    --1st value controls time to appear
    fadeIn = math.min(math.max(anim - 0.3, 0), 1) * 4
    baseIn = math.min(math.max(anim - 0.5, 0), 1) * 10
    fadeOut = math.min(math.max(anim - 0.50, 0), 0.0) * 4

    outPos = fadeOut^0.25 * 20

    func:SetOpacity(fadeIn * 255, "BG.png")
    func:SetOpacity(baseIn * 255, "Text.png")
end
