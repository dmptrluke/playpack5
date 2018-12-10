import modtweaker.tconstruct.ITICMaterial;

# nerf top-tier weaponry somewhat
<ticmat:manyullyn>.attackHead = 7.72;
<ticmat:vibrant_alloy>.attackHead = 8;

# make EFLN a lot more expensive
recipes.remove(<tconstruct:throwball:1>);
recipes.addShaped(<tconstruct:throwball:1>, [[null, <minecraft:flint>, null],[<minecraft:flint>, <minecraft:tnt>, <minecraft:flint>], [null, <minecraft:flint>, null]]);
