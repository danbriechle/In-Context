Rails.application.routes.draw do
  get "/", to: "users#show"
end
