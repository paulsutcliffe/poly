class Diapositiva < ActiveRecord::Base
  attr_accessible :descripcion, :imagen, :slug, :titulo


  extend FriendlyId
  friendly_id :titulo, use: :slugged

  mount_uploader :imagen, ImagenUploader
end
