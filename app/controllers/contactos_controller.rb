#coding: utf-8
class ContactosController < InheritedResources::Base

  def create
    create! do |success, failure|
      success.html do
        ContactoMailer.mensaje_recibido(@contacto).deliver

        flash[:notice] = "Tu mensaje fue enviado con éxito."
        redirect_to new_contacto_path
      end
      failure.html do
        flash[:notice] = "No ha sido enviado el mensaje."
        render :action => "new"
      end
    end
  end

end
