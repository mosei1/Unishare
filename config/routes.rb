Rails.application.routes.draw do
  root to: "rides#index"


  resources :rides
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'users/:id' =>'users#show', as: :view_profile
end

