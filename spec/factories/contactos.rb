require 'ffaker'

FactoryGirl.define do
  factory :contacto do
    nombre { Faker::Name.first_name }
    apellido { Faker::Name.last_name }
    empresa { Faker::Company.name }
    telefono{ Faker::PhoneNumber.phone_number }
    email { Faker::Internet.email }
    direccion { Faker::Address.street_address }
    mensaje { Faker::Lorem.paragraph }
  end
end
