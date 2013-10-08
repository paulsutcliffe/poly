require 'ffaker'

FactoryGirl.define do
  factory :subcategoria do
    nombre { Faker::Name.first_name }
    descripcion { Faker::Lorem.paragraph }
    imagen { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'support', 'images', 'imagen.jpg')) }
    icono { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'support', 'images', 'icono.png')) }
    categoria
  end
end
