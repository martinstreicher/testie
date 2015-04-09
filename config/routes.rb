Rails.application.routes.draw do
  resource :number, only: [:show]
  root to: 'home#index'
end

