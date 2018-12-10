# remove vanilla recipes
recipes.remove(<waystones:waystone>);
recipes.remove(<waystones:warp_stone>);
recipes.remove(<waystones:bound_scroll>);
recipes.remove(<waystones:warp_scroll>);
recipes.remove(<waystones:return_scroll>);

# add recipes that make use of BoP gems
recipes.addShaped(<waystones:waystone>, [[null, <appliedenergistics2:smooth_sky_stone_block>, null],[<appliedenergistics2:smooth_sky_stone_block>, <waystones:warp_stone>, <appliedenergistics2:smooth_sky_stone_block>], [<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>]]);
recipes.addShaped(<waystones:warp_stone>, [[<ore:gemTanzanite>, <minecraft:ender_pearl>, <ore:gemTanzanite>],[<minecraft:ender_pearl>, <ore:gemEmerald>, <minecraft:ender_pearl>], [<ore:gemTanzanite>, <minecraft:ender_pearl>, <ore:gemTanzanite>]]);
recipes.addShapedMirrored(<waystones:bound_scroll> * 3, [[<minecraft:paper>, <ore:gemPeridot>, <minecraft:paper>],[<ore:nuggetGold>, <minecraft:ender_eye>, <ore:nuggetGold>], [null, <ore:paper>, null]]);
recipes.addShapedMirrored(<waystones:warp_scroll> * 3, [[<minecraft:paper>, <ore:gemPeridot>, <minecraft:paper>],[<minecraft:ender_pearl>, <minecraft:ender_eye>, <minecraft:ender_pearl>], [null, <ore:paper>, null]]);
recipes.addShapedMirrored(<waystones:return_scroll> * 3, [[<minecraft:paper>, <ore:gemPeridot>, <minecraft:paper>],[<ore:nuggetGold>, <minecraft:ender_pearl>, <ore:nuggetGold>], [null, <ore:paper>, null]]);