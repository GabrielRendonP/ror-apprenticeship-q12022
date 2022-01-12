Rails.application.routes.draw do
  resources :poke_types
  resources :abilities
  resources :pokemons
  resources :trainers
  resources :pokes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
