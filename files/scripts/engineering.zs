import mods.thermalexpansion.InductionSmelter;
import mods.thermalexpansion.RedstoneFurnace;

import mods.immersiveengineering.Crusher;
import mods.immersiveengineering.CokeOven;

import mods.immersiveengineering.Excavator;

import mods.jei.JEI;

val engineering_slag = <immersiveengineering:material:7>;
val engineering_coke = <immersiveengineering:material:6>;
val engineering_cokeblock = <immersiveengineering:stone_decoration:3>;

val thermal_slag = <thermalfoundation:material:864>;
val thermal_coke = <thermalfoundation:material:802>;
val thermal_cokeblock = <thermalfoundation:storage_resource:1>;

# add conversion from Crude Slag to Slag
engineering_slag.displayName = "Crude Slag";

<ore:itemSlag>.remove(engineering_slag);
<ore:crystalSlag>.remove(engineering_slag);

InductionSmelter.addRecipe(thermal_slag, engineering_slag, <minecraft:sand>, 1500, <minecraft:iron_nugget>, 20);

# replace coke with TE coke
CokeOven.removeRecipe(engineering_coke);
CokeOven.addRecipe(thermal_coke, 500, <minecraft:coal>, 1600);

CokeOven.removeRecipe(engineering_cokeblock);
CokeOven.addRecipe(thermal_cokeblock, 5000, <minecraft:coal_block>, 1600*9);

# remove remaining evidence of IE coke
JEI.removeAndHide(engineering_cokeblock);
JEI.removeAndHide(engineering_coke);

# remove TE steel crafting recipes
InductionSmelter.removeRecipe(<ore:dustIron>.firstItem, <ore:dustCoal>.firstItem * 4);
InductionSmelter.removeRecipe(<ore:ingotIron>.firstItem, <ore:dustCoal>.firstItem * 4);

InductionSmelter.removeRecipe(<ore:dustIron>.firstItem, <ore:fuelCoke>.firstItem);
InductionSmelter.removeRecipe(<ore:ingotIron>.firstItem, <ore:fuelCoke>.firstItem);

InductionSmelter.removeRecipe(<ore:dustIron>.firstItem, <ore:dustCharcoal>.firstItem * 4); 
InductionSmelter.removeRecipe(<ore:ingotIron>.firstItem, <ore:dustCharcoal>.firstItem * 4);

# fix up TE coke
RedstoneFurnace.removePyrolysisRecipe(<minecraft:coal>);

# add more crusher recipes
Crusher.addRecipe(<minecraft:clay_ball> * 4, <minecraft:hardened_clay>, 2048);
Crusher.addRecipe(<minecraft:sand> * 2, <minecraft:sandstone>, 2048, <thermalfoundation:material:772>, 0.4);
Crusher.addRecipe(<minecraft:gravel>, <minecraft:netherrack>, 2048, <thermalfoundation:material:771>, 0.15);

# excavator
Excavator.removeMineral("Platinum");

Excavator.addMineral("Thorite", 25, 0.1, ["oreUranium", "oreThorium"], [0.5, 0.5]);
Excavator.addMineral("Boracite", 25, 0.1, ["oreBoron", "oreMagnesium"], [0.7, 0.3]);
Excavator.addMineral("Spodumene", 19, 0.1, ["oreLithium", "oreAluminum", "itemSilicon" ], [0.4, 0.4, 0.2]);
Excavator.addMineral("Felsic Minerals", 30, 0.1, ["stoneAndesite", "stoneDiorite", "stoneGranite"], [0.33, 0.33, 0.33]);