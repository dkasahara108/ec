Rails.application.routes.draw do
resources :users
resources :items
resources :reviews

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
