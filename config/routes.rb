Rails.application.routes.draw do
  resources :recipes do
    resources :fermentable_additions
    resources :culture_additions
    resources :hop_additions
  end
  resources :cultures
  resources :hops
  resources :fermentables
  root 'pages#home'
end
