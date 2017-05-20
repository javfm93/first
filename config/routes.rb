Rails.application.routes.draw do
  root to: 'prooftables#index'
  resources :prooftables
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
