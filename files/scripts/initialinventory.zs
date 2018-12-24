# give a user basic starting items
mods.initialinventory.InvHandler.addStartingItem(<minecraft:stone_sword>, 0);
mods.initialinventory.InvHandler.addStartingItem(<tconstruct:pickaxe>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 4.0 as float, FreeModifiers: 3, Durability: 195, HarvestLevel: 1, Attack: 3.0 as float}, display: {Name: "Crude Pickaxe"}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 4.0 as float, FreeModifiers: 2, Durability: 156, HarvestLevel: 1, Attack: 3.0 as float}, Special: {Categories: ["aoe", "harvest", "tool"]}, TinkerData: {Materials: ["treatedwood", "stone", "flint"], Modifiers: []}, Modifiers: [{identifier: "ecological", color: -10144478, level: 1}, {identifier: "cheapskate", color: -6710887, level: 1}, {identifier: "crude", color: -9868951, level: 1, crude1: 1 as byte}], Traits: ["ecological", "cheapskate", "crude1"]}), 1);
mods.initialinventory.InvHandler.addStartingItem(<consecration:fire_stick>, 2);

mods.initialinventory.InvHandler.addStartingItem(<comforts:sleeping_bag:14>, 6);
mods.initialinventory.InvHandler.addStartingItem(<harvestcraft:gardensoupitem> * 16, 7);

# start with partial leather armor.
mods.initialinventory.InvHandler.addStartingItem(<minecraft:leather_chestplate>, 38);
mods.initialinventory.InvHandler.addStartingItem(<minecraft:leather_leggings>, 37);
mods.initialinventory.InvHandler.addStartingItem(<minecraft:leather_boots>, 36);