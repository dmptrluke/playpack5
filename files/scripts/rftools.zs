#modloaded rftools
print("Initializing rftools.zs");

# add more techstuff to the machine frame
recipes.remove(<rftools:machine_frame>);
recipes.addShaped(<rftools:machine_frame>, [[<ore:ingotIron>, <ore:nuggetGold>, <ore:ingotIron>],[<ore:dyeBlue>, null, <ore:dyeBlue>], [<ore:ingotIron>, <ore:gearCopper>, <ore:ingotIron>]]);

# techify coal generators
recipes.remove(<rftools:coalgenerator>);
recipes.addShaped(<rftools:coalgenerator>, [[null, <minecraft:furnace>, null],[<ore:ingotIron>, <rftools:machine_frame>, <ore:ingotIron>], [<ore:ingotTin>, <ore:dustRedstone>, <ore:ingotTin>]]);

# no powercells
mods.jei.JEI.removeAndHide(<rftools:powercell_simple>);
mods.jei.JEI.hide(<rftools:powercell_creative>);
mods.jei.JEI.removeAndHide(<rftools:powercell_advanced>);
mods.jei.JEI.removeAndHide(<rftools:powercell>);
mods.jei.JEI.removeAndHide(<rftools:powercell_card>);

# no quarries yet
mods.jei.JEI.removeAndHide(<rftools:shape_card:2>);
mods.jei.JEI.removeAndHide(<rftools:shape_card:3>);
mods.jei.JEI.removeAndHide(<rftools:shape_card:4>);
mods.jei.JEI.removeAndHide(<rftools:shape_card:5>);
mods.jei.JEI.removeAndHide(<rftools:shape_card:6>);
mods.jei.JEI.removeAndHide(<rftools:shape_card:7>);

# techify storage scanners
recipes.remove(<rftools:storage_scanner>);
recipes.addShaped(<rftools:storage_scanner>, [[<ore:ingotGold>, <minecraft:redstone>, <ore:ingotGold>],[<minecraft:ender_pearl>, <rftools:machine_frame>, <minecraft:ender_pearl>], [<ore:plateInvar>, <ore:gearIron>, <ore:plateInvar>]]);

# more expensive enviromental things
recipes.remove(<rftools:environmental_controller>);
recipes.addShaped(<rftools:environmental_controller>, [[null, <minecraft:beacon>, null],[<ore:plateInvar>, <rftools:machine_frame>, <ore:plateInvar>], [<minecraft:obsidian>, <ore:blockEmerald>, <minecraft:obsidian>]]);

recipes.remove(<rftools:luck_module>);
recipes.remove(<rftools:glowing_module>);
recipes.remove(<rftools:nightvision_module>);
recipes.remove(<rftools:waterbreathing_module>);
recipes.remove(<rftools:peaceful_module>);
recipes.remove(<rftools:flight_module>);
recipes.remove(<rftools:featherfalling_module>);
recipes.remove(<rftools:saturation_module>);
recipes.remove(<rftools:haste_module>);
recipes.remove(<rftools:speed_module>);
recipes.remove(<rftools:regeneration_module>);

