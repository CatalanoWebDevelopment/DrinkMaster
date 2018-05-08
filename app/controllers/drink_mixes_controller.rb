class DrinkMixesController < ApplicationController
    before_action :require_login
    
    def index 
        @dms = current_user.drink_mixes.all
    end
    
    def new
        @dm = DrinkMix.new
    end
    
    def create
        @dm = DrinkMix.new(dm_params)
        @user = current_user.id
        
        if @dm.save
            redirect_to user_drink_mix_path(@user, @dm)
        else
            render :new
        end
    end
    
    def show
        @dm = DrinkMix.find(params[:id])
    end
    
    def destroy
        @dm = DrinkMix.find(params[:id])
        @dm.destroy
        
        redirect_to user_path(current_user)
    end
    
    def highest_rated
        @dm = DrinkMix.find(params[:id])
    end
     
    private
    
    def dm_params
        params.require(:drink_mix).permit(:name, :user_id)
    end
    
end