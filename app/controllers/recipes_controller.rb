require_relative '../serializers/recipe_serializer.rb'

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
        @dms = current_user.drink_mixes.all
    end
    
    def new
        @recipe = Recipe.new
    end
    
    def create
        @recipe = Recipe.new(recipe_params)
        @recipe.users << current_user
        
        if @recipe.save
            render json: @recipe, serializer: RecipeSerializer, status: 201 
        else
            render :new
        end
    end
    
    def edit
        @recipe = Recipe.find(params[:id]) 
    end
    
    def update
        @recipe = Recipe.find(params[:id])
        
        
        if @recipe.update(recipe_params)
            redirect_to recipe_path(@recipe), notice: ('Your Recipe Was Succesfully Updated')
        else
             render :edit
        end
    end
    
    def destroy
        @recipe = Recipe.find(params[:id])
        @recipe.destroy
        redirect_to user_path(current_user.id), :notice => 'Your recipe was deleted.'
    end
    
    def add_to_drink_mix
        @recipe = Recipe.find(params[:id])
        @dm = DrinkMix.find(params[:drink_mix][:id])
        @dm.recipes << @recipe 
        @dm.save 
        
        @dmr = @dm.drink_mix_recipes.find_by(recipe_id: @recipe.id)
        @dmr.rank = params[:rank]
        @dmr.save
        
        redirect_to drink_mix_path(@dm)
    end
        
    private
    
    def recipe_params
        params.require(:recipe).permit(:name, :description, :liquor_id, ingredients_attributes: [:name, :quantity, :id, :_destroy])
    end
    
end 