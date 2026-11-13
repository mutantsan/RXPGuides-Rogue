-- Rogue Guides: Ravenholdt (WoW Forever)
-- Classic intro (Elegant Letter -> The Manor, Ravenholdt) + the WoW Forever Myrokos Silentform chain
-- + Syndicate Emblems / Junkboxes reputation + the level 50 Azure Key chain.
-- NPC/object coordinates come from the WoW Forever Questie database. Steps without a waypoint
-- had no spawn data in Questie: follow the Questie map icons for those.

RXPGuides.RegisterGuide([[
#forever
#group Rogue Guides
<< Rogue
#name Ravenholdt (24-60)
#displayname Ravenholdt (Lvl 24-60)

step
    .xp 24 >> Reach level 24 to start the Ravenholdt chain

--------------------------------------------------------------------
-- Invitation
--------------------------------------------------------------------
step << Alliance
    .goto Stormwind City,78.3,70.7
    >>|T133644:0|t[Pick Pocket] |cRXP_FRIENDLY_Master Mathias Shaw|r (or any Grand Master rogue trainer) for an |cRXP_LOOT_Elegant Letter|r
    >>|cRXP_WARN_You need to be in|r |T132320:0|t[Stealth]|cRXP_WARN_. It does not drop every time - re-stealth and try again|r
    .collect 17126,1 --Elegant Letter
    .target Master Mathias Shaw
step << Horde
    .goto Orgrimmar,43.0,53.7
    >>|T133644:0|t[Pick Pocket] |cRXP_FRIENDLY_Shenthul|r (or any Grand Master rogue trainer) for an |cRXP_LOOT_Elegant Letter|r
    >>|cRXP_WARN_You need to be in|r |T132320:0|t[Stealth]|cRXP_WARN_. It does not drop every time - re-stealth and try again|r
    .collect 17126,1 --Elegant Letter
    .target Shenthul
step
    >>Right-click the |cRXP_LOOT_Elegant Letter|r to start the quest
    .use 17126
    .accept 6681 >> Accept The Manor, Ravenholdt
step
    #completewith next
    .zone Alterac Mountains >> Travel to Ravenholdt Manor, hidden in the hills of south-east Alterac Mountains (north-east of Tarren Mill)
step
    .goto Alterac Mountains,84.5,80.3
    >>Your cunning is tested on the way into the manor. Complete the |cRXP_WARN_Rite of Cunning|r, then talk to |cRXP_FRIENDLY_Fahrad|r
    .complete 6681,1 --Rite of Cunning
    .turnin 6681 >> Turn in The Manor, Ravenholdt
    .target Fahrad

--------------------------------------------------------------------
-- WoW Forever: Myrokos Silentform chain
--------------------------------------------------------------------
step
    .goto Alterac Mountains,84.9,80.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Myrokos Silentform|r
    .accept 96779 >> Accept Syndicate Sabotage
    .target Myrokos Silentform
step
    #completewith next
    .zone Hillsbrad Foothills >> Travel to Durnholde Keep in Hillsbrad Foothills
step
    .goto Hillsbrad Foothills,78.5,45.0
    >>Find and kill |cRXP_ENEMY_Lord Tomas|r inside Durnholde Keep
    >>|cRXP_WARN_Pick the|r |cRXP_PICK_Battered Footlockers|r |cRXP_WARN_here too for Lockpicking skill|r
    .complete 96779,1 --Lord Tomas
    .mob Lord Tomas
step
    .goto Alterac Mountains,84.9,80.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tReturn to |cRXP_FRIENDLY_Myrokos Silentform|r
    .turnin 96779 >> Turn in Syndicate Sabotage
    .target Myrokos Silentform
step
    .xp 36 >> Reach level 36 for the rest of the Myrokos chain
step
    .goto Alterac Mountains,84.9,80.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Myrokos Silentform|r
    .accept 96781 >> Accept What's the Big Idea?
    .accept 96783 >> Accept A Way In
    .target Myrokos Silentform
step
    >>|T133644:0|t[Pick Pocket] |cRXP_ENEMY_Barton|r in Alterac Mountains for |cRXP_LOOT_Barton's Scouting Report|r
    >>|cRXP_WARN_Check your Questie map for his location|r
    .complete 96781,1 --Barton's Scouting Report
    .mob Barton
step
    .goto Alterac Mountains,84.9,80.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Myrokos Silentform|r
    .turnin 96781 >> Turn in What's the Big Idea?
    .accept 96782 >> Accept Covert Extraction << Alliance
    .target Myrokos Silentform
step << Alliance
    >>Search the ruins of Alterac for the |cRXP_LOOT_Blade of House Perenolde|r and the |cRXP_LOOT_Royal Aegis of Perenolde|r
    >>|cRXP_WARN_Check your Questie map for their locations|r
    .complete 96782,1 --Blade of House Perenolde
    .complete 96782,2 --Royal Aegis of Perenolde
step << Alliance
    .goto Alterac Mountains,84.9,80.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tReturn to |cRXP_FRIENDLY_Myrokos Silentform|r
    .turnin 96782 >> Turn in Covert Extraction
    .target Myrokos Silentform
step
    #completewith next
    .zone Arathi Highlands >> Travel to Northfold Manor in Arathi Highlands
step
    .goto Arathi Highlands,32.3,26.6
    >>Open the |cRXP_PICK_Syndicate Footlocker|r at Northfold Manor to steal a Syndicate uniform
    .turnin 96783 >> Turn in A Way In
    .accept 96784 >> Accept Master of Disguise
step
    .goto Arathi Highlands,26.8,64.4
    >>While disguised, enter Stromgarde Keep and talk to |cRXP_FRIENDLY_Anastasia Miller|r
    .turnin 96784 >> Turn in Master of Disguise
    .accept 96785 >> Accept Ain't No Telling
    .target Anastasia Miller
step
    >>Search Stromgarde Keep for the |cRXP_LOOT_Stolen Funds|r
    >>|cRXP_WARN_Check your Questie map for the location|r
    .complete 96785,1 --Stolen Funds
step
    .goto Arathi Highlands,26.8,64.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anastasia Miller|r
    .turnin 96785 >> Turn in Ain't No Telling
    .accept 96786 >> Accept The Syndicate Sting
    .target Anastasia Miller
step
    >>Break up the secret deal in Stromgarde Keep and take the |cRXP_LOOT_Intercepted Shipment|r
    .complete 96786,1 --Intercepted Shipment
step
    .goto Alterac Mountains,84.9,80.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tReturn to |cRXP_FRIENDLY_Myrokos Silentform|r at Ravenholdt Manor
    .turnin 96786 >> Turn in The Syndicate Sting
    .target Myrokos Silentform

--------------------------------------------------------------------
-- Reputation
--------------------------------------------------------------------
step
    #completewith next
    +|cRXP_WARN_Ravenholdt reputation:|r
    >>- Kill |cRXP_ENEMY_Syndicate|r members in Alterac Mountains and Hillsbrad Foothills
    >>- Turn in |cRXP_LOOT_Syndicate Emblems|r (Syndicate drops, also found in Battered and Worn Junkboxes) to a |cRXP_FRIENDLY_Ravenholdt Guard|r
    >>- From level 50, turn in Heavy Junkboxes to |cRXP_FRIENDLY_Fahrad|r ("Junkboxes Needed")
step
    .goto Alterac Mountains,84.6,78.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to a |cRXP_FRIENDLY_Ravenholdt Guard|r
    .accept 6701 >> Accept Syndicate Emblems (repeatable)
    .target Ravenholdt Guard

--------------------------------------------------------------------
-- Level 50: The Azure Key
--------------------------------------------------------------------
step
    .xp 50 >> Reach level 50 for the Azure Key chain
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to your Grand Master rogue trainer
    .accept 8233 >> Accept A Simple Request
step
    .goto Alterac Mountains,86.0,78.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .turnin 8233 >> Turn in A Simple Request
    .accept 8234 >> Accept Sealed Azure Bag
    .target Lord Jorach Ravenholdt
step
    #completewith next
    .zone Azshara >> Travel to Azshara
step
    .goto Azshara,44.1,21.5
    >>The |cRXP_LOOT_Sealed Azure Bag|r comes from |cRXP_ENEMY_Timbermaw Shamans|r - pickpocket them, or kill them if you must
    >>|cRXP_WARN_Killing Timbermaw hurts your Timbermaw Hold reputation - pickpocketing is safer|r
    .complete 8234,1 --Sealed Azure Bag
    .mob Timbermaw Shaman
step
    .goto Azshara,29.2,40.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Xylem|r at the top of his tower
    .turnin 8234 >> Turn in Sealed Azure Bag
    .accept 8235 >> Accept Encoded Fragments
    .target Archmage Xylem
step
    .loop 40,Azshara,66.4,25.6,69.2,27.2,71.7,29.5,74.6,29.5,76.8,25.5,80.4,24.5,74.7,12.7,71.6,24.3,66.4,25.6
    >>Kill |cRXP_ENEMY_Forest Oozes|r and loot them for |cRXP_LOOT_Encoded Fragments|r
    .complete 8235,1 --Encoded Fragment (10)
    .mob Forest Ooze
step
    .goto Azshara,29.2,40.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Xylem|r
    .turnin 8235 >> Turn in Encoded Fragments
    .accept 8236 >> Accept The Azure Key
    .target Archmage Xylem
step
    >>Kill |cRXP_ENEMY_Morphaz|r in |cFFfa9602The Temple of Atal'Hakkar|r (Sunken Temple, Swamp of Sorrows) and loot the |cRXP_LOOT_Azure Key|r
    >>|cRXP_WARN_This needs a dungeon group|r
    .complete 8236,1 --Azure Key
    .mob Morphaz
step
    .goto Alterac Mountains,86.0,78.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tReturn to |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .turnin 8236 >> Turn in The Azure Key
    .target Lord Jorach Ravenholdt
]])
