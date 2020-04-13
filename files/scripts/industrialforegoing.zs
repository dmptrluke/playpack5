import mods.jei.JEI;

// Range Upgrade 1
recipes.remove(<industrialforegoing:range_addon:1>);
recipes.addShapedMirrored("range_addon_1", <industrialforegoing:range_addon>, [
	[<ore:ingotAluminum>, <industrialforegoing:plastic>, <ore:ingotAluminum>],
	[<ore:ingotAluminum>, <ore:paneGlass>, <ore:ingotAluminum>],
	[<ore:gearIron>, <ore:ingotRedstoneAlloy>, <ore:gearIron>]
]);

// Range Upgrade 2
recipes.remove(<industrialforegoing:range_addon:2>);
recipes.addShapedMirrored("range_addon_2", <industrialforegoing:range_addon:1>, [
	[<ore:ingotAluminum>, <industrialforegoing:plastic>, <ore:ingotAluminum>],
	[<ore:ingotAluminum>, <ore:paneGlassCyan>, <ore:ingotAluminum>],
	[<ore:gearLead>, <ore:ingotRedstoneAlloy>, <ore:gearLead>]
]);

// Range Upgrade 3
recipes.remove(<industrialforegoing:range_addon:3>);
recipes.addShapedMirrored("range_addon_3", <industrialforegoing:range_addon:2>, [
	[<ore:ingotAluminum>, <industrialforegoing:plastic>, <ore:ingotAluminum>],
	[<ore:ingotAluminum>, <ore:paneGlassWhite>, <ore:ingotAluminum>],
	[<ore:gearNickel>, <ore:ingotRedstoneAlloy>, <ore:gearNickel>]
]);

// Range Upgrade 4
recipes.remove(<industrialforegoing:range_addon:4>);
recipes.addShapedMirrored("range_addon_4", <industrialforegoing:range_addon:3>, [
	[<ore:ingotAluminum>, <industrialforegoing:plastic>, <ore:ingotAluminum>],
	[<ore:ingotAluminum>, <ore:paneGlassYellow>, <ore:ingotAluminum>],
	[<ore:gearSignalum>, <ore:ingotRedstoneAlloy>, <ore:gearSignalum>]
]);


JEI.removeAndHide(<industrialforegoing:range_addon:5>);
JEI.removeAndHide(<industrialforegoing:range_addon:6>);
JEI.removeAndHide(<industrialforegoing:range_addon:7>);
JEI.removeAndHide(<industrialforegoing:range_addon:8>);
JEI.removeAndHide(<industrialforegoing:range_addon:9>);
JEI.removeAndHide(<industrialforegoing:range_addon:10>);
JEI.removeAndHide(<industrialforegoing:range_addon:11>);