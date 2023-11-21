Feature: Control Automático del Riego y Humedad del Suelo

  Como agricultor, quiero que el sistema de riego "Buena Siembra" ajuste automáticamente 
  el riego según los niveles de humedad del suelo para evitar el exceso o la escasez de agua.

  Scenario Outline: Riego automático en respuesta a humedad insuficiente
    Given que el sistema "Buena Siembra" está instalado en el campo del agricultor y está configurado correctamente
    When los sensores de humedad detectan un nivel de humedad en el suelo por debajo del nivel óptimo predefinido
    Then el sistema activa automáticamente el riego y lo mantiene encendido hasta que los sensores detectan que se 
    ha alcanzado el nivel óptimo de humedad

    Examples:
      | Nivel de Humedad Detectado |
      | 10%                         |
      | 15%                         |
      | 20%                         |

  Scenario Outline: Confirmación de nivel de humedad óptimo alcanzado
    Given que el sistema "Buena Siembra" está instalado en el campo del agricultor y los sensores de humedad están 
    en funcionamiento
    When el sistema activa el riego debido a una humedad insuficiente
    Then los sensores siguen monitoreando la humedad del suelo y, una vez que se alcance el nivel óptimo, el sistema 
    debe detener automáticamente el riego y generar un registro o notificación para informar al agricultor que el 
    nivel de humedad óptimo ha sido alcanzado

    Examples:
      | Humedad Inicial | Humedad Óptima | Humedad Final |
      | 12%             | 25%            | 25%           |
      | 18%             | 30%            | 30%           |
      | 22%             | 28%            | 28%           |


  Scenario Outline: Falla en la activación del riego
  
    Given que el sistema "Buena Siembra" está instalado en el campo del agricultor y configurado correctamente
    When los sensores de humedad detectan un nivel de humedad insuficiente
    But el sistema no logra activar el riego adecuadamente debido a una falla técnica o una interrupción 
    en el suministro de agua
    Then el sistema debe generar una alerta o notificación para informar sobre la falla y proporcionar 
    instrucciones sobre cómo abordar el problema

    Examples:
      | Tipo de Falla       |
      | Fallo Técnico        |
      | Interrupción de Agua |
      | Otro                 |
