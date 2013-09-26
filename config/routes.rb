Poly::Application.routes.draw do
  devise_for :admins

  resources :examples


  get "productos/index"

  get "quienes_somos/index"

  resources :diapositivas

  match 'ejemplo' => 'quienes_somos#ejemplo'


  root to: 'inicio#index'

  get "inicio/index"

  end
