Rails.application.routes.draw do
  root 'main#index'
  get 'blank', to: 'blank#index'
  get 'blank/index', to: 'blank#index'
end
