Rails.application.routes.draw do
  get "/songs/:id" => "songs#show"
  get "/songs" => "songs#index"
end
