#modloaded appliedenergistics2
print("Initializing appliedenergistics.zs");

# make cobble/gravel/sand recipes match expectations
mods.appliedenergistics2.Grinder.removeRecipe(<minecraft:gravel>);
mods.appliedenergistics2.Grinder.addRecipe(<minecraft:sand>, <minecraft:gravel>, 4, <minecraft:flint>, 0.3);
mods.appliedenergistics2.Grinder.addRecipe(<minecraft:gravel>, <minecraft:cobblestone>, 4);

# remove (possible) exploit
mods.appliedenergistics2.Grinder.removeRecipe(<mekanism:crystal:*>);