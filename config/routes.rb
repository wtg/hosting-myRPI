Rails.application.routes.draw do

  root to: "account#index"

  get "/signup" => "account#signup"
  get "/login" => "account#login"
  get "/auth/cas/callback" => "account#new"

  resource :account

end
