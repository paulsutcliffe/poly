Poly::Application.routes.draw do
  get "productos/index"

  get "quienes_somos/index"

  resources :diapositivas

  match 'ejemplo' => 'quienes_somos#ejemplo'


  root to: 'inicio#index'

  get "inicio/index"

  end
