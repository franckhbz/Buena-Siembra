Feature: Optimizar el Uso de Recursos Hídricos

  Como agricultor, quiero que el sistema "Buena Siembra" ajuste el riego de manera 
  inteligente para minimizar el consumo de agua y reducir los costos de producción.

  Scenario Outline: Reducción automática del riego debido a condiciones climáticas favorables
    Given que el sistema "Buena Siembra" está instalado en el campo del agricultor y configurado 
    para ajustar el riego según las condiciones climáticas
    When se determinen condiciones climáticas favorables, como lluvias abundantes o una humedad 
    atmosférica alta
    Then el sistema debe reducir automáticamente la cantidad de riego programada o interrumpirlo 
    por completo para conservar el agua y evitar el desperdicio

    Examples:
      | Condiciones Climáticas   | Reducción de Riego |
      | Lluvias Abundantes       | Interrumpir        |
      | Humedad Atmosférica Alta | Reducción del 20%  |
      | Temperatura Baja         | Interrumpir        |

  Scenario Outline: Interrupción del riego cuando se alcanza la humedad óptima del suelo
    Given que el sistema "Buena Siembra" está instalado en el campo del agricultor y configurado 
    para medir la humedad del suelo
    When los sensores de humedad del suelo detecten que la humedad ha alcanzado el nivel óptimo 
    para los cultivos
    Then el sistema interrumpe automáticamente el riego programado, ya que el suelo tiene suficiente 
    humedad para satisfacer las necesidades de los cultivos sin desperdiciar agua

    Examples:
      | Humedad del Suelo | Interrupción de Riego |
      | Óptima            | Sí                    |
      | Baja              | No                    |
      | Alta              | Sí                    |

  Scenario Outline: Notificación de ajustes en el riego
    Given que el sistema "Buena Siembra" está instalado en el campo del agricultor y ha realizado 
    ajustes en el riego
    When el sistema realice cambios en la programación de riego debido a condiciones climáticas 
    favorables o niveles óptimos de humedad del suelo
    Then el sistema envía una notificación al agricultor para informar sobre los ajustes realizados 
    y los motivos detrás de estos cambios, destacando el ahorro de agua y los costos asociados

    Examples:
      | Tipo de Ajuste             | Mensaje de Notificación                                                                   |
      | Reducción de Riego         | Se ha reducido el riego debido a condiciones climáticas favorables. Ahorro estimado: 15%. |
      | Interrupción por Lluvias   | Riego interrumpido debido a lluvias abundantes. Ahorro total de agua.                     |
      | Óptima Humedad del Suelo   | Riego interrumpido, ya que la humedad del suelo es óptima. Ahorro estimado: 10%.          |
