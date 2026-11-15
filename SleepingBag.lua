-- Rogue Guides: Cozy Sleeping Bag (hidden quest chain, level 14, both factions)
-- Quest data: RXPGuides Forever leveling guides + NaowhForever_Discovery (from Wowhead Forever, 2026-10-04).
-- Each step is an object in the world you click: clicking it turns in the current hidden quest and
-- starts the next one. Alliance goes Westfall -> The Barrens, Horde the other way; from Stonetalon on
-- both factions share the same steps.

RXPGuides.RegisterGuide([[
#forever
#group Rogue Guides
<< Rogue
#name Cozy Sleeping Bag (14)
#displayname Cozy Sleeping Bag (Lvl 14)

step
    .xp 14 >> Reach level 14
step
    #completewith next
    +|cRXP_WARN_A hidden chain: every step is an object you click in the world. It gives good XP and ends with the|r |T133662:0|t[|cRXP_LOOT_Cozy Sleeping Bag|r]|cRXP_WARN_, which gives bonus rested XP when you sleep in it|r

--------------------------------------------------------------------
-- Alliance: Westfall -> The Barrens
--------------------------------------------------------------------
step << Alliance
    #completewith next
    .zone Westfall >> Travel to Alexston Farmstead in Westfall
step << Alliance
    .goto Westfall,37.41,50.70
    >>Click the |cRXP_PICK_Burned-Out Remains|r (the wreckage of a cart in the rubble)
    .accept 79008 >> Accept ...and that note you found
step << Alliance
    #completewith next
    .zone The Barrens >> Travel to The Barrens. The burnt tower is on the road south of Camp Taurajo
step << Alliance
    .goto The Barrens,46.36,73.90
    >>Click the |cRXP_PICK_Burned-Out Remains|r on the ground by the burnt tower
    .turnin 79008 >> Turn in ...and that note you found
step << Alliance
    .goto The Barrens,46.38,73.86
    >>Click the |cRXP_PICK_Nailed Plank|r on the tower
    .accept 79192 >> Accept Stepping Stones

--------------------------------------------------------------------
-- Horde: The Barrens -> Westfall
--------------------------------------------------------------------
step << Horde
    #completewith next
    .zone The Barrens >> Travel to the burnt tower on the road south of Camp Taurajo in The Barrens
step << Horde
    .goto The Barrens,46.36,73.90
    >>Click the |cRXP_PICK_Burned-Out Remains|r on the ground by the burnt tower
    .accept 79007 >> Accept ...and that note you found
step << Horde
    #completewith next
    .zone Westfall >> Travel to Westfall
    >>|cRXP_WARN_Quickest: take the zeppelin to Stranglethorn Vale and swim up the coast to Westfall|r
step << Horde
    .goto Westfall,37.41,50.70
    >>Click the |cRXP_PICK_Burned-Out Remains|r (the wreckage of a cart in the rubble at Alexston Farmstead)
    .turnin 79007 >> Turn in ...and that note you found
    .accept 79192 >> Accept Stepping Stones

--------------------------------------------------------------------
-- Both factions
--------------------------------------------------------------------
step
    #completewith next
    .zone Stonetalon Mountains >> Travel to Stonetalon Mountains
step
    #completewith next
    .goto Stonetalon Mountains,50.29,52.94,25 >> Take the dirt path up into the hills north-east of Sun Rock Retreat
step
    .goto Stonetalon Mountains,40.75,52.58
    >>Click the |cRXP_PICK_Pocket Litter|r on top of a box in the abandoned camp
    .turnin 79192 >> Turn in Stepping Stones
    .accept 79980 >> Accept Scramble
step
    #optional
    .goto Stonetalon Mountains,40.60,52.40
    >>|cRXP_WARN_Optional:|r light the |cRXP_PICK_Firepit|r in the camp with the |cRXP_LOOT_Simple Wood|r and |cRXP_LOOT_Flint and Tinder|r from the Pocket Litter. Not needed for the bag
    .turnin 80001 >> Turn in Rekindle
step
    #completewith next
    .goto Stonetalon Mountains,40.19,50.80,15 >> Climb the hill straight north of the camp, then jump across to the ledge from the edge
step
    .goto Stonetalon Mountains,39.61,49.78
    >>Click the |cRXP_PICK_Mound of Dirt|r on the ledge
    .turnin 79980 >> Turn in Scramble
    .accept 79974 >> Accept Wet Job
step
    #completewith next
    .zone Loch Modan >> Travel to the Stonewrought Dam in northern Loch Modan
step
    #completewith next
    .goto Loch Modan,41.01,12.60,50,0
    .goto Loch Modan,42.86,10.36,60,0
    .goto Loch Modan,49.40,12.90,8 >> |cRXP_WARN_Get onto the dam wall and carefully drop down onto the carved heads in the middle, facing the Wetlands|r
step
    .goto Loch Modan,49.42,12.92
    >>Click the |cRXP_PICK_Carved Figurine|r on the ledge
    .turnin 79974 >> Turn in Wet Job
    .accept 79975 >> Accept Eagle's Fist
step
    #completewith next
    .goto Hillsbrad Foothills,87.69,48.17,10 >> Travel to Thoradin's Wall on the Hillsbrad Foothills / Arathi Highlands border
step
    #completewith next
    .goto Arathi Highlands,24.13,21.47,7 >> Climb onto the cart on the Hillsbrad side and walk up along the wall
step
    .goto Arathi Highlands,22.47,24.13
    >>Click the |cRXP_PICK_Messenger Bag|r hanging on the outside of the wall, to the right
    .turnin 79975 >> Turn in Eagle's Fist
    .accept 79976 >> Accept This Must Be The Place
step
    .goto Arathi Highlands,22.47,24.13
    >>Click the |cRXP_PICK_Hastily Rolled-Up Satchel|r right below the Messenger Bag
    .turnin 79976 >> Turn in This Must Be The Place
    .collect 211527,1 --Cozy Sleeping Bag
step
    +|T133662:0|t[|cRXP_LOOT_Cozy Sleeping Bag|r] |cRXP_LOOT_obtained!|r
    >>|cRXP_WARN_Use it before you log out or AFK to rest in it and gain bonus rested XP|r
]])
