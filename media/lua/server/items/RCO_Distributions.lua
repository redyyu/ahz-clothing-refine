require 'Items/ProceduralDistributions'


local function insertDistributions(distributions_items, distMap)
    for idx, item_key in ipairs(distributions_items) do
        if type(item_key) == "string" then
            for k, v in pairs(distMap) do
                if item_key == k then
                    local weight = distributions_items[idx + 1]
                    for _, new_item_key in ipairs(v) do
                        table.insert(distributions_items, new_item_key)
                        table.insert(distributions_items, weight)
                    end 
                end
            end
        end
    end
end


local distributionsMap = {
    ["Tshirt_Sport"] = {
        "RCO.Stockings_Fitness",
        "RCO.Stockings_FitnessTINT",
        "RCO.Bra_Fitness",
        "RCO.Underpants_Fitness",
        "RCO.Stockings_Camo",
    },
    
    ["Shorts_LongSport"] = {
        "RCO.Sweater_FitnessArms",
        "RCO.Tshirt_LongSleeveTop",
        "RCO.Tshirt_LongSleeveTopCut",
        "RCO.Tshirt_CropTopBoob",
        "RCO.Skirt_MiniPleated_Camo",
        "Skirt_Mini",
        "RCO.Skirt_MiniPleated",
        "RCO.Skirt_MiniPleatedTINT",
        "RCO.Skirt_MiniPleatedPlaidTINT",
    },
    ["FrillyUnderpants_Black"] = {
        "RCO.Underpants_Fitness",
        "RCO.Underpants_HighWaistT",
        "RCO.Underpants_TightShorts",
    },
    ["Skirt_Knees"] = {
        "RCO.Skirt_ShortPleated",
        "RCO.Skirt_ShortPleatedTINT",
        "RCO.Skirt_ShortPleatedPlaidTINT",
        "RCO.Skirt_ShortPleated_Camo",
    },
    ["Skirt_Short"] = {
        "Skirt_Mini",
        "RCO.Skirt_MiniPleated",
        "RCO.Skirt_MiniPleatedTINT",
        "RCO.Skirt_MiniPleatedPlaidTINT",
        "RCO.Skirt_MiniPleated_Camo",
    },
    
    ["Tshirt_CamoUrban"] = {
        "RCO.Skirt_ShortPleated_Camo",
        "RCO.Skirt_MiniPleated_Camo",
        "RCO.Stockings_Camo",
    },
    
    ["HoodieDOWN_WhiteTINT"] = {
        "Hoodie_Cropped_Down"
    },

    ["Dress_SmallStrapless"] = {
        "Dress_MiniBellyCut",
        "Dress_MiniUCut",
        "Dress_MiniVCut",
        "Dress_MiniTube",
        "Dress_MiniTPoloNeck",
    },

    ["Shoes_BlackBoots"] = {
        "Shoes_BootsChromatic"
    },

    ["Shoes_RidingBoots"] = {
        "Shoes_FancyBoots",
        "Shoes_KneeHighHeels",
    },

}

for k, v in pairs(ProceduralDistributions.list) do
    insertDistributions(v.items, distributionsMap)
end

insertDistributions(VehicleDistributions.ClothingTruckBed, distributionsMap)
