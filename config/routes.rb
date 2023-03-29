Rails.application.routes.draw do
  resources :grooms
  get 'ridingschool' =>'riding_school#index'
  root 'home#index'
  resources :horses
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
 get 'stables' => 'stables#index'
  # Defines the root path route ("/")
  # root "articles#index"
  post 'create_appointment' => 'appointents#create'
end
