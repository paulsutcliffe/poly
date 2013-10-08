class Subcategoria < ActiveRecord::Base
  attr_accessible :descripcion, :icono, :imagen, :nombre

  belongs_to :categoria
  has_many :tipos

  extend FriendlyId
  friendly_id :nombre, use: :slugged

  mount_uploader :icono, IconoUploader
  mount_uploader :imagen, ImagenUploader
end
