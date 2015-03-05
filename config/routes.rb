Rails.application.routes.draw do
  devise_for :users
  resources :games do
    post :switch_speaker
    member do
      post :reveal_objective
    end

    resources :strategy_cards, only: [:index] do
      collection do
        post :reset
      end
      member do
        post :add_bonus
        post :clear_bonuses
      end
    end

    resources :objective_cards do
      get :mark_card_as_revealed
      post :claim
    end

    resources :decks do
      get :discards
      get :dealt
      post :send_one_card
      get :send_to_player
      post :dispatch_card
    end
    resources :players do
      resource :race_sheet do
        member do
          post :increase_trade_goods
          post :increase_strategy_allocation
          post :increase_command_pool
          post :increase_fleet_supply

          post :decrease_trade_goods
          post :decrease_strategy_allocation
          post :decrease_command_pool
          post :decrease_fleet_supply
        end
      end

      resources :cards do
        member do
          post :play
        end
      end
    end
  end

  resources :players, only: [] do
    resources :strategy_cards, only: [] do
      post :claim
    end
  end

  root to: 'welcome#index'
end
