class Producto < ActiveRecord::Base
  attr_accessible :imagen, :nombre

  belongs_to :tipo

  extend FriendlyId
  friendly_id :nombre, use: :slugged

  mount_uploader :imagen, ImagenUploader
end
