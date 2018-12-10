import crafttweaker.oredict.IOreDictEntry;

val SEEDOIL = <liquid:seed.oil>;
val HONEY = <liquid:for.honey>;
val JUICE = <liquid:juice>;

# <ore:cropSomething> : [seed_oil, honey, juice, mulch chance]
val oilValues = {
	<ore:cropStrawberry> : [0, 0, 60, 0],
	<ore:cropBlueberry> : [0, 0, 60, 0],
	<ore:cropBlackberry> : [0, 0, 60, 0],
	<ore:cropRaspberry> : [0, 0, 60, 0],
	<ore:cropCranberry> : [0, 0, 60, 0],
	<ore:cropGrape> : [0, 0, 60, 0]
} as int[][IOreDictEntry];

# remove old recipes, add new ones
for source, amts in oilValues {

  var entries = source.items;
  # loop over the oredict for source, remove all squeezer recipes
  for entry in entries {
    # mods.forestry.Squeezer.removeRecipe(SEEDOIL, [entry]);
	# mods.forestry.Squeezer.removeRecipe(HONEY, [entry]);
	mods.forestry.Squeezer.removeRecipe(JUICE, [entry]);
	
	  # don't add recipes if value is 0
	  if (amts[0] != 0) {
	    mods.forestry.Squeezer.addRecipe(SEEDOIL * amts[0], [entry], 120);
	  }
	   
	  if (amts[1] != 0) {
	    mods.forestry.Squeezer.addRecipe(HONEY * amts[1], [entry], 120); 
	  }
	   
	  if (amts[2] != 0) {
	    if (amts[3] == 0) {
	      mods.forestry.Squeezer.addRecipe(JUICE * amts[2], [entry], 120);
	    } else { 
	      mods.forestry.Squeezer.addRecipe(JUICE * amts[2], [entry], 120, <forestry:mulch> % amts[3]);
	    }
	  }
  } 
}