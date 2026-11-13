-- Rogue Guides: Lockpicking 1-300 (WoW Forever)
-- Coordinates come from the WoW Forever Questie database (object/NPC spawns).
-- Remember: your max Lockpicking skill = 5 x your level (100 @20, 150 @30, 200 @40, 250 @50, 300 @60).

RXPGuides.RegisterGuide([[
#forever
#group Rogue Guides
<< Rogue
#name Lockpicking 1-300
#displayname Lockpicking 1-300

step
    #completewith next
    +|cRXP_WARN_Lockpicking is capped at 5x your character level. Level 20 = 100, 30 = 150, 40 = 200, 50 = 250, 60 = 300.|r
    +|cRXP_WARN_Always keep|r [Thieves' Tools] |cRXP_WARN_in your bags. Pickpocket humanoids while questing; the Junkboxes you get are free skill-ups.|r
    +|cRXP_WARN_Rogues can be trained in Lockpicking from level 16.|r

--------------------------------------------------------------------
-- 1-80  ALLIANCE: Redridge (Renzik -> Lucius -> Practice Lockboxes)
--------------------------------------------------------------------
step << Alliance
    #completewith next
    .train 1804 >> Train |T136058:0|t[Pick Lock] from any Rogue trainer (level 16 required)
step << Alliance
    .goto Stormwind City,78.3,71.1
    >>Talk to |cRXP_FRIENDLY_Renzik "The Shiv"|r in Old Town
    .accept 2281 >>Accept Redridge Rendezvous
    .target Renzik "The Shiv"
    .skill lockpicking,80,1
step << Alliance
    #completewith next
    .zone Redridge Mountains >> Travel to Redridge Mountains
    .skill lockpicking,80,1
step << Alliance
    .goto Redridge Mountains,23.0,52.0
    >>Talk to |cRXP_FRIENDLY_Lucius|r at Lakeshire
    .turnin 2281 >>Turn in Redridge Rendezvous
    .accept 2282 >>Accept Alther's Mill
    .collect 5060,1 --Thieves' Tools
    .target Lucius
    .skill lockpicking,80,1
step << Alliance
    .goto Redridge Mountains,46.9,45.2
    >>|cRXP_WARN_Tip: find a spot inside the mill where a few|r |cRXP_PICK_Practice Lockboxes|r |cRXP_WARN_are in reach at once and just cycle between them - they come back almost instantly|r
    .skill lockpicking,80 >> Open |cRXP_PICK_Practice Lockboxes|r in Alther's Mill until your Lockpicking is 80
step << Alliance
    .goto Redridge Mountains,47.0,44.7
    >>Pick |cRXP_PICK_Lucius's Lockbox|r inside the mill and take the |cRXP_LOOT_Token of Thievery|r out of it
    .complete 2282,1 --Token of Thievery
step << Alliance
    .goto Redridge Mountains,23.0,52.0
    >>Talk to |cRXP_FRIENDLY_Lucius|r
    .turnin 2282 >>Turn in Alther's Mill
    .target Lucius
step << Alliance
    .loop 25,Redridge Mountains,32.7,58.9,34.3,61.9,38.3,64.5,39.8,59.0,39.6,56.0,42.8,54.3,45.2,55.1,47.1,61.3,32.7,58.9
    >>Swim around Lake Everstill and open the |cRXP_PICK_Waterlogged Footlockers|r under water
    .skill lockpicking,110 >> Level Lockpicking to 110 (requires level 22)

--------------------------------------------------------------------
-- 1-80  HORDE: Ratchet (Zando'zan -> Wrenix -> pirate ship)
--------------------------------------------------------------------
step << Horde
    .goto Orgrimmar,43.0,53.7
    .train 1804 >> Train |T136058:0|t[Pick Lock] from |cRXP_FRIENDLY_Shenthul|r in the Cleft of Shadow (level 16 required)
    .target Shenthul
step << Horde
    .goto Orgrimmar,42.7,53.0
    >>Talk to |cRXP_FRIENDLY_Zando'zan|r
    .accept 2382 >>Accept Wrenix of Ratchet
    .target Zando'zan
    .skill lockpicking,80,1
step << Horde
    #completewith next
    .zone The Barrens >> Travel to Ratchet in The Barrens
    .skill lockpicking,80,1
step << Horde
    .goto The Barrens,63.1,36.3
    >>Talk to |cRXP_FRIENDLY_Wrenix the Wretched|r
    .turnin 2382 >>Turn in Wrenix of Ratchet
    .accept 2381 >>Accept Plundering the Plunderers
    .target Wrenix the Wretched
    .skill lockpicking,80,1
step << Horde
    .goto The Barrens,63.1,36.3
    >>Use |cRXP_FRIENDLY_Wrenix's Gizmotronic Apparatus|r next to Wrenix to get your tools
    >>|cRXP_WARN_It only gives the items once you have learned Pick Lock|r
    .collect 5060,1 --Thieves' Tools
    .collect 7970,1 --E.C.A.C.
    .target Wrenix's Gizmotronic Apparatus
    .skill lockpicking,80,1
step << Horde
    .goto The Barrens,65.0,45.5
    >>Head south of Ratchet to the pirate ship on the Merchant Coast. The strongboxes are one deck below the top
    >>|cRXP_WARN_The|r |cRXP_PICK_Buccaneer's Strongboxes|r |cRXP_WARN_respawn within seconds|r
    .skill lockpicking,80 >> Open |cRXP_PICK_Buccaneer's Strongboxes|r until your Lockpicking is 80
step << Horde
    .goto The Barrens,65.0,45.4
    >>Go all the way down the ship and pick |cRXP_PICK_The Jewel of the Southsea|r - a parrot, |cRXP_ENEMY_Polly|r, appears when you do
    >>|cRXP_ENEMY_Polly|r |cRXP_WARN_is elite at first. Hit her with the|r |T134059:0|t[E.C.A.C.] |cRXP_WARN_to weaken her, then finish her off|r
    .complete 2381,1 --Southsea Treasure
    .use 7970
    .mob Polly
step << Horde
    .goto The Barrens,63.1,36.3
    >>Talk to |cRXP_FRIENDLY_Wrenix the Wretched|r
    .turnin 2381 >>Turn in Plundering the Plunderers
    .target Wrenix the Wretched
step << Horde
    #completewith next
    .zone Ashenvale >> Travel to Zoram Strand on the west coast of Ashenvale
    .skill lockpicking,110,1
step << Horde
    .loop 25,Ashenvale,7.1,14.2,11.2,13.4,13.4,15.0,12.1,15.7,14.2,16.2,15.1,17.1,15.6,19.0,14.8,20.2,14.4,23.1,13.4,27.1,13.6,30.9,7.1,14.2
    >>Open the |cRXP_PICK_Waterlogged Footlockers|r along the Zoram Strand shore
    .skill lockpicking,110 >> Level Lockpicking to 110 (requires level 22)

--------------------------------------------------------------------
-- 110-150
--------------------------------------------------------------------
step
    +|cRXP_WARN_110-150: Open|r |cRXP_PICK_Battered Footlockers|r |cRXP_WARN_(requires level 30 for 150). Good spots:|r
    >>- Durnholde Keep, Hillsbrad Foothills (upper and lower levels) - both factions
    >>- Murloc camps north-east of Menethil Harbor, Wetlands << Alliance
    >>- Windshear Mine, south of Windshear Crag, Stonetalon Mountains << Horde
    >>- Angor Fortress, Badlands (upstairs) - see next steps
    .skill lockpicking,150 >> Level Lockpicking to 150

--------------------------------------------------------------------
-- 150-200
--------------------------------------------------------------------
step
    #completewith next
    .zone Desolace >> Travel to Sar'theris Strand on the west coast of Desolace
    >>|cRXP_WARN_Alternative: Angor Fortress in Badlands (Battered Footlockers upstairs 150-175, Dented Footlockers downstairs 175-200). It is often camped.|r
    .skill lockpicking,175,1
step
    .loop 20,Desolace,31.6,22.5,34.0,20.7,35.4,20.8,36.6,22.1,37.2,22.0,37.5,21.3,37.6,22.9,31.6,22.5
    >>Open the |cRXP_PICK_Waterlogged Footlockers|r deep under water at Sar'theris Strand
    >>|cRXP_WARN_Watch your breath bar. A Draught of Water Breathing helps a lot|r
    .skill lockpicking,175 >> Level Lockpicking to 175 (requires level 35)
step
    #optional
    .goto Badlands,40.7,28.1
    >>|cRXP_WARN_Alternative to Swamp of Sorrows: Angor Fortress, Badlands. Open the|r |cRXP_PICK_Dented Footlockers|r |cRXP_WARN_downstairs|r
    >>|cRXP_WARN_Do NOT pickpocket the mobs here, their boxes are too low to give skill|r
    .skill lockpicking,200 >> Level Lockpicking to 200 at Angor Fortress
    .skill lockpicking,200,1
step
    .loop 25,Swamp of Sorrows,65.4,51.7,71.7,48.2,74.2,58.5,71.8,61.6,69.7,61.2,66.3,58.4,65.4,51.7
    >>Open the |cRXP_PICK_Mossy Footlockers|r around the sunken Temple of Atal'Hakkar pool
    .skill lockpicking,200 >> Level Lockpicking to 200 (requires level 40)

--------------------------------------------------------------------
-- 200-250
--------------------------------------------------------------------
step
    #completewith next
    .zone Searing Gorge >> Travel to The Slag Pit in Searing Gorge
    .skill lockpicking,250,1
step
    .loop 25,Searing Gorge,39.1,24.4,42.3,29.5,40.7,31.2,40.4,38.2,36.9,39.9,35.9,45.2,38.0,45.9,42.4,44.1,38.4,50.8,40.6,52.8,42.3,54.1,44.6,54.1,39.1,24.4
    >>Open the |cRXP_PICK_Dented Footlockers|r in The Slag Pit
    >>|cRXP_WARN_Stay on the lower level until 225, the upper footlockers need 225 skill|r
    >>|cRXP_WARN_Pickpocket the Dark Iron mobs as well for|r Sturdy Junkboxes
    >>|cRXP_WARN_Alternatives after 225: Mossy Footlockers in the Bay of Storms (Azshara) or Dented Footlockers east of the Caverns of Time (Tanaris)|r
    .skill lockpicking,250 >> Level Lockpicking to 250 (requires level 50)

--------------------------------------------------------------------
-- 250-280
--------------------------------------------------------------------
step
    #completewith next
    .zone Eastern Plaguelands >> Travel to Tyr's Hand in the south-east of Eastern Plaguelands
    .skill lockpicking,280,1
step
    >>Open the |cRXP_PICK_Scarlet Footlockers|r inside Tyr's Hand
    >>|cRXP_WARN_The Scarlet Crusade mobs here are elite and hit hard. Stay in stealth and use Sap/Vanish|r
    >>|cRXP_WARN_Pickpocket the humanoids too for|r Heavy Junkboxes
    .skill lockpicking,280 >> Level Lockpicking to 280 (requires level 56)

--------------------------------------------------------------------
-- 280-300  Blackrock Depths doors
--------------------------------------------------------------------
step
    #completewith next
    +Travel to Blackrock Mountain (between Searing Gorge and Burning Steppes) and enter |cFFfa9602Blackrock Depths|r
    .skill lockpicking,300,1
step
    >>Inside Blackrock Depths, use |T136058:0|t[Pick Lock] on the locked doors near the entrance:
    >>1. Turn left after entering and pick the first door
    >>2. Take the first right and pick the next door
    >>3. Go left, pick the first door, then pick |cRXP_PICK_The Shadowforge Lock|r under the giant gear
    >>|cRXP_WARN_If you have the Shadowforge Key, use Pick Lock - right-clicking uses the key and gives no skill|r
    >>|cRXP_WARN_Leave, right-click your portrait > Reset all instances, and repeat. Max 5 instances per hour.|r
    >>|cRXP_WARN_Pickpocket the Dark Iron humanoids for|r Heavy Junkboxes |cRXP_WARN_between resets|r
    .skill lockpicking,300 >> Level Lockpicking to 300 (requires level 60)
step
    +|cRXP_LOOT_Congratulations, your Lockpicking is 300!|r
    >>|cRXP_WARN_You can now open the Dire Maul doors (no Crescent Key needed), the Scholomance door, and Thorium Lockboxes for other players (they put the box in the trade window "Will not be traded" slot).|r
]])
