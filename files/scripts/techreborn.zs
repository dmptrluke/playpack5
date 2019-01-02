#modloaded techreborn
print("Initializing techreborn.zs");

# add grindstone recipes for TR ores
mods.appliedenergistics2.Grinder.addRecipe(<techreborn:dust:5> * 2, <ore:oreBauxite>, 4, <thermalfoundation:material:68>, 0.1);
mods.appliedenergistics2.Grinder.addRecipe(<techreborn:dust:23> * 2, <ore:oreGalena>, 4, <thermalfoundation:material:66>, 0.1);
