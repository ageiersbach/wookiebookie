Wookiebookie::Application.routes.draw do
  root :to => 'races#new'

  resources :bets

  resources :races

  resources :wookies

end
