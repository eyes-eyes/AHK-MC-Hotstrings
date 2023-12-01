;------------------------------------------------------------------------------
; INTRODUCTION
; This is an AutoHotKey script that replaces phrases with words corresponding
; to them geared towards minecraft topics/groups. 
; Made by eyeseyes_real - 714208315911045202 on discord
;
; This is to quickly type out tags for an image
;------------------------------------------------------------------------------
; Settings
;------------------------------------------------------------------------------
#NoEnv ; For security
#SingleInstance force
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetKeyDelay, -1
SetWinDelay, 0 

;------------------------------------------------------------------------------
; The list of variables containing the corresponding words
; For MINECRAFT
;------------------------------------------------------------------------------
MCArmors := "diamond armor, gold armor, iron armor, chainmail armor, leather armor, "
NetheriteArmor := "netherite helmet, netherite chestplate, netherite leggings, netherite boots, "
DiamondArmor := "diamond helmet, diamond chestplate, diamond leggings, diamond boots, "
GoldArmor := "gold helmet, gold chestplate, gold leggings, gold boots, "
IronArmor := "iron helmet, iron chestplate, iron leggings, iron boots, "
ChainmailArmor := "chainmail helmet, chainmail chestplate, chainmail leggings, chainmail boots, "
LeatherArmor := "leather helmet, leather cap, leather chestplate, leather leggings, leather pants, leather boots, "

MCTools := "diamond tools, gold tools, iron tools, stone tools, wooden tools, "
NetheriteTools := "netherite pickaxe, netherite axe, netherite shovel, netherite sword, netherite hoe, "
DiamondTools := "diamond pickaxe, diamond axe, diamond shovel, diamond sword, diamond hoe, "
GoldTools := "gold pickaxe, gold axe, gold shovel, gold sword, gold hoe, "
IronTools := "iron pickaxe, iron axe, iron shovel, iron sword, iron hoe, "
StoneTools := "stone pickaxe, stone axe, stone shovel, stone sword, stone hoe, "
WoodenTools := "wooden pickaxe, wooden axe, wooden shovel, wooden sword, wooden hoe, "

MCSaplings := "oak sapling, birch sapling, spruce sapling, jungle sapling, acacia sapling, dark oak sapling, mangrove propagule, "
MCLogs := "oak log, birch log, spruce log, jungle log, acacia log, dark oak log, mangrove log, "
MCPlanks := "oak planks, birch planks, spruce planks, jungle planks, acacia planks, dark oak planks, mangrove planks, "
MCBoats := "acacia boat, birch boat, dark oak boat, jungle boat, oak boat, spruce boat, mangrove boat, "
MCchestBoats := "acacia chest boat, birch chest boat, dark oak chest boat, jungle chest boat, oak chest boat, spruce chest boat, mangrove chest boat, "
MCDoors := "oak door, birch door, spruce door, jungle door, acacia door, dark oak door, mangrove door, "
MCTrapdoors := "oak trapdoor, birch trapdoor, spruce trapdoor, jungle trapdoor, acacia trapdoor, dark oak trapdoor, mangrove trapdoor, "
MCSigns := "oak sign, birch sign, spruce sign, jungle sign, acacia sign, dark oak sign, mangrove sign, "
MCHangingSigns := "oak hanging sign, birch hanging sign, spruce hanging sign, jungle hanging sign, acacia hanging sign, dark oak hanging sign, mangrove hanging sign, "
MCLeaves := "oak leaves, birch leaves, spruce leaves, jungle leaves, acacia leaves, dark oak leaves, mangrove leaves, "

MCBuckets := "water bucket, bucket, lava bucket, milk bucket, pufferfish bucket, salmon bucket, tadpole bucket, tropical fish bucket, axolotl bucket, cod bucket, powder snow bucket, "
MCBowls := "beetroot soup, mushroom stew, rabbit stew, suspicious stew, "
MCBooks := "book, enchanted book, book and quill, knowledge book, written book, "
MCcandles := "yellow candle, white candle, red candle, purple candle, pink candle, orange candle, magenta candle, lime candle, light gray candle, light blue candle, green candle, gray candle, cyan candle, candle, brown candle, blue candle, black candle, candle, "
MCFlowers := "poppy, red tulip, dandelion, orange tulip, blue orchid, cornflower, Allium, pink tulip, Lily of the valley, white tulip, azure bluet, Oxeye Daisy, wither rose, "
MCPotatoes := "baked potato, poisonous potato, potato, "
Minecarts := "tnt minecart, minecart, hopper minecart, furnace minecart, chest minecart, command block minecart, "
MCHorseArmors := "leather horse armor, iron horse armor, gold horse armor, diamond horse armor, "
MCRails := "powered rail, activator rail, rail, detector rail, rail corner, "
MCStones := "stone, cobblestone, mossy cobblestone, stone bricks, crack stone bricks, mossy stone bricks, chiseled stone bricks, smooth stone, smooth stone slab, "
MCIteStones := "granite, polished granite, diorite, polished diorite, andesite, polished andesite, "
MCSandStones := "sandstone, chiseled sandstone, cut sandstone, "
MCRedSandStones := "red sandstone, chiseled red sandstone, cut red sandstone, "
MCBlackStones := "blackstone, gilded blackstone, chiseled blackstone, polished blackstone, polished blackstone bricks, cracked polished blackstone bricks, "
MCObbies := "obsidian, crying obsidian, "
; MCObby := "obsidian, "
MCFungi := "red mushroom, brown mushroom, warped fungus, crimson fungus, "
MCDirts := "dirt, grass block, farmland, dirt path, podzol, snowy grass block, rooted dirt, coarse dirt, mycelium, "
MCSands := "sand, red sand, soul sand, suspicious sand, "

