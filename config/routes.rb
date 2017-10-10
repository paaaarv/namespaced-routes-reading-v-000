Rails.application.routes.draw do

  resources :authors, only: [:show, :index] do
    resources :posts, only: [:show, :index, :new, :edit]
  end

  scope '/admin' do 
    resources :stats, only: [:index]

  resources :posts, only: [:index, :show, :new, :create, :edit, :update]

  root 'posts#index'

end
