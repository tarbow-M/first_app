Rails.application.routes.draw do
  get 'posts', to: 'posts#index'  #  「posts」という外部入力をコントローラー「posts#index」に振り分け
  get 'posts/new', to: 'posts#new'
  post 'posts', to: 'posts#create'
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check
end
