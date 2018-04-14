class IngredientsController < ApplicationController
    
    def new
        @recipe = Recipe.last
        @ingredient = Ingredient.new
    end
    
end