# remove earthworks basic mud recipes
recipes.removeByRecipeName("earthworks:block_mud_alt");
recipes.removeByRecipeName("earthworks:block_mud");

# replace earthworks mud recipes with standard mud
recipes.replaceAllOccurences(<earthworks:block_mud>, <ore:blockMud>);
recipes.replaceAllOccurences(<earthworks:item_mud>, <ore:ballMud>);

# add earthworks mud to oredict
<ore:blockMud>.add(<earthworks:block_mud>);

# add nicer recipe for standard mud
recipes.addShaped(<biomesoplenty:mud> * 8, [[<ore:dirt>, <ore:dirt>, <ore:dirt>],[<ore:dirt>, <minecraft:water_bucket>, <ore:dirt>], [<ore:dirt>, <ore:dirt>, <ore:dirt>]]);
recipes.addShaped(<biomesoplenty:mudball> * 8, [[<ore:pileDirt>, <ore:pileDirt>, <ore:pileDirt>],[<ore:pileDirt>, <minecraft:water_bucket>, <ore:pileDirt>], [<ore:pileDirt>, <ore:pileDirt>, <ore:pileDirt>]]);

# remove earthworks mudballs
mods.jei.JEI.removeAndHide(<earthworks:item_mud>);

# remove dumb conflict tools
mods.jei.JEI.removeAndHide(<earthworks:tool_wood_hammer>);
mods.jei.JEI.removeAndHide(<earthworks:tool_stone_hammer>);
mods.jei.JEI.removeAndHide(<earthworks:tool_iron_hammer>);
mods.jei.JEI.removeAndHide(<earthworks:tool_gold_hammer>);
mods.jei.JEI.removeAndHide(<earthworks:tool_diamond_hammer>);
mods.jei.JEI.removeAndHide(<earthworks:tool_saw>);

# transform earthworks mud into wet mud
recipes.addShaped(<earthworks:block_mud> * 8, [[<biomesoplenty:mud>, <biomesoplenty:mud>, <biomesoplenty:mud>],[<biomesoplenty:mud>, <minecraft:water_bucket>, <biomesoplenty:mud>], [<biomesoplenty:mud>, <biomesoplenty:mud>, <biomesoplenty:mud>]]);
<earthworks:block_mud>.displayName = "Wet Mud";
<earthworks:itemslab_mud>.displayName = "Wet Mud Slab";
<earthworks:stair_mud>.displayName = "Wet Mud Stairs";
<earthworks:wall_mud>.displayName = "Wet Mud Wall";