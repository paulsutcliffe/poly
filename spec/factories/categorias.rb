require 'ffaker'

FactoryGirl.define do
  factory :categoria do
    nombre { Faker::Lorem.words(num = 1) }
    descripcion { Faker::Lorem.paragraph }
    imagen { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'support', 'images', 'imagen.jpg')) }
  end
end
