#modloaded danknull
print("Initializing danknull.zs");

# remove higher-tier /dank/null items
mods.jei.JEI.removeAndHide(<danknull:dank_null_panel_5>);
mods.jei.JEI.removeAndHide(<danknull:dank_null_panel_4>);
mods.jei.JEI.removeAndHide(<danknull:dank_null_panel_3>);
mods.jei.JEI.removeAndHide(<danknull:dank_null_6>);
mods.jei.JEI.removeAndHide(<danknull:dank_null_5>);
mods.jei.JEI.removeAndHide(<danknull:dank_null_4>);
mods.jei.JEI.removeAndHide(<danknull:dank_null_3>);


# Tier 1 - Redstone Alloy
<danknull:dank_null_panel_0>.displayName = "Redstone /dev/null Panel";

recipes.addShapedMirrored("1x_item_dank_null_panel_0_shaped", <danknull:dank_null_panel_0>, [
	[<ore:ingotRedstoneAlloy>, <ore:blockCoal>, <ore:ingotRedstoneAlloy>],
	[<ore:blockCoal>, <ore:paneGlassRed>, <ore:blockCoal>],
	[<ore:ingotRedstoneAlloy>, <ore:blockCoal>, <ore:ingotRedstoneAlloy>]
]);

# Tier 2 - Cobalt
<danknull:dank_null_panel_1>.displayName = "Cobalt /dev/null Panel";

recipes.addShapedMirrored("1x_item_dank_null_panel_1_shaped", <danknull:dank_null_panel_1>, [
	[<ore:ingotCobalt>, <ore:blockCoal>, <ore:ingotCobalt>],
	[<ore:blockCoal>, <ore:paneGlassBlue>, <ore:blockCoal>],
	[<ore:ingotCobalt>, <ore:blockCoal>, <ore:ingotCobalt>]
]);


# Tier 3 - Aluminium
<danknull:dank_null_panel_2>.displayName = "Aluminum /dev/null Panel";

recipes.addShapedMirrored("1x_item_dank_null_panel_2_shaped", <danknull:dank_null_panel_2>, [
	[<ore:ingotAluminum>, <ore:blockCoal>, <ore:ingotAluminum>],
	[<ore:blockCoal>, <ore:paneGlassWhite>, <ore:blockCoal>],
	[<ore:ingotAluminum>, <ore:blockCoal>, <ore:ingotAluminum>]
]);
