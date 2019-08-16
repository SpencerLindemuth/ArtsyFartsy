Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :pieces
  resources :explore
  resources :highlight
  post 'users/add' => 'users#add'
  get 'users/:id/gallery' => 'users#gallery'
end
