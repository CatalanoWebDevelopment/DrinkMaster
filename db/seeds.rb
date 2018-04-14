rum = Liquor.create(name: "Rum")
tequila = Liquor.create(name: "Tequila")
vodka = Liquor.create(name: "Vodka")
scotch = Liquor.create(name: "Scotch")
gin = Liquor.create(name: "Gin")
whiskey = Liquor.create(name: "Whiskey")

tequila_sunrise = Recipe.create(name: "Tequila Sunrise", liquor_id: tequila.id, description: "Created in the 1970s, the Tequila Sunrise adds tequila to the citrusy and sweet ingredients popular in many cocktails during the party decade.")

Ingredient.create(name: "El Tesoro Reposado Tequila, chilled", quantity: "1 1/2 oz", recipe_id: tequila_sunrise.id)
Ingredient.create(name: "Fresh orange juice", quantity: "4 oz", recipe_id: tequila_sunrise.id)
Ingredient.create(name: "Grenadine", quantity: "1 oz", recipe_id: tequila_sunrise.id)
Ingredient.create(name: "Orange Slice and Cherry", quantity: "Garnish with each", recipe_id: tequila_sunrise.id)

