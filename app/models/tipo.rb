class Tipo < ActiveRecord::Base
  attr_accessible :descripcion, :imagen, :nombre

  belongs_to :subcategoria
  has_many :productos

  extend FriendlyId
  friendly_id :nombre, use: :slugged

  mount_uploader :imagen, ImagenUploader
end
