Rails.application.routes.draw do
  resources :tweets do 
    resources :re_tweets
  end
end
