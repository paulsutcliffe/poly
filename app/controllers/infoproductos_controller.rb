class InfoproductosController < InheritedResources::Base

  def create
    create! { categorias_path }
  end

  def update
    update! { categorias_path }
  end

end
