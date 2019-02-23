#modloaded techreborn
import mods.immersiveengineering.ArcFurnace;
import mods.thermalexpansion.Pulverizer;
import mods.thermalexpansion.Centrifuge;

print("Initializing techreborn.zs");

# add grindstone recipes for TR ores
mods.appliedenergistics2.Grinder.addRecipe(<techreborn:dust:5>, <ore:oreBauxite>, 4, <techreborn:dust:5>, 0.9, <thermalfoundation:material:68>, 0.1);
mods.appliedenergistics2.Grinder.addRecipe(<techreborn:dust:23>, <ore:oreGalena>, 4, <techreborn:dust:23>, 0.9, <thermalfoundation:material:66>, 0.1);

# de-unify
ArcFurnace.removeRecipe(<techreborn:ingot:3>);
ArcFurnace.removeRecipe(<techreborn:ingot:14>);
ArcFurnace.removeRecipe(<techreborn:ingot:15>);

furnace.remove(<techreborn:ingot:14>);
furnace.remove(<techreborn:ingot:15>);

# make aluminum more common
Pulverizer.removeRecipe(<techreborn:ore:4>);
Pulverizer.addRecipe(<techreborn:dust:5> * 2, <techreborn:ore:4>, 3000, <thermalfoundation:material:68>, 40);
