Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :scenarios
      # resources :mortg_interest_rates
      # resources :prop_tax_rates
    end
  end
      
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
