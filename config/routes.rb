Rails.application.routes.draw do
    devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
    
    root to: "welcome#home"
    
    resources :users, only: [:show, :edit]
    
    resources :recipes
    
    resources :liquors

end
