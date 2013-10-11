class ProductosController < InheritedResources::Base
  before_filter :encontrar_tipo

  def encontrar_tipo
    if params[:tipo_id]
      @tipo = Tipo.find(params[:tipo_id])
    else
      @prod = Producto.find(params[:id])
      @tipo = @prod.tipo
    end
  end

  def create
    create! { tipo_productos_path(@tipo)}
  end

  def update
    update! { tipo_productos_path(@tipo)}
  end
end
