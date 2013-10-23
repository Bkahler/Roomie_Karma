RoomieKarma::Application.routes.draw do
  root to: "households#index"

  resources :members
  get "/member_chores/reset" =>"member_chores#reset", as: "reset"
  resources :households
  resources :member_chores
  resources :chores
  resources :supplies

  # get "/households", to: "households#index"
  # get "/households/new", to: "households#new", as: "new_household"
  # get "/households/:id", to: "households#show", as: "household"
  # post "/households", to: "households#create"
  # post "/chores", to: "chores#create"
  # get "/member_chores", to: "member_chores#show"
  # post "/member_chores", to: "member_chores#create"
  match "/member_chores/:id/complete" =>"member_chores#complete", as: "complete"
  match "/member_chores/:id/incomplete" =>"member_chores#incomplete", as: "incomplete"
  match "/supplies/:id/instock" => "supplies#instock", as:"instock"
  match "/supplies/:id/outstock" => "supplies#outstock", as:"outstock"
  resources :sessions, only: [:new, :create]

  get "/logout"=> "sessions#destroy"
end
