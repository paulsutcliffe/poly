class SubcategoriasController < InheritedResources::Base

  belongs_to :categoria

  def create
    create! { categoria_subcategorias_path(@categoria)}
  end

  def update
    update! { categoria_subcategorias_path(@categoria)}
  end

end
