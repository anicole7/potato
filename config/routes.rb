Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root to: 'market_prices#market_prices_list'

  get '/best_daily_benefit', to: 'market_prices#best_daily_benefit'
end
