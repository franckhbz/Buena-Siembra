Feature: Monitorear y Controlar la Temperatura del Campo

  Como agricultor, quiero que el sistema "Buena Siembra" registre y controle automáticamente 
  la temperatura del campo para evitar daños a los cultivos debido a condiciones climáticas extremas.

  Scenario Outline: Activación del controlador de temperatura
    Given que el sistema "Buena Siembra" está operativo en mi campo y configurado correctamente
    When la temperatura del campo alcanza un nivel peligroso para los cultivos, por ejemplo, 
    supera los <temperatura_maxima> grados Celsius
    Then el sistema activa automáticamente el controlador de temperatura para tomar medidas 
    destinadas a proteger los cultivos

    Examples:
      | temperatura_maxima |
      | 36                 |
      | 38                 |
      | 40                 |

  Scenario Outline: Restablecimiento automático después de la mejora de la temperatura
    Given que el sistema "Buena Siembra" está operativo en el campo del agricultor y configurado correctamente
    When la temperatura alcance un nivel peligroso y el sistema active el controlador de temperatura
    And posteriormente, la temperatura disminuye y se vuelve segura para los cultivos
    Then el sistema desactiva automáticamente el controlador de temperatura y restaura las 
    condiciones normales de operación en el campo

    Examples:
      | temperatura_inicial | temperatura_segura |
      | 38                  | 25                 |
      | 40                  | 28                 |
      | 42                  | 30                 |

  Scenario Outline: Notificación de condiciones climáticas extremas
    Given que el sistema "Buena Siembra" está operativo en el campo del agricultor y configurado 
    correctamente
    When la temperatura alcanza un nivel peligroso para los cultivos.
    And el sistema activa el controlador de temperatura para proteger los cultivos
    Then el sistema envía una notificación o alerta al agricultor para informar sobre la acción 
    tomada y las condiciones climáticas extremas para que esté al tanto de la situación

    Examples:
      | temperatura_maxima | notificacion_enviada |
      | 36                 | Sí                   |
      | 38                 | Sí                   |
      | 40                 | Sí                   |
