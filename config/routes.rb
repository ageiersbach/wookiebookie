Wookiebookie::Application.routes.draw do
  root :to => 'races#index' 

  resources :bets

  resources :races

  resources :wookies

end
