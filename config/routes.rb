Poly::Application.routes.draw do

  resources :infoproductos


  resources :informaciones

  match "/quienes-somos" => "informaciones#index", :as => 'quienes_somos', :via => :get

  scope(path_names: { new: 'nuevo', edit: 'editar' }) do

    resources :categorias do
      resources :subcategorias
    end

    resources :subcategorias do
      resources :tipos
    end

    resources :tipos do
      resources :productos
    end

    resources :contactos

    devise_for :admins, :path => "cms", :path_names => { :sign_in => 'ingresar', :sign_out => 'salir', :password => 'secreto', :confirmation => 'verificacion', :unlock => 'desbloquear', :registration => 'registro', :sign_up => 'inscribirse' }

    match "/quienes-somos" => "quienes_somos#index", :as => 'quienes_somos', :via => :get

    resources :diapositivas

    get 'inicio/editar_texto_de_inicio'

    put 'inicio/update_texto_de_inicio'

    root to: 'inicio#index'

    match "/cpanel" => redirect("http://cpanel.manufacturaspoly.com:2082"), :as => :cpanel

  end

end
