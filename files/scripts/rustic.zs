#modloaded rustic
print("Initializing rustic.zs");


# remove the third bece system from the server 
mods.jei.JEI.removeAndHide(<rustic:bee>);
mods.jei.JEI.removeAndHide(<rustic:beehive>);
mods.jei.JEI.removeAndHide(<rustic:apiary>);

# tweak fertile soil

recipes.remove(<rustic:fertile_soil>);
recipes.addShapeless(<rustic:fertile_soil> * 2, [<ore:dirt>, <minecraft:dye:15>, <minecraft:dye:15>]);


# fix recipe conflict
recipes.remove(<rustic:iron_lattice>);
recipes.addShaped(<rustic:iron_lattice> * 4, [[null, <minecraft:iron_bars>, null],[<minecraft:iron_bars>, null, <minecraft:iron_bars>], [null, <minecraft:iron_bars>, null]]);