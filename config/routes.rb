CasseToiPauvCon::Application.routes.draw do
  devise_for :users

  root :to => "home#index"

  match "/account/" => "account#index"
  match "/account/admin" => "account#admin"

  match "/nne/:name" => "Target#show"
  match "/n/:name" => "Target#show"

  match '/target/new' => 'target#create'
  match '/link/new' => 'link#create'
end