recipes.addShaped(<rftools:luck_module>, [[null, <rftools:syringe>.withTag({mobName: "Shulker", level: 10, mobId: "minecraft:shulker"}), null],[<ore:gemTanzanite>, <ore:plateGold>, <ore:gemTanzanite>], [null, <minecraft:redstone>, null]]);
recipes.addShaped(<rftools:glowing_module>, [[null, <rftools:syringe>.withTag({mobName: "Blaze", level: 10, mobId: "minecraft:blaze"}), null],[<ore:gemTanzanite>, <ore:plateGold>, <ore:gemTanzanite>], [null, <minecraft:redstone>, null]]);
recipes.addShaped(<rftools:nightvision_module>, [[null, <rftools:syringe>.withTag({mobName: "Cave Spider", level: 10, mobId: "minecraft:cave_spider"}), null],[<ore:gemTanzanite>, <ore:plateGold>, <ore:gemTanzanite>], [null, <minecraft:redstone>, null]]);
recipes.addShaped(<rftools:waterbreathing_module>, [[null, <rftools:syringe>.withTag({mobName: "Guardian", level: 10, mobId: "minecraft:guardian"}), null],[<ore:gemTanzanite>, <ore:plateGold>, <ore:gemTanzanite>], [null, <minecraft:redstone>, null]]);
recipes.addShaped(<rftools:peaceful_module>, [[null, <rftools:peace_essence>, null],[<ore:gemTanzanite>, <ore:plateGold>, <ore:gemTanzanite>], [null, <minecraft:redstone>, null]]);
recipes.addShaped(<rftools:flight_module>, [[null, <rftools:syringe>.withTag({mobName: "Ghast", level: 10, mobId: "minecraft:ghast"}), null],[<ore:gemTanzanite>, <ore:plateGold>, <ore:gemTanzanite>], [null, <minecraft:redstone>, null]]);
recipes.addShaped(<rftools:featherfalling_module>, [[null, <rftools:syringe>.withTag({mobName: "Chicken", level: 10, mobId: "minecraft:chicken"}), null],[<ore:gemTanzanite>, <ore:plateGold>, <ore:gemTanzanite>], [null, <minecraft:redstone>, null]]);
recipes.addShaped(<rftools:saturation_module>, [[null, <rftools:syringe>.withTag({mobName: "Zombie", level: 10, mobId: "minecraft:zombie"}), null],[<ore:gemTanzanite>, <ore:plateGold>, <ore:gemTanzanite>], [null, <minecraft:redstone>, null]]);
recipes.addShaped(<rftools:haste_module>, [[null, <minecraft:diamond_pickaxe>.withTag({ench: [{lvl: 3 as short, id: 32 as short}]}), null],[<ore:gemTanzanite>, <ore:plateGold>, <ore:gemTanzanite>], [null, <minecraft:redstone>, null]]);
recipes.addShaped(<rftools:speed_module>, [[null, <rftools:syringe>.withTag({mobName: "Horse", level: 10, mobId: "minecraft:horse"}), null],[<ore:gemTanzanite>, <ore:plateGold>, <ore:gemTanzanite>], [null, <minecraft:redstone>, null]]);
recipes.addShaped(<rftools:regeneration_module>, [[null, <rftools:syringe>.withTag({mobName: "Iron Golem", level: 10, mobId: "minecraft:villager_golem"}), null],[<ore:gemTanzanite>, <ore:plateGold>, <ore:gemTanzanite>], [null, <minecraft:redstone>, null]]);

# more expensive storage modules
recipes.remove(<rftools:storage_module>);
recipes.addShaped(<rftools:storage_module>, [[null, <ore:dustRedstone>, null],[<ore:crystalCertusQuartz>, <ironchest:iron_chest>, <ore:crystalCertusQuartz>], [<thermalfoundation:material:33>, <ore:crystalCertusQuartz>, <thermalfoundation:material:33>]]);

# processing recipes for dimensional shard ore from RFTools
# source: dw20
furnace.addRecipe(<rftools:dimensional_shard>, <rftools:dimensional_shard_ore:0>, 0.7);
furnace.addRecipe(<rftools:dimensional_shard>, <rftools:dimensional_shard_ore:1>, 0.7);
furnace.addRecipe(<rftools:dimensional_shard>, <rftools:dimensional_shard_ore:2>, 0.7);

if(loadedMods.contains("immersiveengineering")){
    mods.immersiveengineering.Crusher.addRecipe(<rftools:dimensional_shard> * 3, <rftools:dimensional_shard_ore:0>, 6000);
    mods.immersiveengineering.Crusher.addRecipe(<rftools:dimensional_shard> * 3, <rftools:dimensional_shard_ore:1>, 6000);
    mods.immersiveengineering.Crusher.addRecipe(<rftools:dimensional_shard> * 3, <rftools:dimensional_shard_ore:2>, 6000);
}

if(loadedMods.contains("thermalexpansion")){
    mods.thermalexpansion.Pulverizer.addRecipe(<rftools:dimensional_shard> * 3, <rftools:dimensional_shard_ore:0>, 4000);
    mods.thermalexpansion.Pulverizer.addRecipe(<rftools:dimensional_shard> * 3, <rftools:dimensional_shard_ore:1>, 4000);
    mods.thermalexpansion.Pulverizer.addRecipe(<rftools:dimensional_shard> * 3, <rftools:dimensional_shard_ore:2>, 4000);
    mods.thermalexpansion.RedstoneFurnace.addRecipe(<rftools:dimensional_shard>, <rftools:dimensional_shard_ore:0>, 2000);
    mods.thermalexpansion.RedstoneFurnace.addRecipe(<rftools:dimensional_shard>, <rftools:dimensional_shard_ore:1>, 2000);
    mods.thermalexpansion.RedstoneFurnace.addRecipe(<rftools:dimensional_shard>, <rftools:dimensional_shard_ore:2>, 2000);
}