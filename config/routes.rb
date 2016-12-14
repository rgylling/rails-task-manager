Rails.application.routes.draw do
    devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
    resources :lists do
      resources :tasks
    end
    root 'welcome#home'
    devise_scope :user do
      root to: "welcome#home"
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
