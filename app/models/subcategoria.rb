class Subcategoria < ActiveRecord::Base
  attr_accessible :descripcion, :imagen, :nombre

  belongs_to :categoria
  has_many :tipos, :dependent => :destroy

  extend FriendlyId
  friendly_id :nombre, use: :slugged

  mount_uploader :imagen, ImagenUploader
end
