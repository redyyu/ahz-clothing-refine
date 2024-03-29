-- used to spawn underwear automatically on zeds
UnderwearDefinition = UnderwearDefinition or {};

-- base chance of having a special underwear spawning, don't want this too high as it adds new items on dead zeds everytime!
-- UnderwearDefinition.baseChance = 70;

-- outfit name
UnderwearDefinition.Hooker = {
    chanceToSpawn = 5, -- weighted chance, can exced 100
    gender = "female",
    bottom = 'RCO.Underpants_HighWaistT',
}
