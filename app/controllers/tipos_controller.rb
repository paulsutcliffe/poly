class TiposController < InheritedResources::Base

  belongs_to :subcategoria

  def create
    create! { subcategoria_tipos_path(@subcategoria)}
  end

  def update
    update! { subcategoria_tipos_path(@subcategoria)}
  end

end
