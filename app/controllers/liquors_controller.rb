class LiquorsController < ApplicationController
    
    def index
        if user_signed_in?
            @liquors = Liquor.all
        else
            redirect_to root_path
        end
    end
    
end