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

gin_and_tonic = Recipe.create(name: "Gin and Tonic", liquor_id: gin.id, description: "A gin and tonic is a highball cocktail made with gin and tonic water poured over ice. It is usually garnished with a slice or wedge of lime. The amount of gin varies according to taste.")

Ingredient.create(name: "Hendricks Gin", quantity: "2 fluid oz", recipe_id: gin_and_tonic.id)
Ingredient.create(name: "Tonic Water", quantity: "4 fluid oz", recipe_id: gin_and_tonic.id)
Ingredient.create(name: "Fresh Lime Juice", quantity: "1 tablespoon", recipe_id: gin_and_tonic.id)
Ingredient.create(name: "Lime Wedge", quantity: "1 for Garnish", recipe_id: gin_and_tonic.id)
Ingredient.create(name: "Ice", quantity: "4 cubes", recipe_id: gin_and_tonic.id)

vodka_and_tonic = Recipe.create(name: "Vodka and Tonic", liquor_id: vodka.id, description: "A vodka and tonic is a highball cocktail made with vodka and tonic water poured over ice. It is usually garnished with a slice or wedge of lime. The amount of vodka varies according to taste.")

Ingredient.create(name: "Titos Vodka", quantity: "2 fluid oz", recipe_id: vodka_and_tonic.id)
Ingredient.create(name: "Tonic Water", quantity: "4 fluid oz", recipe_id: vodka_and_tonic.id)
Ingredient.create(name: "Fresh Lime Juice", quantity: "1 tablespoon", recipe_id: vodka_and_tonic.id)
Ingredient.create(name: "Lime Wedge", quantity: "1 for Garnish", recipe_id: vodka_and_tonic.id)
Ingredient.create(name: "Ice", quantity: "4 cubes", recipe_id: vodka_and_tonic.id)

rusty_nail = Recipe.create(name: "Rusty Nail", liquor_id: scotch.id, description: "The Rusty Nail took a while to find its proper place in the world. The combination of Drambuie—the most distinguished of Scotch-based liqueurs—and the whisky it's made from is a natural one, and yet diligent research has failed to turn up any mention of it during the first 28 years of Drambuie's existence as a commercial product. The Rusty Nail took its first public baby steps in 1937, but it wasn't for another generation or so (and many long-gone variations) that the drink assumed its classic name and form as slow-sipper, a build-it-yourself project: half and half, rocks, all dumped into a bucket glass.")

Ingredient.create(name: "Scotch Whiskey", quantity: "2 fluid oz", recipe_id: rusty_nail.id)
Ingredient.create(name: "Drambuie", quantity: "1/2 fluid oz", recipe_id: rusty_nail.id)
Ingredient.create(name: "Ice", quantity: "1 Large Cube", recipe_id: rusty_nail.id)








