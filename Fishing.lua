-- Rogue Guides: Fishing 1-300 (WoW Forever)
-- Route, trainers and requirements: ForeverFishing's Forever-verified field guide (trainer spawns,
-- Expert book, Nat Pagle quest). Quest 6607 checked against the Questie database.
-- Ranks: Apprentice (cap 75) -> Journeyman (skill 50, lvl 10, cap 150) -> Expert book (skill 125, lvl 20,
-- cap 225) -> Artisan via Nat Pagle's quest (skill 225, lvl 35, cap 300).

RXPGuides.RegisterGuide([[
#forever
#group Rogue Guides
<< Rogue
#name Fishing 1-300
#displayname Fishing 1-300

step
    #completewith next
    +|cRXP_WARN_Fishing caps: 75 Apprentice, 150 Journeyman (skill 50, level 10), 225 Expert (skill 125, level 20), 300 Artisan (skill 225, level 35)|r
    +|cRXP_WARN_If fish keep getting away, your skill is too low for that water: use a lure like a|r |cRXP_LOOT_Shiny Bauble|r |cRXP_WARN_or go back to easier water|r

--------------------------------------------------------------------
-- 1-75: Apprentice, starting waters
--------------------------------------------------------------------
step << Alliance
    .goto Stormwind City,55.0,69.6
    >>Talk to |cRXP_FRIENDLY_Arnold Leland|r in the Canals |cRXP_WARN_(or any Fishing trainer)|r
    .train 7620 >> Train Apprentice Fishing
    .target Arnold Leland
step << Horde
    .goto Orgrimmar,69.8,29.6
    >>Talk to |cRXP_FRIENDLY_Lumak|r in the Valley of Honor |cRXP_WARN_(or any Fishing trainer)|r
    .train 7620 >> Train Apprentice Fishing
    .target Lumak
step
    .collect 6256,1 >> Buy a |cRXP_LOOT_Fishing Pole|r from a fishing supplier
    >>|cRXP_WARN_Grab a few|r |cRXP_LOOT_Shiny Baubles|r |cRXP_WARN_too if you have spare silver|r
    .itemcount 6256,<1
step
    .skill fishing,50 >> Fish inland near your starting area (Raw Brilliant Smallfish) or on the coast (Raw Slitherskin Mackerel) until your Fishing is 50
    >>|cRXP_WARN_Cook your catches as you go to level Cooking at the same time|r

--------------------------------------------------------------------
-- 50-150: Journeyman, city waters
--------------------------------------------------------------------
step
    .xp 10 >> Reach level 10 to learn Journeyman Fishing
step << Alliance
    .goto Stormwind City,55.0,69.6
    >>Return to |cRXP_FRIENDLY_Arnold Leland|r |cRXP_WARN_before you hit the 75 cap|r
    .train 7731 >> Train Journeyman Fishing
    .target Arnold Leland
step << Horde
    .goto Orgrimmar,69.8,29.6
    >>Return to |cRXP_FRIENDLY_Lumak|r |cRXP_WARN_before you hit the 75 cap|r
    .train 7731 >> Train Journeyman Fishing
    .target Lumak
step << Alliance
    .goto Stormwind City,55.0,69.6
    .skill fishing,125 >> Fish in the Stormwind canals (or Darnassus) until your Fishing is 125
step << Horde
    .goto Orgrimmar,69.8,29.6
    .skill fishing,125 >> Fish in Orgrimmar (or Thunder Bluff) until your Fishing is 125

--------------------------------------------------------------------
-- 125-225: Expert, intermediate waters
--------------------------------------------------------------------
step
    .xp 20 >> Reach level 20 to read Expert Fishing
step
    #completewith next
    .zone Stranglethorn Vale >> Travel to Booty Bay in southern Stranglethorn Vale
step
    .goto Stranglethorn Vale,27.4,77.0
    >>Talk to |cRXP_FRIENDLY_Old Man Heming|r at the Happy Bobber in lower Booty Bay
    .collect 16083,1 >> Buy |cRXP_LOOT_Expert Fishing - The Bass and You|r
    .target Old Man Heming
    .train 7732,1
step
    .use 16083 >> Read |cRXP_LOOT_Expert Fishing - The Bass and You|r
    .train 7732 >> Learn Expert Fishing
step
    .goto Stranglethorn Vale,27.4,77.0
    .skill fishing,225 >> Fish along the Stranglethorn Vale coast or in Dustwallow Marsh until your Fishing is 225
    >>|cRXP_WARN_If too many fish escape, drop back to Ashenvale, the Wetlands or Stonetalon Mountains for a while|r

--------------------------------------------------------------------
-- 225-300: Artisan, Nat Pagle
--------------------------------------------------------------------
step
    .xp 35 >> Reach level 35 to start Nat Pagle's quest
step
    #completewith next
    .zone Dustwallow Marsh >> Travel to Dustwallow Marsh. Nat Pagle is on the small island south-west of Theramore
step
    .goto Dustwallow Marsh,59.0,60.0
    >>Talk to |cRXP_FRIENDLY_Nat Pagle|r
    .accept 6607 >> Accept Nat Pagle, Angler Extreme
    .target Nat Pagle
step
    .goto Feralas,62.0,51.0
    >>Fish in the Verdantis River in Feralas for a |cRXP_LOOT_Feralas Ahi|r
    .complete 6607,1 --Feralas Ahi
step
    .goto Swamp of Sorrows,90.0,72.0
    >>Fish off the south-east coast of the Swamp of Sorrows for a |cRXP_LOOT_Misty Reed Mahi Mahi|r
    .complete 6607,2 --Misty Reed Mahi Mahi
step
    .goto Desolace,25.0,77.0
    >>Fish off the Desolace coast for a |cRXP_LOOT_Sar'theris Striker|r
    .complete 6607,3 --Sar'theris Striker
step
    .goto Stranglethorn Vale,33.0,32.0
    >>Fish off the north-west Stranglethorn coast for a |cRXP_LOOT_Savage Coast Blue Sailfin|r
    .complete 6607,4 --Savage Coast Blue Sailfin
step
    .goto Dustwallow Marsh,59.0,60.0
    >>Return to |cRXP_FRIENDLY_Nat Pagle|r
    .turnin 6607 >> Turn in Nat Pagle, Angler Extreme
    .target Nat Pagle
step
    .train 18248 >> Learn Artisan Fishing |cRXP_WARN_(use the book Nat Pagle gives you if you got one)|r
step
    .skill fishing,300 >> Fish in Feralas, The Hinterlands, Tanaris, Un'Goro Crater, Felwood or the Western Plaguelands until your Fishing is 300
    >>|cRXP_WARN_Use a lure when your skill is low for the water. Fishing pools (Stonescale Eel, Firefin Snapper, Oily Blackmouth) are worth more gold|r
step
    +|cRXP_LOOT_Fishing 300 reached!|r
    >>|cRXP_WARN_On Sundays 2-4 p.m. server time, try the Stranglethorn Fishing Extravaganza in Booty Bay for an Arcanite Fishing Pole|r
]])
