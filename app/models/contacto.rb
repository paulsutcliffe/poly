class Contacto < ActiveRecord::Base
  attr_accessible :apellido, :direccion, :email, :empresa, :mensaje, :nombre, :telefono
end
