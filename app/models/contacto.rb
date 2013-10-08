class Contacto < ActiveRecord::Base
  include MailForm::Delivery
  attr_accessible :apellido, :direccion, :email, :empresa, :mensaje, :nombre, :telefono

  attribute :nombre,    :validate => true
  attribute :apellido,  :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i

  attribute :mensaje
  attribute :direccion
  attribute :empresa
  attribute :telefono
  attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Mensaje desde la web",
      :to => "paul@kosmyka.com",
      :from => %("#{nombre} #{apellido}" <#{email}>)
    }
  end

end
