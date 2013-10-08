require 'ffaker'

FactoryGirl.define do
  factory :producto do
    nombre { Faker::Lorem.words(num = 1) }
    imagen { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'support', 'images', 'imagen.jpg')) }
    tipo
  end
end
