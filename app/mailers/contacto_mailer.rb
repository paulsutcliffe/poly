class ContactoMailer < ActionMailer::Base
  def mensaje_recibido(contacto)
    @contacto = contacto
    mail(:to => "adriel@kosmyka.com", :subject => "Mensaje desde la web", :replay_to => contacto.email, :from => "info@kosmyka.com")
  end
end
