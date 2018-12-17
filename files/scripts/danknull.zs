#modloaded danknull
print("Initializing danknull.zs")

# remove higher-tier /dank/null items
mods.jei.JEI.removeAndHide(<danknull:dank_null_panel:5>);
mods.jei.JEI.removeAndHide(<danknull:dank_null_panel:4>);
mods.jei.JEI.removeAndHide(<danknull:dank_null_panel:3>);
mods.jei.JEI.removeAndHide(<danknull:dank_null:6>);
mods.jei.JEI.removeAndHide(<danknull:dank_null:5>);
mods.jei.JEI.removeAndHide(<danknull:dank_null:4>);
mods.jei.JEI.removeAndHide(<danknull:dank_null:3>);


# rename panels to /dev/null
<danknull:dank_null_panel:0>.displayName = "Redstone /dev/null Panel";
<danknull:dank_null_panel:1>.displayName = "Lapis /dev/null Panel";
