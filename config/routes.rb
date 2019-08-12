Rails.application.routes.draw do
  resources :culture_additions
  resources :hop_additions
  resources :fermentable_additions
  resources :recipes
  resources :cultures
  resources :hops
  resources :fermentables
  root 'pages#home'
end
