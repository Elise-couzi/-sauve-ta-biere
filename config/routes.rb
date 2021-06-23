Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
resources :bars do
  resources :bar_beers, only: [:index, :new, :edit, :destroy]
end


# get "/pro", to: "pages#pro"

# get "/dashboard", to: "dashboards#index"

# get "/commands", to: "commands#index"

# patch "/validate/:id", to: "order_beers#validate" , as: :validated
# patch "/decline/:id", to: "order_beers#decline" , as: :declined

end
