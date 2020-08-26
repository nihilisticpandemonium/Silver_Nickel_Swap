-- set up variables
nickel_recipe = "angelsore-chunk-mix2-processing"
nickel_recipe_icon = data.raw.recipe[nickel_recipe].icon
silver_recipe = "angelsore-crystal-mix4-processing"
silver_recipe_icon = data.raw.recipe[silver_recipe].icon

-- change nickel recipe to silver recipe
bobmods.lib.recipe.replace_ingredient(nickel_recipe, "angels-ore1-chunk", "angels-ore2-chunk")
bobmods.lib.recipe.replace_ingredient(nickel_recipe, "angels-ore5-chunk", "angels-ore4-chunk")
bobmods.lib.recipe.remove_result(nickel_recipe, "nickel-ore")
bobmods.lib.recipe.add_result(nickel_recipe, {"silver-ore", 4})

-- change silver recipe to nickel recipe
bobmods.lib.recipe.replace_ingredient(silver_recipe, "angels-ore2-crystal", "angels-ore1-crystal")
bobmods.lib.recipe.replace_ingredient(silver_recipe, "angels-ore4-crystal", "angels-ore2-crystal")
bobmods.lib.recipe.replace_ingredient(silver_recipe, "angels-ore6-crystal", "angels-ore5-crystal")
bobmods.lib.recipe.remove_result(silver_recipe, "silver-ore")
bobmods.lib.recipe.add_result(silver_recipe, {"nickel-ore", 6})

-- swap recipe icons
data.raw.recipe[nickel_recipe].icon = silver_recipe_icon
data.raw.recipe[silver_recipe].icon = nickel_recipe_icon