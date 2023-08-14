Rails.application.routes.draw do
  resources :books do
    collection { get :search }#このルーティングを追加
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
