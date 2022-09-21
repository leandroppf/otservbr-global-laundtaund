-- Usage: use the Hammer (3459) into a item to convert.

local config = {
    ['convert'] = {
        [37160] = {count = 100, convertTo = 37109},
        [37109] = {count = 60, convertTo = 37110},
    }
}
local convertMaterial = Action()
    
function convertMaterial.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if not target or not target:isItem() or not player then return false end

    local canConvert = false
    local materialInfo = {}
    for id, data in pairs(config.convert) do
        if id == target:getId() and target:getCount(id) and target:getCount(id) >= data.count then
            canConvert = true
            materialInfo = data
        end
    end

    if not canConvert then
        return false
    end

    if not player:removeMoneyBank(100000) then
        player:sendTextMessage(MESSAGE_STATUS_SMALL, "You need 100k to transform it.")
        player:sendTextMessage(MESSAGE_STATUS_DEFAULT, "You need 100k to transform it.")
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
        return false
    end
    
    target:remove(materialInfo.count)
    player:addItem(materialInfo.convertTo,1)
    player:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
    player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You transformed it.')
       
    return true
end

convertMaterial:id(3459)
convertMaterial:register()