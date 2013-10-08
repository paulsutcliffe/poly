require 'ffaker'

FactoryGirl.define do
  factory :diapositiva do
    titulo { Faker::Lorem.words(num = 1) }
    descripcion { Faker::Lorem.paragraph }
    imagen { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'support', 'images', 'diapositiva.jpg')) }
  end
end
