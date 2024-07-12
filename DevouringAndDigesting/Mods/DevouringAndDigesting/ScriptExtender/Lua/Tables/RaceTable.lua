---@type SP_RaceConfigVars
RaceConfigVars = {}

local RACECONFIG_PATH = "RaceConfig.json"

---races that are considered creatures for config
---@type table<string,boolean>
SINGLE_GENDER_CREATURE = {
    ["Humanoid"] = false,
    ["Human"] = false,
    ["Elf"] = false,
    ["HighElf"] = false,
    ["WoodElf"] = false,
    ["Drow"] = false,
    ["LolthDrow"] = false,
    ["SeldarineDrow"] = false,
    ["Dwarf"] = false,
    ["HillDwarf"] = false,
    ["MountainDwarf"] = false,
    ["Duergar"] = false,
    ["HalfElf"] = false,
    ["HighHalfElf"] = false,
    ["WoodHalfElf"] = false,
    ["HalfDrow"] = false,
    ["Gnome"] = false,
    ["RockGnome"] = false,
    ["DeepGnome"] = false,
    ["ForestGnome"] = false,
    ["Halfling"] = false,
    ["LightfootHalfling"] = false,
    ["StoutHalfling"] = false,
    ["Tiefling"] = false,
    ["AsmodeusTiefling"] = false,
    ["MephistophelesTiefling"] = false,
    ["ZarielTiefling"] = false,
    ["Githyanki"] = false,
    ["Goblin"] = false,
    ["Hobgoblin"] = false,
    ["Bugbear"] = false,
    ["Gnoll"] = true,
    ["Gnoll Flind"] = true,
    ["Werewolf"] = false,
    ["Kuotoa"] = true,
    ["Undead"] = false,
    ["Skeleton"] = true,
    ["Monstrosity"] = true,
    ["Ettercap"] = true,
    ["Harpy"] = false,
    ["PhaseSpider"] = true,
    ["Giant"] = false,
    ["Ogre"] = false,
    ["Ooze"] = true,
    ["Aberration"] = true,
    ["Beholder"] = true,
    ["Mindflayer"] = true,
    ["Celestial"] = false,
    ["Elemental"] = true,
    ["Elemental_Mud"] = true,
    ["Elemental_Lava"] = true,
    ["Mephit"] = true,
    ["Azer"] = false,
    ["Fey"] = false,
    ["Redcap"] = false,
    ["Fiend"] = false,
    ["Devil"] = false,
    ["Demon"] = false,
    ["Construct"] = true,
    ["ScryingEye"] = true,
    ["Automaton"] = true,
    ["AdamantineGolem"] = true,
    ["AnimatedArmor"] = true,
    ["Plant"] = true,
    ["Myconid"] = true,
    ["Bulette"] = true,
    ["Hook Horror"] = true,
    ["Beast"] = true,
    ["Spider"] = true,
    ["Dragon"] = true,
    ["Critter"] = true,
    ["Rat"] = true,
    ["Bird"] = true,
    ["Frog"] = true,
    ["Crab"] = true,
    ["EMPTY"] = false,
    ["UndeadHighElfHidden"] = false,
    ["UndeadHighElfRevealed"] = false,
    ["MagicalSpecter"] = false,
    ["Zombie"] = true,
    ["Hellsboar"] = true,
    ["Imp"] = true,
    ["Cambion"] = false,
    ["Hag"] = false,
    ["Badger"] = true,
    ["Merregon"] = false,
    ["Wolf"] = true,
    -- this is not a typo
    ["|Raven|"] = true,
    ["Bear"] = true,
    ["Boar"] = true,
    ["Hyena"] = true,
    ["Dragonborn"] = false,
    ["BlackDragonborn"] = false,
    ["BlueDragonborn"] = false,
    ["BrassDragonborn"] = false,
    ["BronzeDragonborn"] = false,
    ["CopperDragonborn"] = false,
    ["GoldDragonborn"] = false,
    ["GreenDragonborn"] = false,
    ["RedDragonborn"] = false,
    ["SilverDragonborn"] = false,
    ["WhiteDragonborn"] = false,
    ["HalfOrc"] = false,
    ["Kobold"] = true,
    ["DarkJusticiar"] = false,
    ["Blight"] = true,
    ["Meazel"] = true,
    ["Brewer"] = true,
    ["ShadarKai"] = false,
    ["Ghost"] = false,
    ["CrawlingClaw"] = true,
    ["TollCollector"] = true,
    ["Gremishka"] = true,
    ["ApostleOfMyrkul"] = true,
    ["ShadowMastiff"] = true,
    ["Phasm"] = true,
    ["FleshGolem"] = true,
    ["Meenlock"] = true,
    ["Shadow"] = true,
    ["Wraith"] = true,
    ["Cloaker"] = true,
    ["FlyingGhoul"] = true,
    ["GiantEagle"] = true,
    ["Ghoul"] = true,
    ["UndeadFace"] = true,
    ["CoinHalberd"] = true,
    ["Surgeon"] = false,
    ["OliverFriend"] = false,
    ["Mummy"] = false,
    ["Mummy Lord"] = false,
    ["Tressym"] = true,
    ["SkeletalDragon"] = true,
    ["Hollyphant"] = true,
    ["Steelwatcher"] = true,
    ["Shambling Mound"] = true,
    ["Alioramus"] = true,
    ["Butler"] = false,
    ["DeathKnight"] = false,
    ["Ghast"] = true,
    ["Incubus"] = false,
    ["Succubus"] = false,
    ["Vampire"] = false,
    ["VampireSpawn"] = false,
    ["Vengeful Imp"] = true,
    ["Vengeful Boar"] = true,
    ["Vengeful Cambion"] = false,
    ["Raphaelian Merregon"] = false,
    ["Redcap Pirate"] = false,
    ["Blink Dog"] = true,
    ["Aasimar"] = false,
    ["Doppelganger"] = true,
    ["Bat"] = true,
    ["Displacer Beast"] = true,
}

