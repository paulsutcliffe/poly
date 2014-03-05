# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :informacion do
    foto1 { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'support', 'images', 'imagen.jpg')) }
    foto2 { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'support', 'images', 'imagen.jpg')) }
    resenia { Faker::Lorem.paragraph }
    mision { Faker::Lorem.paragraph }
    vision { Faker::Lorem.paragraph }
  end
end
