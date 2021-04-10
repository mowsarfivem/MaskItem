RegisterNetEvent('masque:use')
AddEventHandler('masque:use', function(mask, color)
    print(mask)
    TriggerEvent('skinchanger:getSkin', function(skin)
        if skin.sex <= 1 then
            local clothesSkin = {
                ['mask_1'] = mask, ['mask_2'] = color,
            }
            TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
        elseif skin.sex > 1 then
            ShowAboveRadarMessage("~r~Vous ne pouvez pas utiliser un masque sur votre ped.")
        end
    end)
end)
