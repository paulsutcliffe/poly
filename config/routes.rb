Poly::Application.routes.draw do
  get "quienes_somos/index"

  resources :diapositivas


  root to: 'inicio#index'

  get "inicio/index"

  end
