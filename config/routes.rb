Rails.application.routes.draw do
  resources :workers
  resources :shifts
  root to: 'shifts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
