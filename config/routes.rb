Rails.application.routes.draw do

  resources :users

  resources :tweets do 
    resources :retweets
  end
end
