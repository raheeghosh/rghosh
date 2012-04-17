KcwWorld::Application.routes.draw do

  resources :comments

  resources :articles
  resources :categories
  resources :photos
  resources :proverbs
  
  match 'home' => 'home#index', :as => :home
  root :to => 'home#index'
  
  resources :articles do
    resources :comments
  end
  
  resources :photos do
    resources :comments
  end

end
