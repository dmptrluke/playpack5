#modloaded mekanism
print("Initializing mekanism.zs");

# replace iron with invar in enriched alloy
mods.mekanism.infuser.removeRecipe(<mekanism:enrichedalloy>);
mods.mekanism.infuser.addRecipe("REDSTONE", 10, <thermalfoundation:material:162>, <mekanism:enrichedalloy>);

# disable atomic disassembler
mods.jei.JEI.removeAndHide(<mekanism:atomicdisassembler>);

# disable Mek power wiring
mods.jei.JEI.removeAndHide(<mekanism:transmitter:0>.withTag({tier: 0}));
mods.jei.JEI.removeAndHide(<mekanism:transmitter:0>.withTag({tier: 1}));
mods.jei.JEI.removeAndHide(<mekanism:transmitter:0>.withTag({tier: 2}));
mods.jei.JEI.removeAndHide(<mekanism:transmitter:0>.withTag({tier: 3}));

# fluids
mods.jei.JEI.removeAndHide(<mekanism:transmitter:1>.withTag({tier: 0}));
mods.jei.JEI.removeAndHide(<mekanism:transmitter:1>.withTag({tier: 1}));
mods.jei.JEI.removeAndHide(<mekanism:transmitter:1>.withTag({tier: 2}));
mods.jei.JEI.removeAndHide(<mekanism:transmitter:1>.withTag({tier: 3}));

# items, blocks
mods.jei.JEI.removeAndHide(<mekanism:transmitter:3>.withTag({tier: 0}));
mods.jei.JEI.removeAndHide(<mekanism:transmitter:3>.withTag({tier: 1}));
mods.jei.JEI.removeAndHide(<mekanism:transmitter:3>.withTag({tier: 2}));
mods.jei.JEI.removeAndHide(<mekanism:transmitter:3>.withTag({tier: 3}));