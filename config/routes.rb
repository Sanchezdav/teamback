Rails.application.routes.draw do
  devise_for :users

  unauthenticated :user do
    devise_scope :user do
      root to: 'devise/sessions#new'
    end
  end
  
  authenticated :user do
    root to: 'teams#index', as: :authenticated_root
    resources :teams
  end
end
