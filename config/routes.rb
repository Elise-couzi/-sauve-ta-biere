Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  mount StripeEvent::Engine, at: '/stripe-webhooks'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   resources :bar_beers, only: [:edit, :update, :destroy] do
    resources :order_beers, only:[:create]
   end

  resources :bars do
    resources :bar_beers, only: [:index, :new, :create]
  end

  get "/beers/new", to: "beers#new"
  post "/beers", to: "beers#create"

  get "/pro", to: "pages#pro"

  get "/profil", to: "pages#profil"

  get "/dashboard", to: "dashboards#index"

  get "/commands", to: "commands#index"

  get "/orders", to: "orders#panier"

  get "/checkout", to: "orders#checkout_session"

  resources :order_beers, only: [:create, :destroy] do

    member do
      patch :add_quantity, as: :add
      patch :remove_quantity, as: :remove
    end
  end


# patch "/validate/:id", to: "order_beers#validate" , as: :validated
# patch "/decline/:id", to: "order_beers#decline" , as: :declined

end
