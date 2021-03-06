Rails.application.routes.draw do
    devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
    resources :lists do
      resources :tasks, except: [:index, :show]
    end

    get '/overdue', to: 'overdue#index'


    root 'welcome#home'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
