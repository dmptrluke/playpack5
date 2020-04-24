import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;

import mods.appliedenergistics2.Grinder;
import mods.thermalexpansion.InductionSmelter;
import mods.thermalexpansion.Pulverizer;

/// 
/// CORE
///

function removeOre(item as IItemStack, entry as IOreDictEntry){
	entry.remove(item);
	mods.jei.JEI.removeAndHide(item);
}

//////////////////////////////////////////////////////////////////////////////
/// THERMAL UNIFICATION
///

// WOODEN GEAR
removeOre(<thermalfoundation:material:22>, <ore:gearWood>);
removeOre(<thermalfoundation:material:23>, <ore:gearStone>);


//////////////////////////////////////////////////////////////////////////////
/// ENDER IO UNIFICATION
///

// POWDERS
removeOre(<enderio:item_material:26>, <ore:dustCopper>);
removeOre(<enderio:item_material:27>, <ore:dustTin>);

// POWDERS - RENAME
<enderio:item_material:30>.displayName = "Ardite Powder";
<enderio:item_material:31>.displayName = "Cobalt Powder";
<enderio:item_material:32>.displayName = "Lapis Lazuli Powder";

// HIDE DUPES
mods.jei.JEI.removeAndHide(<enderio:item_material:5>);
mods.jei.JEI.removeAndHide(<enderio:item_material:33>);
<ore:dustNetherQuartz>.remove(<enderio:item_material:33>);
<ore:dustQuartz>.remove(<enderio:item_material:33>);
<ore:itemSilicon>.remove(<enderio:item_material:5>);

// FLOUR
<ore:foodFlour>.addAll(<ore:dustWheat>);
<ore:dustWheat>.addAll(<ore:foodFlour>);

// INDUCTION SMELTER RECIPES
/// Redstone Alloy
InductionSmelter.addRecipe(<enderio:item_alloy_ingot:3>, <ore:itemSilicon>.firstItem, <minecraft:redstone>, 3600);

// PULVERISER RECIPES
Pulverizer.removeRecipe(<minecraft:clay>);
Pulverizer.addRecipe(<minecraft:clay_ball> * 2, <minecraft:clay>, 3000, <appliedenergistics2:material:5>, 100);

// GRINDSTONE RECIPES
Grinder.addRecipe(<minecraft:clay_ball>, <minecraft:clay>, 4, <appliedenergistics2:material:5>, 0.75);

//////////////////////////////////////////////////////////////////////////////
/// APPLIED ENERGISTICS UNIFICATION
///
removeOre(<appliedenergistics2:material:40>, <ore:gearWood>);

// FLOUR
recipes.replaceAllOccurences(<harvestcraft:flouritem>, <appliedenergistics2:material:4>);


//////////////////////////////////////////////////////////////////////////////
/// ROOTS UNIFICATION
///


// FLOUR
mods.roots.Mortar.removeRecipe(<roots:flour>);
mods.roots.Mortar.addRecipe(<appliedenergistics2:material:4>, [<minecraft:wheat>]);
mods.roots.Mortar.addRecipe(<appliedenergistics2:material:4>, [<minecraft:potato>]);
mods.roots.Mortar.addRecipe(<appliedenergistics2:material:4>, [<harvestcraft:barleyitem>]);
mods.roots.Mortar.addRecipe(<appliedenergistics2:material:4>, [<harvestcraft:oatsitem>]);
mods.roots.Mortar.addRecipe(<appliedenergistics2:material:4>, [<harvestcraft:riceitem>]);
mods.roots.Mortar.addRecipe(<appliedenergistics2:material:4>, [<harvestcraft:ryeitem>]);

//////////////////////////////////////////////////////////////////////////////
/// NUCLEARCRAFT UNIFICATION
///

// HIDE DUPES
mods.jei.JEI.removeAndHide(<nuclearcraft:gem_dust:2>);
<ore:dustNetherQuartz>.remove(<nuclearcraft:gem_dust:2>);
<ore:dustQuartz>.remove(<nuclearcraft:gem_dust:2>);


//////////////////////////////////////////////////////////////////////////////
/// FORESTRY UNIFICATION
///