-- it's better to save them as integers
---chance of a race being given pred passive
---@class SP_RaceConfigVars
DEFAULT_RACE_TABLE = {
    ["Humanoid"] = 100,
    ["Human"] = 100,
    ["Elf"] = 100,
    ["HighElf"] = 100,
    ["WoodElf"] = 100,
    ["Drow"] = 100,
    ["LolthDrow"] = 100,
    ["SeldarineDrow"] = 100,
    ["Dwarf"] = 100,
    ["HillDwarf"] = 100,
    ["MountainDwarf"] = 100,
    ["Duergar"] = 100,
    ["HalfElf"] = 100,
    ["HighHalfElf"] = 100,
    ["WoodHalfElf"] = 100,
    ["HalfDrow"] = 100,
    ["Gnome"] = 100,
    ["RockGnome"] = 100,
    ["DeepGnome"] = 100,
    ["ForestGnome"] = 100,
    ["Halfling"] = 100,
    ["LightfootHalfling"] = 100,
    ["StoutHalfling"] = 100,
    ["Tiefling"] = 100,
    ["AsmodeusTiefling"] = 100,
    ["MephistophelesTiefling"] = 100,
    ["ZarielTiefling"] = 100,
    ["Githyanki"] = 100,
    ["Goblin"] = 100,
    ["Hobgoblin"] = 100,
    ["Bugbear"] = 100,
    ["Gnoll"] = 100,
    ["Gnoll Flind"] = 100,
    ["Werewolf"] = 100,
    ["Kuotoa"] = 100,
    ["Undead"] = 100,
    ["Skeleton"] = 100,
    ["Monstrosity"] = 100,
    ["Ettercap"] = 100,
    ["Harpy"] = 100,
    ["PhaseSpider"] = 100,
    ["Giant"] = 100,
    ["Ogre"] = 100,
    ["Ooze"] = 100,
    ["Aberration"] = 100,
    ["Beholder"] = 100,
    ["Mindflayer"] = 100,
    ["Celestial"] = 100,
    ["Elemental"] = 100,
    ["Elemental_Mud"] = 100,
    ["Elemental_Lava"] = 100,
    ["Mephit"] = 100,
    ["Azer"] = 100,
    ["Fey"] = 100,
    ["Redcap"] = 100,
    ["Fiend"] = 100,
    ["Devil"] = 100,
    ["Demon"] = 100,
    ["Construct"] = 100,
    ["ScryingEye"] = 100,
    ["Automaton"] = 100,
    ["AdamantineGolem"] = 100,
    ["AnimatedArmor"] = 100,
    ["Plant"] = 100,
    ["Myconid"] = 100,
    ["Bulette"] = 100,
    ["Hook Horror"] = 100,
    ["Beast"] = 100,
    ["Spider"] = 100,
    ["Dragon"] = 100,
    ["Critter"] = 100,
    ["Rat"] = 100,
    ["Bird"] = 100,
    ["Frog"] = 100,
    ["Crab"] = 100,
    ["EMPTY"] = 100,
    ["UndeadHighElfHidden"] = 100,
    ["UndeadHighElfRevealed"] = 100,
    ["MagicalSpecter"] = 100,
    ["Zombie"] = 100,
    ["Hellsboar"] = 100,
    ["Imp"] = 100,
    ["Cambion"] = 100,
    ["Hag"] = 100,
    ["Badger"] = 100,
    ["Merregon"] = 100,
    ["Wolf"] = 100,
    ["|Raven|"] = 100,
    ["Bear"] = 100,
    ["Boar"] = 100,
    ["Hyena"] = 100,
    ["Dragonborn"] = 100,
    ["BlackDragonborn"] = 100,
    ["BlueDragonborn"] = 100,
    ["BrassDragonborn"] = 100,
    ["BronzeDragonborn"] = 100,
    ["CopperDragonborn"] = 100,
    ["GoldDragonborn"] = 100,
    ["GreenDragonborn"] = 100,
    ["RedDragonborn"] = 100,
    ["SilverDragonborn"] = 100,
    ["WhiteDragonborn"] = 100,
    ["HalfOrc"] = 100,
    ["Kobold"] = 100,
    ["DarkJusticiar"] = 100,
    ["Blight"] = 100,
    ["Meazel"] = 100,
    ["Brewer"] = 100,
    ["ShadarKai"] = 100,
    ["Ghost"] = 100,
    ["CrawlingClaw"] = 100,
    ["TollCollector"] = 100,
    ["Gremishka"] = 100,
    ["ApostleOfMyrkul"] = 100,
    ["ShadowMastiff"] = 100,
    ["Phasm"] = 100,
    ["FleshGolem"] = 100,
    ["Meenlock"] = 100,
    ["Shadow"] = 100,
    ["Wraith"] = 100,
    ["Cloaker"] = 100,
    ["FlyingGhoul"] = 100,
    ["GiantEagle"] = 100,
    ["Ghoul"] = 100,
    ["UndeadFace"] = 100,
    ["CoinHalberd"] = 100,
    ["Surgeon"] = 100,
    ["OliverFriend"] = 100,
    ["Mummy"] = 100,
    ["Mummy Lord"] = 100,
    ["Tressym"] = 100,
    ["SkeletalDragon"] = 100,
    ["Hollyphant"] = 100,
    ["Steelwatcher"] = 100,
    ["Shambling Mound"] = 100,
    ["Alioramus"] = 100,
    ["Butler"] = 100,
    ["DeathKnight"] = 100,
    ["Ghast"] = 100,
    ["Incubus"] = 100,
    ["Succubus"] = 100,
    ["Vampire"] = 100,
    ["VampireSpawn"] = 100,
    ["Vengeful Imp"] = 100,
    ["Vengeful Boar"] = 100,
    ["Vengeful Cambion"] = 100,
    ["Raphaelian Merregon"] = 100,
    ["Redcap Pirate"] = 100,
    ["Blink Dog"] = 100,
    ["Aasimar"] = 100,
    ["Doppelganger"] = 100,
    ["Bat"] = 100,
    ["Displacer Beast"] = 100,
}

