
require "recipecode"


function Recipe.OnTest.isIntactClothing(item)
    if instanceof(item, "Clothing") then
        return item:getHolesNumber() <= 0
    end
    return true
end


function Recipe.OnCreate.PaintMPoncho(items, resultItem, player)
    local texture_id = 0
    for i=0, items:size()-1 do
        local item = items:get(i)
        if item:getFullType() == 'Base.PaintGreen' then
            texture_id = 1
        elseif item:getFullType() == 'Base.PaintBlack' then
            texture_id = 2
        end
    end

    resultItem:getVisual():setTextureChoice(texture_id)
    resultItem:synchWithVisual()
end


function Recipe.OnCreate.CopyFirstClothingVisual(items, result, player)
    local clothing = nil
    local resultPartMap = {}
    local coveredParts = result:getCoveredParts()
    for i=0, coveredParts:size() - 1 do
        resultPartMap[coveredParts:get(i)] = true
    end
    
    for i=0, items:size() - 1 do
        local item = items:get(i)
        if item:IsClothing() then
            clothing = item
            break
        end
    end

    if not clothing then return end

    local condition_ratio = clothing:getCondition() / clothing:getConditionMax()
    local dirtyness = clothing:getDirtyness()
    local bloodiness = clothing:getBloodLevel()
    local wetness = clothing:getWetness()
    local color = clothing:getColor()
    local tint = clothing:getVisual():getTint(clothing:getClothingItem())

    local clothing_parts = clothing:getCoveredParts()
    for i=0, clothing_parts:size() - 1 do
        local p = clothing_parts:get(i)
        if resultPartMap[p] then 
            if clothing:getVisual():getHole(p) > 0 then
                result:getVisual():setHole(p)
            end
            if clothing:getVisual():getBlood(p) then
                result:getVisual():setBlood(p, clothing:getVisual():getBlood(p))
            end
        end
    end
    
    result:getVisual():setTint(tint)
    result:synchWithVisual()

    result:setColor(color)
    result:setCondition(math.floor(result:getConditionMax() * condition_ratio))
    result:setDirtyness(dirtyness)
    result:setWetness(wetness)
    
end
