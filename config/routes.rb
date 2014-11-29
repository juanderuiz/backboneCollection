Mymusic::Application.routes.draw do
  root 'bands#index'

  resources :bands, only: [:index, :create, :update, :destroy]

  get '*any' => 'bands#index'
end