EXAMPLE_RACECONFIG = {
    ["Humanoid"] = 100,
    ["Human"] = 100,
    ["Elf"] = 120,
    ["HighElf"] = 120,
    ["WoodElf"] = 130,
    ["Drow"] = 200,
    ["LolthDrow"] = 200,
    ["SeldarineDrow"] = 150,
    ["Dwarf"] = 80,
    ["HillDwarf"] = 80,
    ["MountainDwarf"] = 80,
    ["Duergar"] = 100,
    ["HalfElf"] = 110,
    ["HighHalfElf"] = 110,
    ["WoodHalfElf"] = 110,
    ["HalfDrow"] = 140,
    ["Gnome"] = 50,
    ["RockGnome"] = 50,
    ["DeepGnome"] = 50,
    ["ForestGnome"] = 50,
    ["Halfling"] = 60,
    ["LightfootHalfling"] = 60,
    ["StoutHalfling"] = 70,
    ["Tiefling"] = 170,
    ["AsmodeusTiefling"] = 170,
    ["MephistophelesTiefling"] = 170,
    ["ZarielTiefling"] = 170,
    ["Githyanki"] = 150,
    ["Goblin"] = 60,
    ["Hobgoblin"] = 200,
    ["Bugbear"] = 200,
    ["Gnoll"] = 170,
    ["Gnoll Flind"] = 250,
    ["Werewolf"] = 300,
    ["Kuotoa"] = 150,
    ["Undead"] = 100,
    ["Skeleton"] = 0,
    ["Monstrosity"] = 150,
    ["Ettercap"] = 150,
    ["Harpy"] = 250,
    ["PhaseSpider"] = 200,
    ["Giant"] = 400,
    ["Ogre"] = 400,
    ["Ooze"] = 300,
    ["Aberration"] = 200,
    ["Beholder"] = 200,
    ["Mindflayer"] = 100,
    ["Celestial"] = 150,
    ["Elemental"] = 50,
    ["Elemental_Mud"] = 50,
    ["Elemental_Lava"] = 50,
    ["Mephit"] = 20,
    ["Azer"] = 60,
    ["Fey"] = 200,
    ["Redcap"] = 60,
    ["Fiend"] = 200,
    ["Devil"] = 200,
    ["Demon"] = 300,
    ["Construct"] = 0,
    ["ScryingEye"] = 0,
    ["Automaton"] = 0,
    ["AdamantineGolem"] = 0,
    ["AnimatedArmor"] = 0,
    ["Plant"] = 0,
    ["Myconid"] = 50,
    ["Bulette"] = 300,
    ["Hook Horror"] = 150,
    ["Beast"] = 100,
    ["Spider"] = 200,
    ["Dragon"] = 10000,
    ["Critter"] = 0,
    ["Rat"] = 0,
    ["Bird"] = 0,
    ["Frog"] = 0,
    ["Crab"] = 0,
    ["EMPTY"] = 0,
    ["UndeadHighElfHidden"] = 200,
    ["UndeadHighElfRevealed"] = 200,
    ["MagicalSpecter"] = 0,
    ["Zombie"] = 50,
    ["Hellsboar"] = 70,
    ["Imp"] = 0,
    ["Cambion"] = 400,
    ["Hag"] = 300,
    ["Badger"] = 100,
    ["Merregon"] = 300,
    ["Wolf"] = 200,
    ["|Raven|"] = 0,
    ["Bear"] = 200,
    ["Boar"] = 50,
    ["Hyena"] = 50,
    ["Dragonborn"] = 200,
    ["BlackDragonborn"] = 200,
    ["BlueDragonborn"] = 200,
    ["BrassDragonborn"] = 200,
    ["BronzeDragonborn"] = 200,
    ["CopperDragonborn"] = 200,
    ["GoldDragonborn"] = 200,
    ["GreenDragonborn"] = 200,
    ["RedDragonborn"] = 200,
    ["SilverDragonborn"] = 200,
    ["WhiteDragonborn"] = 200,
    ["HalfOrc"] = 200,
    ["Kobold"] = 50,
    ["DarkJusticiar"] = 100,
    ["Blight"] = 200,
    ["Meazel"] = 40,
    ["Brewer"] = 10000,
    ["ShadarKai"] = 100,
    ["Ghost"] = 0,
    ["CrawlingClaw"] = 0,
    ["TollCollector"] = 300,
    ["Gremishka"] = 0,
    ["ApostleOfMyrkul"] = 0,
    ["ShadowMastiff"] = 50,
    ["Phasm"] = 10000,
    ["FleshGolem"] = 150,
    ["Meenlock"] = 50,
    ["Shadow"] = 0,
    ["Wraith"] = 0,
    ["Cloaker"] = 100,
    ["FlyingGhoul"] = 100,
    ["GiantEagle"] = 150,
    ["Ghoul"] = 50,
    ["UndeadFace"] = 0,
    ["CoinHalberd"] = 0,
    ["Surgeon"] = 150,
    ["OliverFriend"] = 0,
    ["Mummy"] = 150,
    ["Mummy Lord"] = 150,
    ["Tressym"] = 0,
    ["SkeletalDragon"] = 0,
    ["Hollyphant"] = 0,
    ["Steelwatcher"] = 0,
    ["Shambling Mound"] = 400,
    ["Alioramus"] = 200,
    ["Butler"] = 0,
    ["DeathKnight"] = 0,
    ["Ghast"] = 50,
    ["Incubus"] = 10000,
    ["Succubus"] = 10000,
    ["Vampire"] = 200,
    ["VampireSpawn"] = 200,
    ["Vengeful Imp"] = 0,
    ["Vengeful Boar"] = 50,
    ["Vengeful Cambion"] = 300,
    ["Raphaelian Merregon"] = 300,
    ["Redcap Pirate"] = 50,
    ["Blink Dog"] = 150,
    ["Aasimar"] = 200,
    ["Doppelganger"] = 100,
    ["Bat"] = 0,
    ["Displacer Beast"] = 200,
}

