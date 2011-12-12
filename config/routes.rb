CasseToiPauvCon::Application.routes.draw do
  devise_for :users

  root :to => "home#index"

  match "/account/" => "home#account"

  match "/nne/:name" => "Target#show"
  match "/n/:name" => "Target#show"

  match '/target/new' => 'target#create'
end
