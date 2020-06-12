Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  root 'tops#index'
  devise_for :users, controllers: { :registrations => "users/registrations" }
  resources :reviews
  resources :stylists
  resources :seekers 
  resources :conversations do
    resources :messages
  end
end
