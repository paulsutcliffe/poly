require 'ffaker'

FactoryGirl.define do
  factory :tipo do
    nombre { Faker::Name.first_name }
    descripcion { Faker::Lorem.paragraph }
    imagen { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'support', 'images', 'imagen.jpg')) }
    subcategoria
  end
end
