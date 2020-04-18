import mods.jei.JEI;
import mods.thermalexpansion.Pulverizer;

# remove harvestcraft bees
JEI.removeAndHide(<harvestcraft:apiary>);
JEI.removeAndHide(<harvestcraft:beehive>);
JEI.removeAndHide(<harvestcraft:grubitem>);
JEI.removeAndHide(<harvestcraft:queenbeeitem>);
JEI.removeAndHide(<harvestcraft:royaljellyitem>);

# remove duplicate crops
JEI.removeAndHide(<harvestcraft:grapeitem>);
JEI.removeAndHide(<harvestcraft:grapeseeditem>);
JEI.removeAndHide(<harvestcraft:eggplantitem>);
JEI.removeAndHide(<harvestcraft:eggplantseeditem>);
JEI.removeAndHide(<harvestcraft:tomatoitem>);
JEI.removeAndHide(<harvestcraft:tomatoseeditem>);
JEI.removeAndHide(<harvestcraft:chilipepperitem>);
JEI.removeAndHide(<harvestcraft:chilipepperseeditem>);

JEI.removeAndHide(<harvestcraft:oliveitem>);
JEI.removeAndHide(<harvestcraft:olive_sapling>);
JEI.removeAndHide(<harvestcraft:pamolive>);

# add forestry wax pressing
recipes.addShapeless(<harvestcraft:beeswaxitem>, [<forestry:beeswax>]);

# remove things I don't like 
JEI.removeAndHide(<harvestcraft:market>);
JEI.removeAndHide(<harvestcraft:shippingbin>);

# give traps proper oredict recipes
recipes.remove(<harvestcraft:groundtrap>);
recipes.remove(<harvestcraft:watertrap>);
recipes.addShaped(<harvestcraft:groundtrap>, [[<ore:stickWood>, <ore:trapdoorWood>, <ore:stickWood>],[<ore:string>, <ore:chestWood>, <ore:string>], [<ore:stickWood>, <ore:string>, <ore:stickWood>]]);
recipes.addShaped(<harvestcraft:watertrap>, [[<ore:stickWood>, <minecraft:fishing_rod>, <ore:stickWood>],[<ore:string>, <ore:chestWood>, <ore:string>], [<ore:stickWood>, <ore:string>, <ore:stickWood>]]);

# add meat pulverisation
Pulverizer.addRecipe(<harvestcraft:groundturkeyitem> * 2, <harvestcraft:turkeyrawitem>, 1500);
Pulverizer.addRecipe(<harvestcraft:groundturkeyitem> * 2, <familiarfauna:turkey_leg_raw>, 1500);
Pulverizer.addRecipe(<harvestcraft:groundduckitem> * 2, <harvestcraft:duckrawitem>, 1500);
Pulverizer.addRecipe(<harvestcraft:groundmuttonitem> * 2, <minecraft:mutton>, 1500);
Pulverizer.addRecipe(<harvestcraft:groundvenisonitem> * 2, <familiarfauna:venison_raw>, 1500);
Pulverizer.addRecipe(<harvestcraft:groundvenisonitem> * 2, <mysticalworld:venison>, 1500);
Pulverizer.addRecipe(<harvestcraft:groundvenisonitem> * 2, <harvestcraft:venisonrawitem>, 1500);

# oredict quark frog legs
<ore:foodFrogRaw>.add(<quark:frog_leg>);

# add harvestcraft recipes for mysticalworld thatch
recipes.addShaped("dmptr_thatchrye", <mysticalworld:thatch>,
 [[<harvestcraft:ryeitem>,<harvestcraft:ryeitem>],
  [<harvestcraft:ryeitem>,<harvestcraft:ryeitem>]]);

recipes.addShaped("dmptr_thatchbarley", <mysticalworld:thatch>,
 [[<harvestcraft:barleyitem>,<harvestcraft:barleyitem>],
  [<harvestcraft:barleyitem>,<harvestcraft:barleyitem>]]);
