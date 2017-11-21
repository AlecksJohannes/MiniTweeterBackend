Rails.application.routes.draw do

  resources :users

  resources :tweets do 
    resources :likes
    resources :retweets
  end
end
