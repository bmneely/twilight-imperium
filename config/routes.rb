Rails.application.routes.draw do
  devise_for :users
  resources :games do
    post :reveal_objective
    resources :decks do
      get :discards
      get :dealt
      post :send_one_card
      get :send_to_player
      post :dispatch_card
    end
    resources :players do
      resources :cards do
        member do
          post :play
        end
      end
    end
  end

  root to: 'welcome#index'
end