// GEARS
removeOre(<forestry:gear_copper>, <ore:gearBronze>);
removeOre(<forestry:gear_tin>, <ore:gearTin>);
removeOre(<forestry:gear_bronze>, <ore:gearBronze>);

// ORES
removeOre(<forestry:resources:1>, <ore:oreCopper>);
removeOre(<forestry:resources:2>, <ore:oreTin>);

// BLOCKS
removeOre(<forestry:resource_storage:1>, <ore:blockCopper>);
removeOre(<forestry:resource_storage:2>, <ore:blockTin>);

// INGOTS
removeOre(<forestry:ingot_copper>, <ore:ingotCopper>);
removeOre(<forestry:ingot_tin>, <ore:ingotTin>);
removeOre(<forestry:ingot_bronze>, <ore:ingotBronze>);

// CARPENTER
mods.forestry.Carpenter.removeRecipe(<forestry:crated.ingottin>);
mods.jei.JEI.removeAndHide(<forestry:crated.ingottin>);
mods.forestry.Carpenter.removeRecipe(<forestry:crated.ingotcopper>);
mods.jei.JEI.removeAndHide(<forestry:crated.ingotcopper>);
mods.forestry.Carpenter.removeRecipe(<forestry:crated.ingotbronze>);
mods.jei.JEI.removeAndHide(<forestry:crated.ingotbronze>);


///////////////////////////////////////////////////////////////////////////////
/// IMMERSIVE ENGINEERING UNIFICATION
///

function buildHammerRecipe(plate as IItemStack, entry as IOreDictEntry){
	recipes.addShapeless("hammer_" + entry.name, plate, [<immersiveengineering:tool:0>, entry]);
}

// PLATES
recipes.replaceAllOccurences(<immersiveengineering:metal:30>, <thermalfoundation:material:320>);
removeOre(<immersiveengineering:metal:30>, <ore:plateCopper>);

recipes.replaceAllOccurences(<immersiveengineering:metal:31>, <thermalfoundation:material:324>);
removeOre(<immersiveengineering:metal:31>, <ore:plateAluminum>);

recipes.replaceAllOccurences(<immersiveengineering:metal:32>, <thermalfoundation:material:323>);
removeOre(<immersiveengineering:metal:32>, <ore:plateLead>);

recipes.replaceAllOccurences(<immersiveengineering:metal:33>, <thermalfoundation:material:322>);
removeOre(<immersiveengineering:metal:33>, <ore:plateSilver>);

recipes.replaceAllOccurences(<immersiveengineering:metal:34>, <thermalfoundation:material:325>);
removeOre(<immersiveengineering:metal:34>, <ore:plateNickel>);

recipes.replaceAllOccurences(<immersiveengineering:metal:36>, <thermalfoundation:material:356>);
removeOre(<immersiveengineering:metal:36>, <ore:plateConstantan>);

recipes.replaceAllOccurences(<immersiveengineering:metal:37>, <thermalfoundation:material:353>);
removeOre(<immersiveengineering:metal:37>, <ore:plateElectrum>);

recipes.replaceAllOccurences(<immersiveengineering:metal:38>, <thermalfoundation:material:352>);
removeOre(<immersiveengineering:metal:38>, <ore:plateSteel>);

recipes.replaceAllOccurences(<immersiveengineering:metal:39>, <thermalfoundation:material:32>);
removeOre(<immersiveengineering:metal:39>, <ore:plateIron>);

recipes.replaceAllOccurences(<immersiveengineering:metal:40>, <thermalfoundation:material:33>);
removeOre(<immersiveengineering:metal:40>, <ore:plateGold>);

