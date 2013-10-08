require 'ffaker'

FactoryGirl.define do
  factory :producto do
    nombre { Faker::Name.first_name }
    imagen { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'support', 'images', 'imagen.jpg')) }
    tipo
  end
end
