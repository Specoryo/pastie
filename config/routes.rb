Rails.application.routes.draw do

  devise_for :users
  resources :listings
  root :to => "listings#index"

  get 'pages/about'
  get 'contact/contactus'

  controller :contact do
    post '/contact' => :contactus
  end

  match ':controller(/:action(/:id))', :via => [:get, :post]
end
