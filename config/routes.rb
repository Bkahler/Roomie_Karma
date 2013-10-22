RoomieKarma::Application.routes.draw do
  root to: "households#index"

  get "/households", to: "households#index"
  get "/households/new", to: "households#new", as: "new_household"
  get "/households/:id", to: "households#show", as: "household"
  post "/households", to: "households#create"

  post "/members", to: "members#create"
  post "/chores", to: "chores#create"

  get "/member_chores", to: "member_chores#show"
  post "/member_chores", to: "member_chores#create"

  resources :sessions, only: [:new, :create]
  get "/logout"=> "sessions#destroy"
end
