# RestedXP - Rogue Guides

Custom [RestedXP](https://www.restedxp.com/) guides for Rogues on **WoW Forever**. Covers Lockpicking, the Poisons quest, Ravenholdt reputation, and the solo class quests in Shadowfang Keep, Scarlet Monastery and Zul'Farrak, plus the hidden Cozy Sleeping Bag chain.

## Guides

All guides show up in RestedXP under the **Rogue Guides** group. Only Rogue characters see them.

| Guide | Level | Faction | Notes |
|---|---|---|---|
| Lockpicking 1-300 | 16+ | Both | Skill is capped at 5 × your level (100 @20, 150 @30, 200 @40, 250 @50, 300 @60) |
| Cozy Sleeping Bag | 14 | Both | Hidden click-the-object chain: Westfall ↔ The Barrens, Stonetalon, Loch Modan dam, Thoradin's Wall |
| Poisons Quest | 20 | Both | Alliance: Mathias and the Defias → The Touch of Zanzil. Horde: The Shattered Salute → Hinott's Assistance |
| SFK: Horn of Xelthos | 20 | Both | Solo. Reward: Pyrewood Signet Ring |
| Ravenholdt | 24-60 | Both | Elegant Letter intro, Myrokos Silentform chain, Syndicate Emblems/Junkbox rep, level 50 Azure Key chain |
| SM: Eye of Bhossca | 30 | Both | Solo. Requires Horn of Xelthos. Reward: Ruby-Adorned Blade |
| ZF: Talisman of Kazdor | 45 | Both | Solo. Route is based on the Season of Discovery version and may differ on WoW Forever |

## Requirements

- WoW Forever client (`## Interface: 16001`)
- [RXPGuides](https://www.restedxp.com/) installed (required dependency)
- [Questie](https://github.com/Questie/Questie) is recommended. Some Ravenholdt steps have no waypoint and rely on Questie map icons.

## Installation

1. Download or clone this repo.
2. Put the `RXPGuides_Rogue` folder in your AddOns directory:
   ```
   World of Warcraft/_forever_/Interface/AddOns/RXPGuides_Rogue
   ```
3. Make sure **RXPGuides** is installed and enabled.
4. Restart the game (or `/reload`) and open the RestedXP guide list. The guides are under **Rogue Guides**.

## Files

| File | Guide |
|---|---|
| `RXPGuides_Rogue.toc` | Addon manifest and load order |
| `Lockpicking.lua` | Lockpicking 1-300 |
| `SleepingBag.lua` | Cozy Sleeping Bag hidden quest chain |
| `Poisons.lua` | Level 20 Poisons quest chain |
| `HornOfXelthos.lua` | SFK: The Horn of Xelthos |
| `EyeOfBhossca.lua` | SM: The Eye of Bhossca |
| `TalismanOfKazdor.lua` | ZF: The Talisman of Kazdor |
| `Ravenholdt.lua` | Ravenholdt intro, reputation and Azure Key chain |

Each file calls `RXPGuides.RegisterGuide` with a guide written in the RestedXP guide format. To add a guide, create a new `.lua` file in the same format and add it to `RXPGuides_Rogue.toc`.

## Feedback

Spotted a wrong coordinate or a step that doesn't match WoW Forever? Open an issue or PR.
