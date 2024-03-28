table.insert(ZombiesZoneDefinition.Default, {name = "SkirtGirl", chance=1})
table.insert(ZombiesZoneDefinition.Default, {name = "SkirtBiker", chance=0.5})
table.insert(ZombiesZoneDefinition.Default, {name = "SkirtParty", chance=0.5})
table.insert(ZombiesZoneDefinition.Default, {name = "SkirtFitnessInstructor", chance=0.5})

table.insert(ZombiesZoneDefinition.Shelter, {name = "SkirtBiker", chance=5})
table.insert(ZombiesZoneDefinition.Rocker, {name = "SkirtBiker", chance=15})
table.insert(ZombiesZoneDefinition.StreetPoor, {name = "SkirtBiker", chance=10})
table.insert(ZombiesZoneDefinition.Bar, {name = "SkirtBiker", chance=15})

table.insert(ZombiesZoneDefinition.Rich, {name = "SkirtParty", chance=15})
table.insert(ZombiesZoneDefinition.CountryClub, {name = "SkirtParty", chance=10})
table.insert(ZombiesZoneDefinition.FancyHotel, {name = "SkirtParty", chance=5})

table.insert(ZombiesZoneDefinition.Athletic, {name = "SkirtFitnessInstructor", chance=30})
table.insert(ZombiesZoneDefinition.CountryClub, {name = "SkirtFitnessInstructor", chance=50})

table.insert(ZombiesZoneDefinition.School, {name = "SkirtGirl", chance=5})
table.insert(ZombiesZoneDefinition.School, {name = "SkirtParty", chance=1})

if not ZombiesZoneDefinition.Stripclub then
    ZombiesZoneDefinition.Stripclub = {
        chanceToSpawn = 100,
        StripperBlackM = {
            name="StripperBlack",
            toSpawn=1,
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
            toSpawn=1,
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

if not ZombiesZoneDefinition.Nightclub then
    ZombiesZoneDefinition.Nightclub = {
        chanceToSpawn = 100,
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

ZombiesZoneDefinition.Nightclub
ZombiesZoneDefinition.Golf
ZombiesZoneDefinition.StreetSports
ZombiesZoneDefinition.HotelRich

ZombiesZoneDefinition.Bar

ZombiesZoneDefinition.Wedding

ZombiesZoneDefinition.Beach = {
	Tourist = {
		name="Tourist",
		chance=30,
	},
	Swimmer = {
		name="Swimmer",
		chance=70,
	},
}

