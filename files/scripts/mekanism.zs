#modloaded mekanism
print("Initializing mekanism.zs");

# replace iron with invar in enriched alloy
mods.mekanism.infuser.removeRecipe(<mekanism:enrichedalloy>);
mods.mekanism.infuser.addRecipe("REDSTONE", 10, <thermalfoundation:material:162>, <mekanism:enrichedalloy>);