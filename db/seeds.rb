require 'factory_girl'
require 'database_cleaner'

DatabaseCleaner.strategy = :truncation

# then, whenever you need to clean the DB
DatabaseCleaner.clean

FactoryGirl.create :admin

6.times do
  FactoryGirl.create :producto
end

6.times do
  FactoryGirl.create :contacto
end

3.times do
  FactoryGirl.create :diapositiva
end

TextoDeInicio.create(nosotros: 'Somos una empresa que lidera en el mercado desde hace 25 años.',
                     productos: 'Somos una empresa que lidera en el mercado desde hace 25 años.',
                     contactos: 'Somos una empresa que lidera en el mercado desde hace 25 años.',
                     titulo: 'introduccion de la empresa',
                     contenido: 'Somos una empresa dedicada a la elaboración de productos plásticos para la industria promocional, textil y del calzado con más de 20 años de experiencia en el mercado, durante los cuales hemos aportado al crecimiento de nuestros clientes brindándoles productos novedosos y de alta calidad, entre los que podemos mencionar las etiquetas de goma, los botones de goma, los pullers plásticos, llaveros promocionales y últimamente productos metálicos como placas y botones entre otros. Para esto contamos con una selecto staff de profesionales capacitados para el asesoramiento a nuestros clientes, los cuales brindan un servicio de alto nivel, volcando sus conocimientos a atender las necesidades que el mercado requiere. Además contamos también con el respaldo de haber realizado trabajos con importantes empresas del rubro y una cartera de clientes muy reconocida.')

FactoryGirl.create :informacion

