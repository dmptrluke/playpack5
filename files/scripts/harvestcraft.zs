#modloaded harvestcraft thermalexpansion
print("Initializing harvestcraft.zs");

# remove harvestcraft bees
mods.jei.JEI.removeAndHide(<harvestcraft:apiary>);
mods.jei.JEI.removeAndHide(<harvestcraft:beehive>);
mods.jei.JEI.removeAndHide(<harvestcraft:grubitem>);
mods.jei.JEI.removeAndHide(<harvestcraft:queenbeeitem>);
mods.jei.JEI.removeAndHide(<harvestcraft:royaljellyitem>);

# add forestry wax pressing
recipes.addShapeless(<harvestcraft:beeswaxitem>, [<forestry:beeswax>]);

# remove things I don't like 
mods.jei.JEI.removeAndHide(<harvestcraft:presser>);
mods.jei.JEI.removeAndHide(<harvestcraft:shippingbin>);

# give traps proper oredict recipes
recipes.remove(<harvestcraft:groundtrap>);
recipes.remove(<harvestcraft:watertrap>);
recipes.addShaped(<harvestcraft:groundtrap>, [[<ore:stickWood>, <ore:trapdoorWood>, <ore:stickWood>],[<minecraft:string>, <ore:chestWood>, <minecraft:string>], [<ore:stickWood>, <minecraft:string>, <ore:stickWood>]]);
recipes.addShaped(<harvestcraft:watertrap>, [[<ore:stickWood>, <minecraft:fishing_rod>, <ore:stickWood>],[<minecraft:string>, <ore:chestWood>, <minecraft:string>], [<ore:stickWood>, <minecraft:string>, <ore:stickWood>]]);

# add meat pulverisation
mods.thermalexpansion.Pulverizer.addRecipe(<harvestcraft:groundturkeyitem> * 2, <harvestcraft:turkeyrawitem>, 1500);
mods.thermalexpansion.Pulverizer.addRecipe(<harvestcraft:groundturkeyitem> * 2, <familiarfauna:turkey_leg_raw>, 1500);
mods.thermalexpansion.Pulverizer.addRecipe(<harvestcraft:groundduckitem> * 2, <harvestcraft:duckrawitem>, 1500);
mods.thermalexpansion.Pulverizer.addRecipe(<harvestcraft:groundmuttonitem> * 2, <minecraft:mutton>, 1500);
mods.thermalexpansion.Pulverizer.addRecipe(<harvestcraft:groundvenisonitem> * 2, <familiarfauna:venison_raw>, 1500);
mods.thermalexpansion.Pulverizer.addRecipe(<harvestcraft:groundvenisonitem> * 2, <harvestcraft:venisonrawitem>, 1500);