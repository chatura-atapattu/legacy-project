Rails.application.routes.draw do
  root 'main#index'
  get 'privacypolicy', to: 'main#privacypolicy'
  get 'termsandconditions', to: 'main#termsandconditions'
  get 'blank', to: 'blank#index'
  get 'blank/index', to: 'blank#index'
  scope 'admin', module: :admin do
    resources :groups do
      resources :faqs
    end
  end
end
