#modloaded biomesoplenty
print("Initializing biomesoplenty.zs")

# fuck weird dirts
<ore:dirt>.add(<biomesoplenty:dirt:8>); # coarse loamy dirt
<ore:dirt>.add(<biomesoplenty:dirt:1>); # sandy dirt
<ore:dirt>.add(<biomesoplenty:dirt:9>); # coarse sandy dirt
<ore:dirt>.add(<biomesoplenty:dirt:2>); # silty dirt
<ore:dirt>.add(<biomesoplenty:dirt:10>); # coarse silty dirt

# fuck it more
mods.thermalexpansion.Centrifuge.addRecipe([<minecraft:dirt>], <biomesoplenty:dirt:*>, null, 500);
mods.thermalexpansion.Centrifuge.addRecipe([<minecraft:dirt>], <minecraft:dirt:1>, null, 500);

# no berries
<ore:listAllfruit>.add(<biomesoplenty:berries>);
<ore:listAllberry>.add(<biomesoplenty:berries>);

# fancier gems
recipes.removeByRecipeName("biomesoplenty:terrestrial_artifact");
recipes.addShapeless("terrestrial_artifact", <biomesoplenty:terrestrial_artifact>, [<biomesoplenty:gem:1>, <biomesoplenty:gem:3>, <biomesoplenty:gem:7>, <biomesoplenty:gem:2>, <biomesoplenty:gem:5>, <biomesoplenty:gem:6>, <biomesoplenty:gem:4>, <minecraft:emerald:*>, <rftools:dimensional_shard>]);

# rename nether hives
<biomesoplenty:hive:0>.displayName = "Hive Block";
<biomesoplenty:hive:1>.displayName = "Nethercomb Block";
<biomesoplenty:hive:2>.displayName = "Empty Nethercomb Block";
<biomesoplenty:hive:3>.displayName = "Filled Nethercomb Block";

<biomesoplenty:honeycomb>.displayName = "Nethercomb";
<biomesoplenty:filled_honeycomb>.displayName = "Filled Nethercomb";

# add blocks to the oredict
<ore:blockAmethyst>.add(<biomesoplenty:gem_block:0>);
<ore:blockRuby>.add(<biomesoplenty:gem_block:1>);
<ore:blockPeridot>.add(<biomesoplenty:gem_block:2>);
<ore:blockTopaz>.add(<biomesoplenty:gem_block:3>);
<ore:blockTanzanite>.add(<biomesoplenty:gem_block:4>);
<ore:blockMalachite>.add(<biomesoplenty:gem_block:5>);
<ore:blockSapphire>.add(<biomesoplenty:gem_block:6>);
<ore:blockAmber>.add(<biomesoplenty:gem_block:7>);

 # make things useful!
recipes.addShapeless("flaxtostring", <minecraft:string>, [<ore:plantFlax>, <ore:plantFlax>]);

if(loadedMods.contains("harvestcraft")){
    recipes.addShapeless("rootsmakebeer", <harvestcraft:rootbeersodaitem>, [<harvestcraft:potitem>, <harvestcraft:bubblywateritem>, <ore:listAllsugar>, <biomesoplenty:plant_1:9>]);

    # make rice and barley useful
    <biomesoplenty:plant_1:11>.displayName = "Wild Barley";
    recipes.addShapeless(<harvestcraft:barleyitem>, [<ore:plantBarley>, <ore:plantBarley>, <ore:plantBarley>]);
    recipes.addShapeless(<harvestcraft:riceitem>, [<ore:plantWildrice>, <ore:plantWildrice>, <ore:plantWildrice>]);
}


