Rails.application.routes.draw do
  root :to => 'products#index'

  resources :products do
    collection do
      get :most_reviews
      get :most_recent
      get :usa
    end
    resources :reviews, :except => [:show, :index]
  end
end
