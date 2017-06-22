Rails.application.routes.draw do
  
  resources :user_goals
  resources :records
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :users
  resources :signup

end
