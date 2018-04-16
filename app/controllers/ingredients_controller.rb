class IngredientsController < ApplicationController
    before_action :require_login
    
    def new
        @recipe = Recipe.last
        @ingredient = Ingredient.new
    end
    
    def create
        @recipe = Recipe.last
        @ingredients = Ingredient.new(ingredient_params)
        
        redirect_to recipe_path(@recipe)
    end
    
    private
    
    def ingredient_params
        params.require(:ingredient).permit(:name, :quantity)
    end
    
end