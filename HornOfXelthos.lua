-- Rogue Guides: The Horn of Xelthos (Shadowfang Keep, solo) - reward: Pyrewood Signet Ring
-- Quest data: WoW Forever Questie database. Route: warcraft.wiki.gg + conquestcapped.com (WoW Forever).

RXPGuides.RegisterGuide([[
#forever
#group Rogue Guides
<< Rogue
#name SFK - Horn of Xelthos (20)
#displayname SFK: Horn of Xelthos (Lvl 20)

step
    .xp 20 >> Reach level 20
step
    #completewith next
    +|cRXP_WARN_At level 20, visit any major city. You will get a letter "An Offer" from|r |cRXP_FRIENDLY_C|r |cRXP_WARN_in the mail.|r
    +|cRXP_WARN_This job MUST be done solo. Reward:|r |cRXP_LOOT_Pyrewood Signet Ring|r |cRXP_WARN_(+4 Agi, +4 Sta, +0.4% hit)|r

--------------------------------------------------------------------
-- Optional: Breaching Charge (lets you skip Rethilgore's door)
--------------------------------------------------------------------
step
    #optional
    .goto Stonetalon Mountains,58.2,51.7
    >>|cRXP_WARN_Optional, recommended below level 22:|r talk to |cRXP_FRIENDLY_Veenix|r in Stonetalon Mountains
    >>|cRXP_WARN_Skip this if you are level 22+ (you can open Deathstalker Adamant's cell and|r |T132331:0|t[Vanish] |cRXP_WARN_instead)|r
    .accept 78270 >> Accept Goblin Lockpicks
    .target Veenix
step
    #optional
    >>Kill |cRXP_ENEMY_Venture Co.|r goblins around Stonetalon Mountains and loot a |cRXP_LOOT_Venture Co. Work Order|r
    .complete 78270,1 --Venture Co. Work Order
    .mob Venture Co. Logger
    .mob Venture Co. Deforester
    .mob Venture Co. Operator
    .mob Foreman Rigger
    .isOnQuest 78270
step
    #optional
    .goto Stonetalon Mountains,58.2,51.7
    >>Return to |cRXP_FRIENDLY_Veenix|r
    .turnin 78270 >> Turn in Goblin Lockpicks
    .collect 210186,1 --Breaching Charge
    .target Veenix
    .isQuestComplete 78270

--------------------------------------------------------------------
-- The job
--------------------------------------------------------------------
step
    #completewith next
    .zone Silverpine Forest >> Travel to Pyrewood Village in Silverpine Forest
step
    .goto Silverpine Forest,47.1,71.0
    >>Open the |cRXP_PICK_Dead Drop|r in the cabin next to Pyrewood Village, at the foot of the ramp up to Shadowfang Keep
    .accept 78261 >> Accept The Horn of Xelthos
step
    #completewith next
    +Enter |cFFfa9602Shadowfang Keep|r |cRXP_WARN_alone|r
step
    +Get past the courtyard door:
    >>- Use the |cRXP_LOOT_Breaching Charge|r to blow up |cRXP_ENEMY_Rethilgore|r and the door, OR
    >>- (level 22+) Free |cRXP_FRIENDLY_Deathstalker Adamant|r from his cell, then |T132331:0|t[Vanish] when the door opens
    .isOnQuest 78261
step
    +In |T132320:0|t[Stealth], |T133644:0|t[Pick Pocket] |cRXP_ENEMY_Gemela|r in the dining hall for the |cRXP_LOOT_Sister's Half-Key|r
    >>Then go up the stairs and |T133644:0|t[Pick Pocket] |cRXP_ENEMY_Gefell|r for the |cRXP_LOOT_Brother's Half-Key|r
    .mob Gemela
    .mob Gefell
    .isOnQuest 78261
step
    +Combine the two halves into the |cRXP_LOOT_Twin Key|r
    >>|cRXP_WARN_Combining the keys breaks|r |T132320:0|t[Stealth] |cRXP_WARN_- do it somewhere safe|r
    .isOnQuest 78261
step
    +Go to the stables and open the |cRXP_PICK_Ornamented Chest|r with the |cRXP_LOOT_Twin Key|r. Loot |cRXP_LOOT_The Horn of Xelthos|r
    .isOnQuest 78261
step
    .goto Silverpine Forest,47.1,71.0
    >>Return to the |cRXP_PICK_Dead Drop|r and place the Horn in the chest
    .turnin 78261 >> Turn in The Horn of Xelthos
step
    #completewith next
    +Go to any major city and wait for a letter titled |cRXP_WARN_"Payment"|r from |cRXP_FRIENDLY_C|r
step
    .goto Silverpine Forest,47.1,71.0
    >>Return to the |cRXP_PICK_Dead Drop|r and collect your payment
    .turnin 78307 >> Turn in The Horn of Xelthos
step
    +|cRXP_LOOT_Pyrewood Signet Ring obtained!|r
    >>|cRXP_WARN_At level 30, C writes again - continue with the "SM: Eye of Bhossca" guide|r
]])
