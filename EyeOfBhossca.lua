-- Rogue Guides: The Eye of Bhossca (Scarlet Monastery, solo) - reward: Ruby-Adorned Blade
-- Quest data: WoW Forever Questie database. Route: conquestcapped.com (WoW Forever) + warcraft.wiki.gg.

RXPGuides.RegisterGuide([[
#forever
#group Rogue Guides
<< Rogue
#name SM - Eye of Bhossca (30)
#displayname SM: Eye of Bhossca (Lvl 30)

step
    .xp 30 >> Reach level 30
step
    #completewith next
    +|cRXP_WARN_You must have finished "The Horn of Xelthos" first. At level 30, visit a major city for the letter "Return Customer" from|r |cRXP_FRIENDLY_C|r
    +|cRXP_WARN_Solo only. Reward:|r |cRXP_LOOT_Ruby-Adorned Blade|r |cRXP_WARN_(rogue-only 1H sword, 38-72 dmg, 2.30 speed, +3 Agi, +8 Sta)|r
step
    .goto Silverpine Forest,47.1,71.0
    >>Open the |cRXP_PICK_Dead Drop|r next to Pyrewood Village
    .accept 78676 >> Accept The Eye of Bhossca

--------------------------------------------------------------------
-- Disguise
--------------------------------------------------------------------
step
    #completewith next
    .zone Tirisfal Glades >> Travel to the Scarlet Monastery in Tirisfal Glades
step
    .goto Tirisfal Glades,81.1,32.1
    +Use |T136058:0|t[Pick Lock] on the |cRXP_PICK_Supply Locker|r in the stables behind the Scarlet Monastery. Loot the |cRXP_LOOT_Scarlet Initiate's Uniform|r
    >>|cRXP_WARN_Nothing guards the locker|r
    .isOnQuest 78676
step
    #completewith EyeLoot
    +|cRXP_WARN_Disguise rules:|r
    >>- Put the uniform on |cRXP_WARN_inside|r each wing. Leaving the instance, |T132320:0|t[Stealth], attacking or standing too close to enemies removes it
    >>- The undead in the Graveyard see through it - use |T132320:0|t[Stealth] there
    >>- Stealth through the courtyard between wings: Scarlet mobs outside attack on sight

--------------------------------------------------------------------
-- Graveyard: Scryer's Key
--------------------------------------------------------------------
step
    +Enter the |cFFfa9602Graveyard|r wing. In the Chamber of Atonement, |T133644:0|t[Pick Pocket] a |cRXP_ENEMY_Scarlet Scryer|r for the |cRXP_LOOT_Scryer's Key|r
    >>|cRXP_WARN_If you only see torturers, check the hallway right after that room|r
    .mob Scarlet Scryer
    .isOnQuest 78676

--------------------------------------------------------------------
-- Library: the letterbox
--------------------------------------------------------------------
step
    +Enter the |cFFfa9602Library|r wing and put the uniform on. Walk to the Athenaeum (just before |cRXP_ENEMY_Arcanist Doan|r)
    >>Open the |cRXP_PICK_Personal Letterbox|r in the left alcove with the |cRXP_LOOT_Scryer's Key|r. Take the |cRXP_LOOT_Confidential Message|r
    .isOnQuest 78676

--------------------------------------------------------------------
-- Graveyard: benches and the Stone Coffer
--------------------------------------------------------------------
step
    +Go back to the |cFFfa9602Graveyard|r. In |T132320:0|t[Stealth], sit (|cRXP_WARN_/sit|r or X) on the two correct benches: one on the left and one on the right, against the back walls between statues
    >>|cRXP_WARN_The first gives a "faint click" message, the second a "stone moving" message. Other benches do nothing|r
    .isOnQuest 78676
step
    +Open the |cRXP_PICK_Stone Coffer|r in the first northern mausoleum on the right. Loot the |cRXP_LOOT_Reliquary Key|r
    >>|cRXP_WARN_A random undead guards it, sometimes an elite (e.g. Haunting Phantasm). Options:|r
    >>- Loot it through the wall from the outer side wall
    >>- Reset the instance until a non-elite guard spawns (the benches reset too)
    >>- |T132298:0|t[Kidney Shot] the guard, loot within ~5 seconds, then |T132331:0|t[Vanish]
    >>- |T132289:0|t[Distract] the guard away, then loot
    .isOnQuest 78676

--------------------------------------------------------------------
-- Library: the Eye
--------------------------------------------------------------------
step
    #label EyeLoot
    >>Go back to the |cFFfa9602Library|r, put the uniform on and walk past |cRXP_ENEMY_Houndmaster Loksey|r to the Gallery of Treasures
    >>Open the |cRXP_PICK_Padlocked Reliquary|r in the first small room on the left with the |cRXP_LOOT_Reliquary Key|r
    >>|cRXP_WARN_The uniform stops working once the Eye is in your bags - stealth out|r
    .complete 78676,1 --Eye of Bhossca
step
    .goto Silverpine Forest,47.1,71.0
    >>Return to the |cRXP_PICK_Dead Drop|r near Pyrewood Village and place the Eye in the chest
    .turnin 78676 >> Turn in The Eye of Bhossca
step
    #completewith next
    +Go to any major city and wait for a letter titled |cRXP_WARN_"Payment"|r from |cRXP_FRIENDLY_C|r
step
    .goto Silverpine Forest,47.1,71.0
    >>Return to the |cRXP_PICK_Dead Drop|r and collect your payment
    .turnin 78699 >> Turn in The Eye of Bhossca
step
    +|cRXP_LOOT_Ruby-Adorned Blade obtained!|r
    >>|cRXP_WARN_At level 45, Fahrad writes to you - continue with the "ZF: Talisman of Kazdor" guide|r
]])
