require 'Items/ProceduralDistributions'

local function insertDistribution(list, distributionsMap)
    for item_name, places in pairs(distributionsMap) do
        for place_name, weight in pairs(places) do
            local dist_to = list[place_name]
            if dist_to then
                if dist_to.items then
                    dist_to = dist_to.items
                end
                table.insert(dist_to, item_name)
                table.insert(dist_to, weight)
            end
        end
    end
end


local skirtsDistributionsMap = {
    ["Stockings_Fitness"] = {
        ClothingStoresSocks = 10,
        ClothingStoresSport = 10,
        CrateClothesRandom = 1,
        GymLockers = 10,
        GymLaundry = 10,
        LaundryLoad6 = 5,
    },
    ["Sweater_FitnessArms"] = {
        ClothingStoresSport = 10,
        CrateClothesRandom = 1,
        GymLockers = 10,
        GymLaundry = 10,
        LaundryLoad6 = 5,
    },
    ["Bra_Fitness"] = {
        ClothingStoresUnderwearWoman = 10,
        ClothingStoresSport = 10,
        CrateClothesRandom = 1,
        GymLockers = 10,
        GymLaundry = 10,
        LaundryLoad6 = 5,
    },
    ["Underpants_Fitness"] = {
        ClothingStoresUnderwearWoman = 10,
        ClothingStoresSport = 10,
        CrateClothesRandom = 1,
        GymLockers = 10,
        GymLaundry = 10,
        LaundryLoad6 = 5,
    },
    ["Underpants_HighWaistT"] = {
        LingerieStoreOutfits = 3,
        ClothingStoresUnderwearWoman = 3,
        CrateClothesRandom = 1,
        LaundryLoad7 = 3, 
        StripClubDressers = 15,
    },
    ["Underpants_TightShorts"] = {
        LingerieStoreOutfits = 3,
        ClothingStoresUnderwearWoman = 3,
        CrateClothesRandom = 1,
        LaundryLoad7 = 3, 
        StripClubDressers = 15,
    },
    ["Tshirt_LongSleeveTop"] = {
        ClothingStoresWoman = 4,
        BedroomDresser = 1,
        DresserGeneric = 2,
        WardrobeWoman = 4, 
        CrateClothesRandom = 4,
    },
    ["Tshirt_LongSleeveTopCut"] = {
        ClothingStoresWoman = 2,
        BedroomDresser = 0.5,
        DresserGeneric = 1,
        WardrobeWoman = 2, 
        CrateClothesRandom = 2,
    },
    ["Skirt_ShortPleated"] = {
        ClothingStoresSummer = 4,
        LingerieStoreOutfits = 1,
        ClothingStorageLegwear = 0.5,
        ClothingStoresDress = 2,
        ClothingStoresWoman = 2,
        SchoolLockers = 0.2,
        BedroomDresser = 0.5,
        DresserGeneric = 0.5,
        ClosetShelfGeneric = 0.2,
        GymLockers = 0.5,
        GymLaundry = 2,
        LaundryLoad1 = 10,
        LaundryLoad2 = 10,
        LaundryLoad3 = 10,
        LaundryLoad4 = 10,
        LaundryLoad5 = 10,
        LaundryLoad6 = 10,
        LaundryLoad7 = 10,
        LaundryLoad8 = 10,
        Locker = 0.1,
        StripClubDressers = 15,
        WardrobeWoman = 6, 
        CrateClothesRandom = 2,
    },
}


insertDistribution(ProceduralDistributions.list, skirtsDistributionsMap)

