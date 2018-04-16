class LiquorsController < ApplicationController
    before_action :require_login
    
    def index
        @liquors = Liquor.all
    end
    
    def show
        @liquor = Liquor.find(params[:id])
    end
    
end