Rails.application.routes.draw do
  resources :labels
  resources :image_labels
  resources :images
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
