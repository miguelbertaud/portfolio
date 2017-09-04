Rails.application.routes.draw do
  resources :collections, except: [:show]
  get 'collection/:id', to: 'collection#show', as: 'collection_show' 
  root to: 'pages#home'
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
