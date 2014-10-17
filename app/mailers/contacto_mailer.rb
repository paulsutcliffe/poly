class ContactoMailer < ActionMailer::Base
  def mensaje_recibido(contacto)
    @contacto = contacto
    mail(:to => "info@mpsac.com.pe", :subject => "Mensaje desde la web", :replay_to => contacto.email, :from => "mensajespoly@gmail.com")
  end
end
