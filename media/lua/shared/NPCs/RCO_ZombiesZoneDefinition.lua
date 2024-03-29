
if ZombiesZoneDefinition.Stripclub then
    table.insert(ZombiesZoneDefinition.Stripclub, {name = "StripperBlack", chance=75})
    table.insert(ZombiesZoneDefinition.Stripclub, {name = "StripperPink", chance=75})
    table.insert(ZombiesZoneDefinition.Stripclub, {name = "StripperNaked", chance=75})
else
    ZombiesZoneDefinition.Stripclub = {
        chanceToSpawn = 100,
        StripperBlackM = {
            name="StripperBlack",
            toSpawn=2,
            gender="female",
            mandatory="true",
        },
        StripperNakedM = {
            name="StripperNaked",
            toSpawn=1,
            gender="female",
            mandatory="true",
        },
        StripperPinkM = {
            name="StripperPink",
            toSpawn=2,
            gender="female",
            mandatory="true",
        },
        StripperBlack = {
            name="StripperBlack",
            gender="female",
            chance=75,
        },
        StripperNaked = {
            name="StripperNaked",
            gender="female",
            chance=75,
        },
        StripperPink = {
            name="StripperPink",
            gender="female",
            chance=75,
        },
        WaiterStripper = {
            name="WaiterStripper",
            gender="female",
            chance=75,
        },
        Classy = {
            name="Classy",
            gender="male",
            chance=75,
        },
    }
end

if ZombiesZoneDefinition.Nightclub then
    table.insert(ZombiesZoneDefinition.Nightclub, {name = "Hooker", chance=75})
else
    ZombiesZoneDefinition.Nightclub = {
        chanceToSpawn = 100,
        HookerM = {
            name="Hooker",
            toSpawn=3,
            gender="female",
            mandatory="true",
        },
        Hooker = {
            name="Hooker",
            gender="female",
            chance=75,
        },
        Classy = {
            name="Classy",
            chance=75,
        },
    }
end

table.insert(ZombiesZoneDefinition.Default, {name = "Hooker", chance=0.5})
table.insert(ZombiesZoneDefinition.Default, {name = "StripperBlack", chance=0.05})
table.insert(ZombiesZoneDefinition.Default, {name = "StripperPink", chance=0.05})
table.insert(ZombiesZoneDefinition.Default, {name = "StripperNaked", chance=0.05})
table.insert(ZombiesZoneDefinition.Default, {name = "SkirtGirl", chance=0.5})
table.insert(ZombiesZoneDefinition.Default, {name = "SkirtBiker", chance=0.25})
table.insert(ZombiesZoneDefinition.Default, {name = "SkirtParty", chance=0.25})
table.insert(ZombiesZoneDefinition.Default, {name = "SkirtSport", chance=0.25})
table.insert(ZombiesZoneDefinition.Default, {name = "SkirtAmry", chance=0.25})
table.insert(ZombiesZoneDefinition.Default, {name = "SkirtFitnessInstructor", chance=0.5})


table.insert(ZombiesZoneDefinition.Shelter, {name = "SkirtBiker", chance=5})
table.insert(ZombiesZoneDefinition.Rocker, {name = "SkirtBiker", chance=5})
table.insert(ZombiesZoneDefinition.StreetPoor, {name = "SkirtBiker", chance=5})
table.insert(ZombiesZoneDefinition.Bar, {name = "SkirtBiker", chance=5})

table.insert(ZombiesZoneDefinition.Rich, {name = "SkirtParty", chance=10})
table.insert(ZombiesZoneDefinition.CountryClub, {name = "SkirtParty", chance=10})
table.insert(ZombiesZoneDefinition.FancyHotel, {name = "SkirtParty", chance=5})
table.insert(ZombiesZoneDefinition.Beach, {name = "SkirtParty", chance=5})

table.insert(ZombiesZoneDefinition.Army, {name = "SkirtArmy", chance=20})
table.insert(ZombiesZoneDefinition.SecretBase, {name = "SkirtArmy", chance=15})
table.insert(ZombiesZoneDefinition.CountryClub, {name = "SkirtArmy", chance=5})
table.insert(ZombiesZoneDefinition.Beach, {name = "SkirtArmy", chance=5})

table.insert(ZombiesZoneDefinition.Golf, {name = "Hooker", chance=15})
table.insert(ZombiesZoneDefinition.HotelRich, {name = "Hooker", chance=15})
table.insert(ZombiesZoneDefinition.FancyHotel, {name = "Hooker", chance=15})
table.insert(ZombiesZoneDefinition.Bar, {name = "Hooker", chance=25})
table.insert(ZombiesZoneDefinition.Beach, {name = "Hooker", chance=5})

table.insert(ZombiesZoneDefinition.Rich, {name = "SkirtFitnessInstructor", chance=10})
table.insert(ZombiesZoneDefinition.CountryClub, {name = "SkirtFitnessInstructor", chance=10})
table.insert(ZombiesZoneDefinition.StreetSports, {name = "SkirtFitnessInstructor", chance=15})
table.insert(ZombiesZoneDefinition.FancyHotel, {name = "SkirtFitnessInstructor", chance=5})
table.insert(ZombiesZoneDefinition.HotelRich, {name = "SkirtFitnessInstructor", chance=5})
table.insert(ZombiesZoneDefinition.Beach, {name = "SkirtFitnessInstructor", chance=5})
table.insert(ZombiesZoneDefinition.Golf, {name = "SkirtFitnessInstructor", chance=5})
table.insert(ZombiesZoneDefinition.Athletic, {name = "SkirtFitnessInstructor", chance=20})

table.insert(ZombiesZoneDefinition.Rich, {name = "SkirtSport", chance=10})
table.insert(ZombiesZoneDefinition.CountryClub, {name = "SkirtSport", chance=20})
table.insert(ZombiesZoneDefinition.StreetSports, {name = "SkirtSport", chance=15})
table.insert(ZombiesZoneDefinition.FancyHotel, {name = "SkirtSport", chance=5})
table.insert(ZombiesZoneDefinition.HotelRich, {name = "SkirtSport", chance=5})
table.insert(ZombiesZoneDefinition.Beach, {name = "SkirtSport", chance=5})
table.insert(ZombiesZoneDefinition.Golf, {name = "SkirtSport", chance=5})
table.insert(ZombiesZoneDefinition.Athletic, {name = "SkirtSport", chance=10})

table.insert(ZombiesZoneDefinition.School, {name = "SkirtGirl", chance=5})
table.insert(ZombiesZoneDefinition.School, {name = "SkirtParty", chance=1})
