Poly::Application.routes.draw do

  scope(path_names: { new: 'nuevo', edit: 'editar' }) do

    resources :categorias do
      resources :subcategorias do
        resources :tipos do
          resources :productos
        end
      end
    end

    resources :contactos

    devise_for :admins, :path => "cms", :path_names => { :sign_in => 'ingresar', :sign_out => 'salir', :password => 'secreto', :confirmation => 'verificacion', :unlock => 'desbloquear', :registration => 'registro', :sign_up => 'inscribirse' }

    match "/quienes-somos" => "quienes_somos#index", :as => 'quienes_somos', :via => :get

    resources :diapositivas

    root to: 'inicio#index'

  end

end
