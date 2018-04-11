Rails.application.routes.draw do
    devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
    
    devise_for :users
    
    root to: "welcome#home"
    
    resources :users, only: [:show, :edit]

end
