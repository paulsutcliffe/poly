Poly::Application.routes.draw do

  scope(path_names: { new: 'nuevo', edit: 'editar' }) do

    resources :categorias, :shallow => true do
      resources :subcategorias, :shallow => true do
        resources :tipos, :shallow => true do
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
