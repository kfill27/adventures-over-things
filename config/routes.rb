Rails.application.routes.draw do
  root 'families#index'
  devise_for :users
  resources :families do
    resources :family_members
  end
  resources :adventures do
    resources :contributions
  end
  resources :charges
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
