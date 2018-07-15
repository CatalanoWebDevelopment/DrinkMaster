function Recipe(name, description, ingredients) {
    this.name = name
    this.description = description
    this.ingredients = ingredients
}

Recipe.prototype.renderIngredients = function() { 
    return this.ingredients.map(ingredient => `<li>${ingredient.name}, ${ingredient.quantity}</li>`).join('')
}

$(function() {
    $(".js-next").on("click", function(e) {
        e.preventDefault();
        
        let currentId = $(this).attr('data-id')
        
        $.get("/recipes/" + currentId + "/next_recipe", function(nextRecipe) {
            const recipeObj = new Recipe(nextRecipe.name, nextRecipe.description, nextRecipe.ingredients)
            $("#newRecipeName").text(recipeObj.name)
            $("#newRecipeDescription").text(recipeObj.description)
            $(".ingredients").html("")
            $(".ingredients").html(recipeObj.renderIngredients())
            
            $("#oldShowContent").remove()
            
            history.replaceState(null, "Drinkmaster-Deluxe Random Recipes", `/${nextRecipe["id"]}/next_recipe`)
            
            $(".js-next").attr("data-id", nextRecipe["id"])
        })
    })
})

 

