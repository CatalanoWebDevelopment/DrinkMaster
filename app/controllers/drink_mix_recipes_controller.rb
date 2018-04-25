class DrinkMixRecipesController < ApplicationController
    
    def destroy
        @dm = DrinkMix.find(params[:id])
        @recipe = Recipe.find(params[:id])
        
        remove_recipe = @dm.recipes.where(recipe_id: @recipe.id)
        remove_recipe.destroy
        @dm.save
        
        redirect_to drink_mix_path(@dm)
    end
    
end