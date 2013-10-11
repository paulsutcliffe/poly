class Categoria < ActiveRecord::Base
  attr_accessible :descripcion, :imagen, :nombre

  has_many :subcategorias, :dependent => :destroy

  extend FriendlyId
  friendly_id :nombre, use: :slugged

  mount_uploader :imagen, ImagenUploader
end