function SP_SaveRaceWeightsConfig()
    local json = Ext.Json.Stringify(RaceWeightVars)
    Ext.IO.SaveFile(RACECONFIG_PATH, json)
    _P("Config saved: \"Script Extender\\" .. RACECONFIG_PATH .. "\".")
end

function SP_ResetRaceWeightsConfig()
    RaceWeightVars = SP_Deepcopy(DEFAULT_RACE_TABLE)
    _P("Default race weights loaded.")
end

function SP_ResetAndSaveRaceWeightsConfig()
    SP_ResetRaceWeightsConfig()
    SP_SaveRaceWeightsConfig()
end

function SP_LoadExampleRaceConfig()
    RaceWeightVars = SP_Deepcopy(EXAMPLE_RACECONFIG)
    for k, v in pairs(DEFAULT_RACE_TABLE) do
        if RaceConfigVars[k] == nil then
            RaceConfigVars[k] = v
        end
    end
    SP_SaveRaceWeightsConfig()
end

function SP_LoadRaceWeightsConfigFromFile()
    local content = Ext.IO.LoadFile(RACECONFIG_PATH)
    if content == nil then
        _P(
            "Race Weights Config not found. If this is your first time launching the game with this mod enabled, this is fine.")
            SP_ResetAndSaveRaceWeightsConfig()
        return
    end

    _P("Race Weights Config loaded: \"Script Extender\\" .. RACECONFIG_PATH .. "\".")

    RaceConfigVars = Ext.Json.Parse(content)
    if RaceConfigVars["Humanoid"] < 5 then
        SP_ResetAndSaveRaceWeightsConfig()
    end

    local needResave = false

    -- if any races are missing
    for k, v in pairs(DEFAULT_RACE_TABLE) do
        if RaceConfigVars[k] == nil then
            RaceConfigVars[k] = v
            needResave = true
        end
    end

    -- if there are any extra races in the saved file
    for k, _ in pairs(RaceConfigVars) do
        if DEFAULT_RACE_TABLE[k] == nil then
            RaceConfigVars[k] = nil
            needResave = true
        end
    end



    if needResave then
        SP_SaveRaceWeightsConfig()
    end
end
