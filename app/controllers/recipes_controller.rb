class RecipesController < ApplicationController
    
    def index
        if user_signed_in?
            if params[:liquor_id] && @liquor = Liquor.find_by(id: params[:liquor_id])
                @recipes = @liquor.recipes
            else
                @recipes = Recipe.search(params[:search])
            end
        else
            redirect_to root_path
        end
    end
    
    def show
        if user_signed_in?
            @recipe = Recipe.find(params[:id])
        else
            redirect_to root_path
        end
    end
    
    def new
        if user_signed_in?
            @recipe = Recipe.new
        else
            redirect_to root_path
        end
    end
    
    def create
        if user_signed_in?   
            @recipe = Recipe.create(recipe_params)
                
            redirect_to new_recipe_ingredient_path(@recipe)
        else
            redirect_to root_path
        end
    end
        
    private
    
    def recipe_params
        params.require(:recipe).permit(:name, :description, :liquor_id)
    end
    
end