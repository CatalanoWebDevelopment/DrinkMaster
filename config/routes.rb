Rails.application.routes.draw do
    devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
    
    root to: "welcome#home"
    
    resources :users, only: [:show, :edit]
    
    resources :liquors do 
        resources :recipes, only: [:index, :show, :new, :edit, :destroy]
    end
    
    resources :users do
        resources :recipes, only: [:new, :index, :show]
        resources :drink_mixes, only: [:new, :create, :show, :index]
    end
    
    resources :recipes do 
        resources :ingredients, only: [:new, :create, :show, :destroy]
    end
    
    resources :recipes, only: [:new, :show, :index, :destroy]
    resources :drink_mixes, only: [:show, :create, :edit, :destroy]
    
    resources :drink_mix_recipes, only: [:destroy]
    
    delete 'drink_mix/:drink_mix_id/recipes/:id', to: 'drink_mix_recipes#destroy', as: 'remove_from_drinkmix'
    
    post 'recipes/:id/add_to_drink_mix', to: 'recipes#add_to_drink_mix', as: 'add_to_drink_mix'
    
    get 'drink_mixes/:id/highest_rated', to: 'drink_mixes#highest_rated', as: 'highest_rated'
    
end
