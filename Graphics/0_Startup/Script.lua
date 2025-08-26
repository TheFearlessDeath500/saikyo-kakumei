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

--for update text, bgwidth must be same value as x
local bg_width = 13536
local x = 0
local y = 655

local loadingAnimeType = 0
local discAngle = 0

function clearIn(player)
end

function clearOut(player)
end

function init()
    func:AddGraph("Background.png")
    func:AddGraph("Update.png")

    if loadingAnimeType == 0 then
        func:AddGraph("Disc.png")
    elseif loadingAnimeType == 1 then
    end
end

function update()
    --starting from here, for update scroll text. code taken from simplestyle lmao
    --value after delta, how many seconds before looping back?
    x = x - (bg_width * deltaTime / 85)
    if x < -bg_width then
        x = 0
    end

    --leave as is, takkkom's funny spin code
    if deltaTime > 5000 then
       loadingAnimeType = 1
    end
    if loadingAnimeType == 0 then
        discAngle = discAngle + (2000 * deltaTime)
    elseif loadingAnimeType == 1 then
    end
end

function draw()
    --what's the i in this case? idk but it does smth soooo... works for me :+1:
    for i = 0, 3 do
        func:DrawGraph(x + i * bg_width, y, "Update.png")
    end

--takkkom's spin code again
    func:DrawGraph(0, 0, "Background.png")
     func:SetRotation(discAngle, "Disc.png")
        func:DrawGraph(280, 850, "Disc.png")

        func:DrawText(477, 388, "By using this skin, you agree to everything shown in the LICENSE-README.md file.\n\nIf you do not agree with any of the statements, uninstall SAIKYO KAKUMEI immediately.")
end