// PLATES (RECIPES)
buildHammerRecipe(<thermalfoundation:material:32>, <ore:ingotIron>);
recipes.addShapeless("sheet_iron", <thermalfoundation:material:32>, [<ore:blockSheetmetalIron>]);
buildHammerRecipe(<thermalfoundation:material:33>, <ore:ingotGold>);
recipes.addShapeless("sheet_gold", <thermalfoundation:material:33>, [<ore:blockSheetmetalGold>]);
buildHammerRecipe(<thermalfoundation:material:322>, <ore:ingotSilver>);
recipes.addShapeless("sheet_silver", <thermalfoundation:material:322>, [<ore:blockSheetmetalSilver>]);
buildHammerRecipe(<thermalfoundation:material:323>, <ore:ingotLead>);
recipes.addShapeless("sheet_lead", <thermalfoundation:material:323>, [<ore:blockSheetmetalLead>]);
buildHammerRecipe(<thermalfoundation:material:324>, <ore:ingotAluminum>);
recipes.addShapeless("sheet_aluminum", <thermalfoundation:material:324>, [<ore:blockSheetmetalAluminum>]);
buildHammerRecipe(<thermalfoundation:material:353>, <ore:ingotElectrum>);
recipes.addShapeless("sheet_electrum", <thermalfoundation:material:353>, [<ore:blockSheetmetalElectrum>]);
buildHammerRecipe(<thermalfoundation:material:356>, <ore:ingotConstantan>);
recipes.addShapeless("sheet_constantan", <thermalfoundation:material:356>, [<ore:blockSheetmetalConstantan>]);
buildHammerRecipe(<thermalfoundation:material:357>, <ore:ingotSignalum>);
buildHammerRecipe(<thermalfoundation:material:358>, <ore:ingotLumium>);
buildHammerRecipe(<thermalfoundation:material:359>, <ore:ingotEnderium>);
buildHammerRecipe(<thermalfoundation:material:325>, <ore:ingotNickel>);
recipes.addShapeless("sheet_nickel", <thermalfoundation:material:325>, [<ore:blockSheetmetalNickel>]);
buildHammerRecipe(<thermalfoundation:material:352>, <ore:ingotSteel>);
recipes.addShapeless("sheet_steel", <thermalfoundation:material:352>, [<ore:blockSheetmetalSteel>]);
buildHammerRecipe(<thermalfoundation:material:321>, <ore:ingotTin>);
buildHammerRecipe(<thermalfoundation:material:320>, <ore:ingotCopper>);
recipes.addShapeless("sheet_copper", <thermalfoundation:material:320>, [<ore:blockSheetmetalCopper>]);
buildHammerRecipe(<thermalfoundation:material:326>, <ore:ingotPlatinum>);
buildHammerRecipe(<thermalfoundation:material:327>, <ore:ingotIridium>);
buildHammerRecipe(<thermalfoundation:material:328>, <ore:ingotMithril>);
buildHammerRecipe(<thermalfoundation:material:354>, <ore:ingotInvar>);
buildHammerRecipe(<thermalfoundation:material:355>, <ore:ingotBronze>);


// ORES
removeOre(<immersiveengineering:ore:0>, <ore:oreCopper>);
removeOre(<immersiveengineering:ore:2>, <ore:oreLead>);
removeOre(<immersiveengineering:ore:3>, <ore:oreSilver>);
removeOre(<immersiveengineering:ore:4>, <ore:oreNickel>);

/*
// INGOTS
removeOre(<immersiveengineering:material:0>, <ore:ingotCopper>);
removeOre(<immersiveengineering:material:1>, <ore:ingotAluminum>);
removeOre(<immersiveengineering:material:2>, <ore:ingotLead>);
removeOre(<immersiveengineering:material:3>, <ore:ingotSilver>);
removeOre(<immersiveengineering:material:4>, <ore:ingotNickel>);
removeOre(<immersiveengineering:material:6>, <ore:ingotConstantan>);
removeOre(<immersiveengineering:material:7>, <ore:ingotElectrum>);
removeOre(<immersiveengineering:material:8>, <ore:ingotSteel>);

// NUGGETS
removeOre(<immersiveengineering:material:20>, <ore:nuggetCopper>);
removeOre(<immersiveengineering:material:21>, <ore:nuggetAluminum>);
removeOre(<immersiveengineering:material:22>, <ore:nuggetLead>);
removeOre(<immersiveengineering:material:23>, <ore:nuggetSilver>);
removeOre(<immersiveengineering:material:24>, <ore:nuggetNickel>);
removeOre(<immersiveengineering:material:26>, <ore:nuggetConstantan>);
removeOre(<immersiveengineering:material:27>, <ore:nuggetElectrum>);
removeOre(<immersiveengineering:material:28>, <ore:nuggetSteel>);
removeOre(<immersiveengineering:material:29>, <ore:nuggetIron>);
*/