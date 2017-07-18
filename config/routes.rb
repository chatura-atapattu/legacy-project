Rails.application.routes.draw do
  get 'main/index'

  root 'main#index'

  match "*path", to: "main#index", via: :all

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
