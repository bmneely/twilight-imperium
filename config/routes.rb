Rails.application.routes.draw do
  devise_for :users
  resources :games do
    resources :decks
  end
  
  root to: 'welcome#index'
end
