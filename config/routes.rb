Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  root to: "home#index"
  # get "/saidas", to: "expenses#index"
  # get "/entradas", to: "incomes#index"
  get "/dashboard", to: "dashboard#index"

  get "/movimentacao", to: "balance#index", as: :balance
  get "/movimentacao/nova", to: "balance#new", as: :new_balance
  get "/movimentacao/editar/:id", to: "balance#edit", as: :edit_balance
  get "/movimentacao/:id", to: "balance#show", as: :show_balance
  patch "/movimentacao/:id", to: "balance#update", as: :update_balance
  delete "/movimentacao/:id", to: "balance#destroy", as: :destroy_balance
  post "/movimentacao", to: "balance#create", as: :create_balance
end
