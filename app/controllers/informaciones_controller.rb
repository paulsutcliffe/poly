class InformacionesController < InheritedResources::Base
  def update
    update! { quienes_somos_path }
  end
end
