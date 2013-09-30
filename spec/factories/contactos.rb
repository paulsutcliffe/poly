# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contacto do
    nombre "MyString"
    apellido "MyString"
    empresa "MyString"
    telefono "MyString"
    email "MyString"
    direccion "MyString"
    mensaje "MyText"
  end
end
