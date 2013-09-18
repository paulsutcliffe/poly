Poly::Application.routes.draw do
  resources :diapositivas


  root to: 'inicio#index'

  get "inicio/index"

  end
