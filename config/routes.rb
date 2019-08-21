Rails.application.routes.draw do
  get 'tokens/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :pieces
  resources :explore
  resources :tokens, only: [:create]
  resources :highlight
  post 'users/add' => 'users#add'
  get 'users/:id/gallery' => 'users#gallery'
  delete 'users' => 'users#destroy'
  post 'users' => 'users#create'
end
