CasseToiPauvCon::Application.routes.draw do
  devise_for :users

  root :to => "home#index"

  match "/account/" => "account#index"

  match "/nne/:name" => "Target#show"
  match "/n/:name" => "Target#show"

  match '/target/new' => 'target#create'
end
