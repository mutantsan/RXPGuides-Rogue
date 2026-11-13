-- Rogue Guides: Level 20 Poisons quest chain (WoW Forever)
-- Alliance: Mathias and the Defias -> Klaven's Tower -> The Touch of Zanzil
-- Horde:    The Shattered Salute -> Deep Cover -> Mission: Possible But Not Probable -> Hinott's Assistance
-- Steps and coordinates are taken from RestedXP's own Forever guides and the Forever Questie database.

RXPGuides.RegisterGuide([[
#forever
#group Rogue Guides
<< Rogue
#name Poisons Quest (20)
#displayname Poisons Quest (Lvl 20)

step
    .xp 20 >> Reach level 20 to start your Poisons quest
step
    #completewith next
    +|cRXP_WARN_This chain unlocks|r |T132290:0|t[Poisons]|cRXP_WARN_. Have a few healing potions ready, and bring a|r |T135641:0|t[Dagger] |cRXP_WARN_for|r |T132282:0|t[Ambush]

--------------------------------------------------------------------
-- ALLIANCE
--------------------------------------------------------------------
step << Alliance
    .goto Stormwind City,78.3,70.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r in the Stormwind Barracks
    .accept 2360 >> Accept Mathias and the Defias
    .target Master Mathias Shaw
step << Alliance
    #completewith next
    .zone Westfall >> Travel to Westfall
step << Alliance
    .goto Westfall,68.5,70.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Agent Kearnen|r on the hill overlooking the Defias tower
    .turnin 2360 >> Turn in Mathias and the Defias
    .accept 2359 >> Accept Klaven's Tower
    .target Agent Kearnen
step << Alliance
    #loop
    .goto 1436/0,514.52,-11114.77,0
    .goto 1436/0,531.32,-11166.80,0
    .goto 1436/0,581.37,-11104.97,0
    .goto 1436/0,514.52,-11114.77,30,0
    .goto 1436/0,531.32,-11166.80,30,0
    .goto 1436/0,581.37,-11104.97,30,0
    >>The |cRXP_LOOT_Defias Tower Key|r is carried by the |cRXP_ENEMY_Malformed Defias Drone|r - steal it with |T133644:0|t[Pick Pocket]
    >>|cRXP_WARN_Look for him by the tower door or walking laps around the tower. Approach in|r |T132320:0|t[Stealth]
    >>|cRXP_WARN_Don't try to fight him - if he spots you,|r |T132307:0|t[Sprint] |cRXP_WARN_out and try again|r
    .complete 2359,2 --Defias Tower Key
    .mob Malformed Defias Drone
step << Alliance
    .goto 1436/0,551.93,-11127.39
    >>|cRXP_WARN_Climb to the floor just below the top. The chest sits on top of a bookshelf: wait for the|r |cRXP_ENEMY_Sentries|r |cRXP_WARN_to move off, then hop chair > lamp > bookshelf while still stealthed|r
    >>|cRXP_WARN_Up there, drop stealth and open the|r |cRXP_PICK_Duskwood Chest|r |cRXP_WARN_(an "Interact with Target" keybind makes this easier). Take|r |cRXP_LOOT_Klaven Mortwake's Journal|r
    >>|cRXP_WARN_You can't restealth for a moment after grabbing it, so plan your exit|r
    >>|cRXP_WARN_Safer option: carry a|r |T135641:0|t[Dagger] |cRXP_WARN_and clear the guards inside one by one with|r |T132282:0|t[Ambush] |cRXP_WARN_before climbing|r
    .complete 2359,1 --Klaven Mortwake's Journal
    .mob Defias Tower Sentry
    .mob Defias Tower Patroller
step << Alliance
    .goto Stormwind City,78.3,70.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tReturn to |cRXP_FRIENDLY_Master Mathias Shaw|r in Stormwind
    >>|cRXP_WARN_Swap your usual weapons back on if you used a dagger in the tower|r
    .turnin 2359 >> Turn in Klaven's Tower
    .accept 2607 >> Accept The Touch of Zanzil
    .target Master Mathias Shaw
step << Alliance
    .goto Stormwind City,80.1,69.9
    >>Head down to the cellar of the Barracks
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doc Mixilpixil|r
    .turnin 2607 >> Turn in The Touch of Zanzil
    .accept 2608 >> Accept The Touch of Zanzil
    .target Doc Mixilpixil
step << Alliance
    .goto 1453/0,331.10,-8807.70
    >>Type |cRXP_WARN_/lay|r in chat next to |cRXP_FRIENDLY_Doc Mixilpixil|r and wait for the examination to finish
    .complete 2608,1
step << Alliance
    .goto Stormwind City,80.1,69.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doc Mixilpixil|r
    .turnin 2608 >> Turn in The Touch of Zanzil
    .accept 2609 >> Accept The Touch of Zanzil
    .target Doc Mixilpixil
step << Alliance
    .goto 1453/0,329.75,-8807.70
    >>Buy a |cRXP_BUY_Leaded Vial|r from the |cRXP_FRIENDLY_Shady Dealer|r next to Doc Mixilpixil
    .complete 2609,2 --Leaded Vial
step << Alliance
    .goto 1453/0,516.61,-8823.83
    >>Buy |cRXP_BUY_Simple Wildflowers|r from the flower vendor
    .complete 2609,1 --Simple Wildflowers
step << Alliance
    .goto 1453/0,845.95,-8695.65
    >>The |cRXP_BUY_Spool of Light Chartreuse Silk Thread|r is sold in a trade shop by the canal bridge from Cathedral Square towards the park
    .complete 2609,4 --Spool of Light Chartreuse Silk Thread
step << Alliance
    .goto 1453/0,660.44,-8810.39
    >>Buy a |cRXP_BUY_Bronze Tube|r from the Auction House (or ask an Engineer to make one)
    .complete 2609,3 --Bronze Tube
step << Alliance
    .goto Stormwind City,80.1,69.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doc Mixilpixil|r
    .turnin 2609 >> Turn in The Touch of Zanzil
    .target Doc Mixilpixil

--------------------------------------------------------------------
-- HORDE
--------------------------------------------------------------------
step << Horde
    #completewith next
    .zone Orgrimmar >> Travel to the Cleft of Shadow in Orgrimmar
step << Horde
    .goto Orgrimmar,43.0,53.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shenthul|r in the Cleft of Shadow
    .accept 2460 >> Accept The Shattered Salute
    .target Shenthul
step << Horde
    .goto Orgrimmar,43.0,53.7
    >>After |cRXP_FRIENDLY_Shenthul|r salutes you, target him and type |cRXP_WARN_/salute|r
    .complete 2460,1 --Shattered Salute Performed
    .target Shenthul
step << Horde
    .goto Orgrimmar,43.0,53.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shenthul|r
    .turnin 2460 >> Turn in The Shattered Salute
    .accept 2458 >> Accept Deep Cover
    .target Shenthul
step << Horde
    #completewith next
    .zone The Barrens >> Travel to the Venture Co. tower north of the Sludge Fen in The Barrens
step << Horde
    #completewith next
    .goto 1413/1,-3021.35,1214.56
    +Signal |cRXP_FRIENDLY_Taskmaster Fizzule|r from a distance: target him, fire the |T134536:0|t[Flare Gun] two times, then |cRXP_WARN_/salute|r
    >>|cRXP_WARN_He stays hostile until the signal works, so keep your distance until then|r
    .use 8051
    .target Taskmaster Fizzule
step << Horde
    .goto The Barrens,55.4,5.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taskmaster Fizzule|r
    .turnin 2458 >> Turn in Deep Cover
    .accept 2478 >> Accept Mission: Possible But Not Probable
    .target Taskmaster Fizzule
step << Horde
    .goto 1413/1,-2930.15,1209.15
    >>Sneak up on |cRXP_ENEMY_Foreman Silixiz|r and |T133644:0|t[Pick Pocket] the |cRXP_LOOT_Tower Key|r off him
    .complete 2478,5 --Silixiz's Tower Key
    .mob Foreman Silixiz
step << Horde
    .goto 1413/1,-2922.04,1224.69
    >>Inside the tower, take out two each of the |cRXP_ENEMY_Drones|r, |cRXP_ENEMY_Patrollers|r and |cRXP_ENEMY_Lookouts|r
    .complete 2478,1 --Mutated Venture Co. Drone (2)
    .mob +Mutated Venture Co. Drone
    .complete 2478,3 --Venture Co. Patroller (2)
    .mob +Venture Co. Patroller
    .complete 2478,2 --Venture Co. Lookout (2)
    .mob +Venture Co. Lookout
step << Horde
    .goto 1413/1,-2927.11,1236.18
    >>|cRXP_ENEMY_Grand Foreman Puzik Gallywix|r waits on the top floor. Take him down and loot his |cRXP_LOOT_Head|r
    >>|cRXP_WARN_He is tough for level 20-24. A strong opener (|T132282:0|t[Ambush]), |T132155:0|t[Gouge] |cRXP_WARN_for breathing room and|r |T136205:0|t[Evasion] |cRXP_WARN_help - keep a healing potion handy|r
    .complete 2478,4 --Gallywix's Head
    .mob Grand Foreman Puzik Gallywix
step << Horde
    .goto 1413/1,-2927.11,1236.18
    >>Use |T136058:0|t[Pick Lock] on |cRXP_PICK_Gallywix's Lockbox|r and loot the |cRXP_LOOT_Cache of Zanzil's Altered Mixture|r
    >>|cRXP_WARN_If your Lockpicking is too low, level it first with the "Lockpicking 1-300" guide (the Ratchet ship is close by)|r
    .complete 2478,6 --Cache of Zanzil's Altered Mixture
step << Horde
    #completewith next
    .zone Orgrimmar >> Return to Orgrimmar
step << Horde
    .goto Orgrimmar,43.0,53.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shenthul|r
    .turnin 2478 >> Turn in Mission: Possible But Not Probable
    .accept 2479 >> Accept Hinott's Assistance
    .target Shenthul
step << Horde
    #completewith next
    .zone Hillsbrad Foothills >> Head to Tarren Mill in Hillsbrad Foothills (zeppelin to Tirisfal, then south through Silverpine)
step << Horde
    .goto Hillsbrad Foothills,61.6,19.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serge Hinott|r in Tarren Mill
    .turnin 2479 >> Turn in Hinott's Assistance
    .accept 2480 >> Accept Hinott's Assistance
    .timer 30,Hinott's Assistance RP
    .target Serge Hinott
step << Horde
    .goto Hillsbrad Foothills,61.6,19.2
    >>Wait for |cRXP_FRIENDLY_Serge Hinott|r to finish the cure
    .complete 2480,1
step << Horde
    .goto Hillsbrad Foothills,61.6,19.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serge Hinott|r
    .turnin 2480 >> Turn in Hinott's Assistance
    .target Serge Hinott

--------------------------------------------------------------------
step
    +|cRXP_LOOT_Poisons unlocked!|r
    >>|cRXP_WARN_Visit a rogue trainer to learn poison recipes, and buy Flash Powder, Empty Vials and poison reagents from the poison vendor|r
]])
