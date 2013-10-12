require 'ffaker'

FactoryGirl.define do
  factory :diapositiva do
    titulo { Faker::Name.name }
    descripcion { Faker::Lorem.paragraph }
    imagen { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'support', 'images', 'diapositiva.jpg')) }
    link { Faker::Name.name }
  end
end
