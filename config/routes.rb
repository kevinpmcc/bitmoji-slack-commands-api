Rails.application.routes.draw do
  root to: 'site#index'
  resources :commands, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
