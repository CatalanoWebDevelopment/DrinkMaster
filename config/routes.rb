Rails.application.routes.draw do
    devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
    
    root to: "welcome#home"
    
    resources :users, only: [:show, :edit]
    
    resources :liquors do 
        resources :recipes, only: [:index, :show, :new]
    end
    
    resources :users do
        resources :recipes, only: [:index, :show]
    end
    
    resources :recipes do 
        resources :ingredients, only: [:new, :create, :show, :destroy]
    end
    
    resources :recipes
end
