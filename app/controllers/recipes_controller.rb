class RecipesController < ApplicationController
    before_action :require_login
    
    def index
        if params[:liquor_id] && @liquor = Liquor.find_by(id: params[:liquor_id])
            @recipes = @liquor.recipes
        else
            @recipes = Recipe.search(params[:search])
        end
    end
    
    def show
        @recipe = Recipe.find(params[:id])
    end
    
    def new
        @recipe = Recipe.new
        5.times {@recipe.ingredients.build}
    end
    
    def create
        @recipe = Recipe.create(recipe_params)            
        redirect_to recipe_path(@recipe)
    end
        
    private
    
    def recipe_params
        params.require(:recipe).permit(:name, :description, :liquor_id, ingredients_attributes: [:name, :quantity])
    end
    
end 