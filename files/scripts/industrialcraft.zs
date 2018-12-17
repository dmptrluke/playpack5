#modloaded ic2
print("Initializing industrialcraft.zs");

import mods.thermalexpansion.Pulverizer;
import mods.thermalexpansion.Compacter;


# add other mod machine support for clay dust
Pulverizer.addRecipe(<ic2:dust:1> * 2, <minecraft:clay>, 4000);

# add other mod machine support for dense plates
Compactor.addStorageRecipe(<ic2:plate:9>, <thermalfoundation:material:355> * 9, 6500); # bronze
Compactor.addStorageRecipe(<ic2:plate:10>, <thermalfoundation:material:320> * 9, 6500); # copper
Compactor.addStorageRecipe(<ic2:plate:11>, <thermalfoundation:material:33> * 9, 6500); # gold
Compactor.addStorageRecipe(<ic2:plate:12>, <thermalfoundation:material:32> * 9, 6500); # iron
Compactor.addStorageRecipe(<ic2:plate:13>, <ic2:plate:4> * 9, 6500); # lapis
Compactor.addStorageRecipe(<ic2:plate:14>, <thermalfoundation:material:323> * 9, 6500); # lead
Compactor.addStorageRecipe(<ic2:plate:15>, <ic2:plate:6> * 9, 6500); # obsidian
Compactor.addStorageRecipe(<ic2:plate:16>, <thermalfoundation:material:352> * 9, 6500); # steel
Compactor.addStorageRecipe(<ic2:plate:17>, <thermalfoundation:material:321> * 9, 6500); # tin