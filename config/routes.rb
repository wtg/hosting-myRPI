Rails.application.routes.draw do

  root to: "account#signup"

  get "/signup" => "account#signup"
  get "/login" => "account#login"
  get "/auth/cas/callback" => "account#new"

  resource :account

end
