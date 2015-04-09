Rails.application.routes.draw do
  resource :number, only: [:show]
end

