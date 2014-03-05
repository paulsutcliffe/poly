class Informacion < ActiveRecord::Base
  attr_accessible :foto1, :foto2, :mision, :resenia, :vision

  mount_uploader :foto1, FotoUploader
  mount_uploader :foto2, FotoUploader
end
