# remove vanilla recipes
recipes.remove(<waystones:waystone>);
recipes.remove(<waystones:warp_stone>);
recipes.remove(<waystones:bound_scroll>);
recipes.remove(<waystones:warp_scroll>);
recipes.remove(<waystones:return_scroll>);

# add recipes that make use of BoP gems
recipes.addShapedMirrored(<waystones:bound_scroll> * 4, [[<minecraft:paper>, <ore:gemPeridot>, <minecraft:paper>],[<minecraft:ender_pearl>, <ore:nuggetGold>, <minecraft:ender_pearl>], [null, <ore:paper>, null]]);
recipes.addShapedMirrored(<waystones:warp_scroll> * 4, [[<minecraft:paper>, <ore:gemPeridot>, <minecraft:paper>],[<minecraft:ender_pearl>, <minecraft:ender_eye>, <minecraft:ender_pearl>], [null, <ore:paper>, null]]);
recipes.addShapedMirrored(<waystones:return_scroll> * 4, [[<minecraft:paper>, <ore:gemPeridot>, <minecraft:paper>],[<ore:nuggetGold>, <minecraft:ender_pearl>, <ore:nuggetGold>], [null, <ore:paper>, null]]);

# and mystical gems!
recipes.addShaped(<waystones:warp_stone>, [[<ore:gemAmethyst>, <minecraft:ender_pearl>, <ore:gemAmethyst>],[<minecraft:ender_pearl>, <ore:gemEmerald>, <minecraft:ender_pearl>], [<ore:gemAmethyst>, <minecraft:ender_pearl>, <ore:gemAmethyst>]]);
