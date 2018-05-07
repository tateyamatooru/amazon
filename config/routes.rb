Rails.application.routes.draw do

   root 'parent_categories#index'

   resources :parent_categories, only: [:index, :show]
   resources :products, only: [:show, :update]
   resources :reviews, only: [:new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
