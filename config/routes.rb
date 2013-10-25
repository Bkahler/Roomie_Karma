RoomieKarma::Application.routes.draw do
  root to: "households#index"

  resources :members
  get "/member_chores/reset" =>"member_chores#reset", as: "reset"
  resources :households
  resources :member_chores
  resources :chores
  resources :supplies

  match "/member_chores/:id/complete" =>"member_chores#complete", as: "complete"
  match "/member_chores/:id/incomplete" =>"member_chores#incomplete", as: "incomplete"
  match "/supplies/:id/instock" => "supplies#instock", as:"instock"
  match "/supplies/:id/outstock" => "supplies#outstock", as:"outstock"
  resources :sessions, only: [:new, :create]

  get "/logout"=> "sessions#destroy"
end
