Rails.application.routes.draw do

  root to: "account#index"

  get "/auth/cas/callback" => "account#new"

end
