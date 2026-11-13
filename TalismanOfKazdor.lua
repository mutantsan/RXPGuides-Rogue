-- Rogue Guides: The Talisman of Kazdor (Zul'Farrak, solo)
-- Quest data: WoW Forever Questie database. Route: warcraft.wiki.gg (Season of Discovery version -
-- not yet confirmed on WoW Forever, details may differ).

RXPGuides.RegisterGuide([[
#forever
#group Rogue Guides
<< Rogue
#name ZF - Talisman of Kazdor (45)
#displayname ZF: Talisman of Kazdor (Lvl 45)

step
    .xp 45 >> Reach level 45
step
    #completewith next
    +|cRXP_WARN_At level 45 you get a letter "An Urgent Matter" from|r |cRXP_FRIENDLY_Fahrad|r |cRXP_WARN_in the mail. Read it to unlock the quest.|r
    +|cRXP_WARN_Solo only. This route is from the Season of Discovery version and may differ slightly on WoW Forever.|r
step
    #completewith next
    .zone Alterac Mountains >> Travel to Ravenholdt Manor in Alterac Mountains
step
    .goto Alterac Mountains,84.5,80.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fahrad|r
    .accept 80526 >> Accept Fool Me Twice
    .turnin 80526 >> Turn in Fool Me Twice
    .accept 80411 >> Accept The Talisman of Kazdor
    .target Fahrad
step
    #completewith next
    +Travel to Tanaris and enter |cFFfa9602Zul'Farrak|r |cRXP_WARN_alone|r
step
    +Loot |cRXP_LOOT_Vile Concoctions|r from |cRXP_PICK_Clay Vessels|r around the instance
    >>|cRXP_WARN_Throw them into cauldrons to blow up the enemies nearby without breaking|r |T132320:0|t[Stealth]
    .isOnQuest 80411
step
    +Kill |cRXP_ENEMY_Antu'sul|r and |cRXP_ENEMY_Witch Doctor Zum'rah|r using the |cRXP_LOOT_Vile Concoctions|r
    >>Loot |cRXP_PICK_Antu'sul's Satchel|r for the |cRXP_LOOT_Offering of Bone|r and |cRXP_PICK_Zum'rah's Satchel|r for the |cRXP_LOOT_Ward of the Dead|r
    .mob Antu'sul
    .mob Witch Doctor Zum'rah
    .isOnQuest 80411
step
    +Wear the |cRXP_LOOT_Ward of the Dead|r - it lets you open the glowing |cRXP_PICK_Shallow Grave|r, which holds the |cRXP_LOOT_Offering of Flesh|r
    >>Put the Flesh and Bone offerings together: you get the |cRXP_LOOT_Blood Magic Essence|r
    .isOnQuest 80411
step
    +Walk along the wall east of the pyramid to find the |cRXP_PICK_Sandfury Cache|r. Loot the |cRXP_LOOT_Hollow Emblem|r
    >>Fill the emblem with the |cRXP_LOOT_Blood Magic Essence|r to create the |cRXP_LOOT_Emblem of Blood Magic|r
    .isOnQuest 80411
step
    >>Climb the pyramid and open the |cRXP_PICK_Spellbound War Chest|r with the |cRXP_LOOT_Emblem of Blood Magic|r
    .complete 80411,1 --Talisman of Kazdor
step
    .goto Alterac Mountains,84.5,80.3
    >>Return to |cRXP_FRIENDLY_Fahrad|r at Ravenholdt Manor
    .turnin 80411 >> Turn in The Talisman of Kazdor
    .target Fahrad
]])
