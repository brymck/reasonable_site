ReasonableSite::Application.routes.draw do
  resources :categories, :reports, :trolls, :users
  match "login" => "sessions#new"
  match "logout" => "sessions#destroy"
  root :to => 'trolls#index'
end
