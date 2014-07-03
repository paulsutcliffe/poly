class CategoriasController < InheritedResources::Base

  def create
    create! { categorias_path }
  end

  def update
    update! { categorias_path }
  end

  def index
    @infoproducto = Infoproducto.find(1)
    @categorias = Categoria.all
  end
end
