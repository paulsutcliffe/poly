class InicioController < ApplicationController
  def index
    @diapositivas = Diapositiva.all
    @texto_de_inicio = TextoDeInicio.first
  end
  def editar_texto_de_inicio
    @texto_de_inicio = TextoDeInicio.first
  end

  def update_texto_de_inicio
    @texto_de_inicio = TextoDeInicio.first
    @texto_de_inicio.update_attributes(params[:texto_de_inicio])
    if @texto_de_inicio.save
      redirect_to action: 'index'
    end
  end
end