MCminerals := "diamond, iron ingot, iron nugget, gold ingot, gold nugget, redstone, charcoal, coal, lapis lazuli, emerald, quartz, "
MCOres := "Coal Ore, Iron Ore, Redstone Ore, Lapis Lazuli Ore, Gold Ore, Diamond Ore, Emerald Ore, Copper Ore, "
MCBlockOres := "Block of Coal, Block of Iron, Block of Redstone, Block of Lapis Lazuli, Block of Gold, Block of Emerald, Block of Diamond, Block of Copper, "
MCDeepslateOres := "Deepslate Coal Ore, Deepslate Iron Ore, Deepslate Gold Ore, Deepslate Redstone Ore, Deepslate Lapis Lazuli Ore, Deepslate Diamond Ore, Deepslate Emerald Ore, Deepslate Copper Ore, "
MCRawOres := "raw iron, raw gold, raw copper, "
MCRawBlockOres := "block of raw iron, block of raw gold, block of raw copper, "

MCBalls := "ender pearl, magma cream, slimeball, snowball, eye of ender, fire charge, egg, "
GoldCombo := "apple, golden apple, carrot, golden carrot, melon slice, glistering melon slice, "
MCMeats := "raw beef, cooked beef, raw chicken, cooked chicken, raw mutton, cooked mutton, raw porkchop, cooked porkchop, raw rabbit, cooked rabbit, raw cod, cooked cod, raw salmon, cooked salmon, "
VillagerWorkstations := "barrel, blast furnace, brewing stand, cartography table, cauldron, composter, fletching table, grindstone, lectern, loom, smithing table, smoker, stonecutter, "
MCTables := "crafting table, cartography table, fletching table, smithing table, enchanting table, "
MCBlockPlants := "melon, pumpkin, craved pumpkin, jack o' lantern, hay bale, "

;------------------------------------------------------------------------------
; The list of variables containing the corresponding words
; For generic minecraft terms
;------------------------------------------------------------------------------
Tools := "sword, axe, pickaxe, shovel, hoe, "
Axes := "diamond axe, iron axe, gold axe, stone axe, wooden axe, "
Shovels := "diamond shovel, iron shovel, gold shovel, stone shovel, wooden shovel, "
Swords := "diamond sword, iron sword, gold sword, stone sword, wooden sword, "
Hoes := "diamond hoe, iron hoe, gold hoe, stone hoe, wooden hoe, "
Pickaxes := "diamond pickaxe, iron pickaxe, gold pickaxe, stone pickaxe, wooden pickaxe, "

MCHelmets := "diamond helmet, iron helmet, gold helmet, chainmail helmet, leather helmet, leather cap, "
MCChestplates := "diamond chestplate, iron chestplate, gold chestplate, chainmail chestplate, leather chestplate, leather tunic, "
MCLeggings := "diamond leggings, iron leggings, gold leggings, chainmail leggings, leather leggings, leather pants, "
MCBoots := "diamond boots, iron boots, gold boots, chainmail boots, leather boots, "

;------------------------------------------------------------------------------
; Function to paste words corresponding to phrases
;------------------------------------------------------------------------------
Paste(InputVar)
{
ClipSaved := ClipboardAll
Sleep, 60
Clipboard := InputVar
Sleep, 280
Send, ^v
Sleep, 60
Clipboard := ClipSaved ; restore clipboard data
Sleep, 60
ClipSaved =
}
Return

;------------------------------------------------------------------------------
; The phrases - the main list
; Type ']' character then phrase to automatically replace with words
;------------------------------------------------------------------------------
::]mcarmors::
Paste(MCArmors)
Return
::]armors::
Paste(MCArmors)
Return
::]netheritearmor::
Paste(NetheriteArmor)
Return
::]diamondarmor::
Paste(DiamondArmor)
Return
::]diaarmor::
Paste(DiamondArmor)
Return
::]goldarmor::
Paste(GoldArmor)
Return
::]ironarmor::
Paste(IronArmor)
Return
::]chainmailarmor::
Paste(ChainmailArmor)
Return
::]leatherarmor::
Paste(WoodenTools)
Return

