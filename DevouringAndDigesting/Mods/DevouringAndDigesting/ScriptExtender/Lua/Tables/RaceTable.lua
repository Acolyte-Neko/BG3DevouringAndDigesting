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
