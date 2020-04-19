import mods.thermalexpansion.Pulverizer;

# fix infinite clay dupe
Pulverizer.removeRecipe(<minecraft:clay>);
Pulverizer.addRecipe(<minecraft:clay_ball> * 2, <minecraft:clay>, 1500, <appliedenergistics2:material:2>, 80);