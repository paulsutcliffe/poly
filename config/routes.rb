Poly::Application.routes.draw do
  resources :contactos


  devise_for :admins, :path => "cms", :path_names => { :sign_in => 'ingresar', :sign_out => 'salir', :password => 'secreto', :confirmation => 'verificacion', :unlock => 'desbloquear', :registration => 'registro', :sign_up => 'inscribirse' }

  resources :examples


  get "productos/index"

  get "quienes_somos/index"

  resources :diapositivas

  match 'ejemplo' => 'quienes_somos#ejemplo'


  root to: 'inicio#index'

  get "inicio/index"

  end
