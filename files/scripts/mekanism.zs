import mods.mekanism.infuser;

# replace iron with invar in enriched alloy
infuser.removeRecipe(<mekanism:enrichedalloy>);
infuser.addRecipe("REDSTONE", 10, <thermalfoundation:material:162>, <mekanism:enrichedalloy>);