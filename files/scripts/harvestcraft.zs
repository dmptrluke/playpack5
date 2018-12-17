#modloaded harvestcraft thermalexpansion
print("Initializing harvestcraft.zs");

import mods.thermalexpansion.Pulverizer;
import mods.jei.JEI;

# remove harvestcraft bees
JEI.removeAndHide(<harvestcraft:apiary>);
JEI.removeAndHide(<harvestcraft:beehive>);
JEI.removeAndHide(<harvestcraft:grubitem>);
JEI.removeAndHide(<harvestcraft:queenbeeitem>);
JEI.removeAndHide(<harvestcraft:royaljellyitem>);

# add forestry wax pressing
recipes.addShapeless(<harvestcraft:beeswaxitem>, [<forestry:beeswax>]);

# remove things I don't like 
JEI.removeAndHide(<harvestcraft:presser>);
JEI.removeAndHide(<harvestcraft:shippingbin>);

# give traps proper oredict recipes
recipes.remove(<harvestcraft:groundtrap>);
recipes.remove(<harvestcraft:watertrap>);
recipes.addShaped(<harvestcraft:groundtrap>, [[<ore:stickWood>, <ore:trapdoorWood>, <ore:stickWood>],[<minecraft:string>, <ore:chestWood>, <minecraft:string>], [<ore:stickWood>, <minecraft:string>, <ore:stickWood>]]);
recipes.addShaped(<harvestcraft:watertrap>, [[<ore:stickWood>, <minecraft:fishing_rod>, <ore:stickWood>],[<minecraft:string>, <ore:chestWood>, <minecraft:string>], [<ore:stickWood>, <minecraft:string>, <ore:stickWood>]]);

# add meat pulverisation
Pulverizer.addRecipe(<harvestcraft:groundturkeyitem> * 2, <harvestcraft:turkeyrawitem>, 1500);
Pulverizer.addRecipe(<harvestcraft:groundturkeyitem> * 2, <familiarfauna:turkey_leg_raw>, 1500);
Pulverizer.addRecipe(<harvestcraft:groundduckitem> * 2, <harvestcraft:duckrawitem>, 1500);
Pulverizer.addRecipe(<harvestcraft:groundmuttonitem> * 2, <minecraft:mutton>, 1500);
Pulverizer.addRecipe(<harvestcraft:groundvenisonitem> * 2, <familiarfauna:venison_raw>, 1500);
Pulverizer.addRecipe(<harvestcraft:groundvenisonitem> * 2, <harvestcraft:venisonrawitem>, 1500);