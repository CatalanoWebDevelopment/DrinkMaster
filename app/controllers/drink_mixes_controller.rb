class DrinkMixesController < ApplicationController
    before_action :require_login
    
    def index 
        @dms = DrinkMix.all
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
    end
    
    private
    
    def dm_params
        params.require(:drinkmix).permit(:name)
    end
    
end