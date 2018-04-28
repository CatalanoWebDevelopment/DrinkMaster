class DrinkMixRecipesController < ApplicationController
    
    def destroy
        @dm = DrinkMix.find(params[:drink_mix_id])
        @recipe = Recipe.find(params[:id])
        
        @dm.drink_mix_recipes.find_by(recipe_id: @recipe.id).destroy
        @dm.save
        
        redirect_to drink_mix_path(@dm)
    end 
    
end