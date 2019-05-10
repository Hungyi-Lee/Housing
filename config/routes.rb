Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :houses

  get '/checkeditems' => 'top#checkeditems', as: "checkeditems"
  get '/favoriteitems' => 'top#favoriteitems', as: "favoriteitems"
  get '/dislikeitems' => 'top#dislikeitems', as: "dislikeitems"

  root 'top#index'
end
