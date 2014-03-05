class DataInicialDeInicio < ActiveRecord::Migration
  def up
    TextoDeInicio.create(nosotros: 'Somos una empresa que lidera en el mercado desde hace 25 años.',
                         productos: 'Somos una empresa que lidera en el mercado desde hace 25 años.',
                         contactos: 'Somos una empresa que lidera en el mercado desde hace 25 años.',
                         titulo: ' INTRODUCCIÓN DE LA EMPRESA ',
                         contenido: 'Somos una empresa dedicada a la elaboración de productos plásticos para la industria promocional, textil y del calzado con más de 20 años de experiencia en el mercado, durante los cuales hemos aportado al crecimiento de nuestros clientes brindándoles productos novedosos y de alta calidad, entre los que podemos mencionar las etiquetas de goma, los botones de goma, los pullers plásticos, llaveros promocionales y últimamente productos metálicos como placas y botones entre otros. Para esto contamos con una selecto staff de profesionales capacitados para el asesoramiento a nuestros clientes, los cuales brindan un servicio de alto nivel, volcando sus conocimientos a atender las necesidades que el mercado requiere. Además contamos también con el respaldo de haber realizado trabajos con importantes empresas del rubro y una cartera de clientes muy reconocida.')
    Informacion.create(resenia: 'MANUFACTURAS POLY inició sus operaciones en el año 1989. Con la propuesta visionaria de un grupo entusiasta de empresarios con ideas innovadoras, las cuales aplicarían íntegramente al abastecimiento de insumos plásticos y sus derivados para la industria del calzado. En poco tiempo fue considerada como una de las principales empresas en lo que a este rubro se refiere, convirtiéndose así en participe del desarrollo y crecimiento de sus clientes. Con el transcurrir de los años la empresa vio la oportunidad de ampliar su mercado objetivo entrando al mundo de insumos para textiles y artículos publicitarios. Ha sido con estos productos con los que la empresa ha logrado posicionarse a nivel nacional e internacional, siendo reconocida por su calidad, cumplimiento y compromiso para con sus clientes. En la actualidad contamos con una mayor gama de productos gracias a la implementación de nuevas líneas que nos están abriendo las posibilidades de seguir atendiendo a nuestros clientes de una manera más completa e integral ya que ahora abarcamos no solo productos de goma sino que además también hacemos productos de metal y por su puesto productos que combinan el metal con la goma. ',
                       mision: 'Somos una empresa innovadora que satisface las necesidades del mercado de una manera rápida y eficiente, para esto nos preocupamos en ofrecer productos de alta calidad y competitivos con los mejores mercados internacionales. ',
                       vision: 'Facilitar las labores comerciales de nuestros clientes cooperando con ellos en la implementación de nuevas tendencias de una manera conjunta, brindándoles el soporte y asesoramiento necesario para el uso nuevos accesorios que le den valor a sus productos. ')
  end

  def down
    TextoDeInicio.first.delete
    Informacion.first.delete
  end
end
