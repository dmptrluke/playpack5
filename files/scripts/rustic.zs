#modloaded rustic
print("Initializing rustic.zs");

# remove a few things
mods.jei.JEI.removeAndHide(<rustic:chandelier>);
mods.jei.JEI.removeAndHide(<rustic:candle>);

# remove the third bee system from the server 
mods.jei.JEI.removeAndHide(<rustic:bee>);
mods.jei.JEI.removeAndHide(<rustic:beehive>);
mods.jei.JEI.removeAndHide(<rustic:apiary>);
mods.jei.JEI.removeAndHide(<rustic:honeycomb>);
mods.jei.JEI.removeAndHide(<rustic:beeswax>);
mods.jei.JEI.removeAndHide(<rustic:tallow>);

# tweak fertile soil

recipes.remove(<rustic:fertile_soil>);
recipes.addShapedMirrored(<rustic:fertile_soil>, [[<ore:dirt>, <minecraft:dye:15>, null],[<minecraft:dye:15>, <ore:dirt>, null], [null, null, null]]);

# fix elixir recipes
val regenElixir = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:regeneration", Duration: 900, Amplifier: 0}]});
val regenAdvancedElixir = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:regeneration", Duration: 1800, Amplifier: 0}]});
val regenIIElixir = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:regeneration", Duration: 450, Amplifier: 1}]});

mods.rustic.Condenser.removeRecipe(regenElixir);
mods.rustic.Condenser.removeRecipe(regenAdvancedElixir);
mods.rustic.Condenser.removeRecipe(regenIIElixir);

mods.rustic.Condenser.addRecipe(regenElixir, <rustic:cohosh>, <forestry:honey_drop>);
mods.rustic.Condenser.addRecipe(regenAdvancedElixir, <rustic:horsetail>, [<rustic:cohosh>, <forestry:honey_drop>]);
mods.rustic.Condenser.addRecipe(regenIIElixir, <rustic:marsh_mallow>, [<rustic:cohosh>, <forestry:honeydew>]); 

# fix recipe conflict
recipes.remove(<rustic:iron_lattice>);
recipes.addShaped(<rustic:iron_lattice> * 4, [[null, <minecraft:iron_bars>, null],[<minecraft:iron_bars>, null, <minecraft:iron_bars>], [null, <minecraft:iron_bars>, null]]);