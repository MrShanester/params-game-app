Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/name_game" => "games#name"
  get "/number_game" => "games#number"
  get "/villian_game/:wildcard" => "games#villian"
  get "/url_number_game/:wildcard/:wildcard2" => "games#url_number"
  get "/hero_game/:wildcard" => "games#hero"
  get "/bank_sim/:wildcard" => "games#bank"
  post "/secret" => "games#secret"
end
