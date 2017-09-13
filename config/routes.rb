Rails.application.routes.draw do
  resources :collections, except: [:show]
  get 'angular-items', to: 'collections#angular'
  get 'collection/:id', to: 'collections#show', as: 'collection_show'
  root to: 'pages#home'
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  resources :blogs do
    member do
      get :toggle_status
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
