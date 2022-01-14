Rails.application.routes.draw do
  resources :poke_data
  resources :poke_types
  resources :abilities
  resources :pokemons
  resources :trainers
  resources :pokes

  get 'add_ability', to: 'abilities#link_ability'
  get 'add_type', to: 'poke_types#add_poke_type'
  root 'trainers#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
