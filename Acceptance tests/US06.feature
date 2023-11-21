Feature: Sistema de Alerta Temprana para Plagas

  Como agricultor, quiero que el sistema "Buena Siembra" detecte tempranamente la presencia 
  de plagas en mis cultivos y me notifique para tomar medidas preventivas.

  Scenario Outline: Detección temprana de plagas y notificación instantánea
    Given que el sistema "Buena Siembra" está en funcionamiento en el campo del agricultor 
    y configurado para detectar plagas mediante sensores
    When los sensores detectan la presencia de plagas en los cultivos del agricultor, como 
    insectos o enfermedades
    Then el sistema debe enviar inmediatamente una notificación al dispositivo móvil del 
    agricultor para informarle sobre la detección de plagas
    And la notificación incluye detalles sobre el tipo de plaga detectada y sugerencias 
    sobre las medidas preventivas que el agricultor puede tomar, como la aplicación de insecticidas específicos

    Examples:
      | Tipo de Plaga   | Medidas Preventivas                 |
      | Insectos        | Aplicar insecticida X cada semana   |
      | Enfermedad A    | Usar fungicida Y cada 10 días       |
      | Ácaros          | Rociar con acaricida Z mensualmente |

  Scenario Outline: Confirmación y seguimiento de la notificación
    Given que el agricultor recibió una notificación del sistema "Buena Siembra" sobre la 
    detección de plagas en sus cultivos
    When el agricultor accede a la notificación a través de su dispositivo móvil
    Then el sistema permite que el agricultor vea información detallada sobre la ubicación 
    exacta en su campo donde se detectaron las plagas
    And la notificación debe proporcionar instrucciones adicionales sobre cómo aplicar los 
    tratamientos necesarios y cuándo hacerlo

    Examples:
      | Ubicación Exacta | Instrucciones                                  |
      | Parcela 1        | Aplicar insecticida X mañana y tarde           |
      | Campo Central    | Rociar fungicida Y cada 7 días                 |
      | Zona Norte       | Utilizar acaricida Z al atardecer cada 15 días |

  Scenario Outline: Registro de alertas y seguimiento de acciones tomadas
    Given que el sistema "Buena Siembra" está en funcionamiento en el campo del agricultor y 
    ha enviado notificaciones sobre la presencia de plagas en el pasado
    When el agricultor recibe una nueva notificación sobre plagas y toma medidas para tratarlas, 
    como la aplicación de insecticidas
    Then el sistema registra la alerta y las acciones del agricultor en un historial de eventos 
    para realizar un seguimiento de las acciones tomadas y evaluar la efectividad de las medidas 
    preventivas en el futuro

    Examples:
      | Evento    | Acciones Tomadas                         |
      | Evento 1  | Aplicación de insecticida X              |
      | Evento 2  | Rociar fungicida Y y acaricida Z         |
      | Evento 3  | Aumentar frecuencia de tratamientos X, Y |
