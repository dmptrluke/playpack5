#modloaded appliedenergistics2

import crafttweaker.item.IIngredient;
print("Initializing appliedenergistics.zs");

# make cobble/gravel/sand recipes match expectations
mods.appliedenergistics2.Grinder.removeRecipe(<minecraft:gravel>);
mods.appliedenergistics2.Grinder.addRecipe(<minecraft:sand>, <minecraft:gravel>, 4, <minecraft:flint>, 0.3);
mods.appliedenergistics2.Grinder.addRecipe(<minecraft:gravel>, <minecraft:cobblestone>, 4);

# remove (possible) exploit
mods.appliedenergistics2.Grinder.removeRecipe(<mekanism:crystal:*>);

# re-do wheat grinding
val wheatItems = [
    <ore:cropSoybean>,
    <ore:cropBarley>,
    <ore:cropPotato>,
    <ore:cropOats>,
    <ore:cropRye>,
    <ore:cropWheat>,
    <ore:cropCoconut>,
    <ore:cropAlmond>,
    <ore:cropRice>,
    <ore:cropBanana>,
    <ore:cropPeas>,
    <ore:cropChestnut>,
    <ore:cropBeans>
] as IIngredient[];

mods.appliedenergistics2.Grinder.removeRecipe(<minecraft:wheat>);

for item in wheatItems{
    mods.appliedenergistics2.Grinder.addRecipe(<harvestcraft:flouritem>, item, 2, <harvestcraft:flouritem>, 0.8);
}