::]mctools::
Paste(MCTools)
Return
::]netheritetools::
Paste(NetheriteTools)
Return
::]diamondtools::
Paste(DiamondTools)
Return
::]diatools::
Paste(DiamondTools)
Return
::]goldtools::
Paste(GoldTools)
Return
::]irontools::
Paste(IronTools)
Return
::]stonetools::
Paste(StoneTools)
Return
::]woodtools::
Paste(WoodenTools)
Return
::]woodentools::
Paste(WoodenTools)
Return


::]mcsaplings::
Paste(MCSaplings)
Return
::]saplings::
Paste(MCSaplings)
Return
::]logs::
Paste(MCLogs)
Return
::]planks::
Paste(MCPlanks)
Return
::]boats::
Paste(MCBoats)
Return
::]mcboats::
Paste(MCBoats)
Return
::]chestboats::
Paste(MCchestBoats)
Return
::]mcchestboats::
Paste(MCchestBoats)
Return
::]doors::
Paste(MCDoors)
Return
::]mcdoors::
Paste(MCDoors)
Return
::]trapdoors::
Paste(MCTrapdoors)
Return
::]mctrapdoors::
Paste(MCTrapdoors)
Return
::]signs::
Paste(MCSigns)
Return
::]mcsigns::
Paste(MCSigns)
Return
::]hangingsigns::
Paste(MCSigns)
Return
::]mchangingsigns::
Paste(MCSigns)
Return
::]mcleaves::
Paste(MCLeaves)
Return
::]leaves::
Paste(MCLeaves)
Return

::]mcbuckets::
Paste(MCBuckets)
Return
::]buckets::
Paste(MCBuckets)
Return
::]books::
Paste(MCBooks)
Return
::]mcbooks::
Paste(MCBooks)
Return
::]mcbowls::
Paste(MCBowls)
Return
::]candles::
Paste(MCcandles)
Return
::]mcflowers::
Paste(MCFlowers)
Return
::]potatoes::
Paste(MCPotatoes)
Return
::]mcpotatoes::
Paste(MCPotatoes)
Return
::]minecarts::
Paste(Minecarts)
Return
::]horsearmors::
Paste(MCHorseArmors)
Return
::]rails::
Paste(MCRails)
Return
::]mcrails::
Paste(MCRails)
Return
::]stones::
Paste(MCStones)
Return
::]mcstones::
Paste(MCStones)
Return
::]itestones::
Paste(MCIteStones)
Return
::]mcitestones::
Paste(MCIteStones)
Return
::]sandstones::
Paste(MCSandStones)
Return
::]mcsandstones::
Paste(MCSandStones)
Return
::]redsandstones::
Paste(MCRedSandStones)
Return
::]mcredsandstones::
Paste(MCRedSandStones)
Return
::]blackstones::
Paste(MCBlackStones)
Return
::]mcblackstones::
Paste(MCBlackStones)
Return
::]obbies::
Paste(MCObbies)
Return
::]mcobbies::
Paste(MCObbies)
Return
::]obby::obsidian, 
Return
::]obi::obsidian, 
Return
::]mcfungi::
Paste(MCFungi)
Return
::]mcdirts::
Paste(MCDirts)
Return
::]mcsands::
Paste(MCSands)
Return

::]mcminerals::
Paste(MCminerals)
Return
::]ores::
Paste(MCOres)
Return
::]blockores::
Paste(MCBlockOres)
Return
::]deepslateores::
Paste(MCDeepslateOres)
Return
::]rawores::
Paste(MCRawOres)
Return
::]rawblockores::
Paste(MCRawBlockOres)
Return


::]balls::
Paste(MCBalls)
Return
::]mcballs::
Paste(MCBalls)
Return
::]goldcombo::
Paste(GoldCombo)
Return
::]mcmeats::
Paste(MCMeats)
Return
::]villagerworkstations::
Paste(VillagerWorkstations)
Return
::]mctables::
Paste(MCTables)
Return
::]mcblockplants::
Paste(MCBlockPlants)
Return

::]tools::
Paste(Tools)
Return
::]axes::
Paste(Axes)
Return
::]shovels::
Paste(Shovels)
Return
::]swords::
Paste(Swords)
Return
::]hoes::
Paste(Hoes)
Return
::]pickaxes::
Paste(Pickaxes)
Return
::]picks::
Paste(Pickaxes)
Return

::]mchelmets::
Paste(MCHelmets)
Return
::]mcchestplates::
Paste(MCChestplates)
Return
::]mcleggings::
Paste(MCLeggings)
Return
::]mcboots::
Paste(MCBoots)
Return