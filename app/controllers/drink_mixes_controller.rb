class DrinkMixesController < ApplicationController
    before_action :require_login
    
    def index 
        @dms = current_user.drink_mixes.all
    end
    
    def new
        @dm = DrinkMix.new
    end
    
    def create
        @dm = DrinkMix.create(dm_params)
        @user = current_user.id
        redirect_to user_drink_mix_path(@user, @dm)
    end
    
    def show
        @dm = DrinkMix.find(params[:id])
    end
    
    def destroy
        @dm = DrinkMix.find(params[:id])
        @dm.destroy
        
        redirect_to user_path(current_user)
    end
     
    private
    
    def dm_params
        params.require(:drink_mix).permit(:name, :user_id)
    end
    
end