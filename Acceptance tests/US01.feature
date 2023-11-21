Feature: Implementación del Sistema de Riego "Buena Siembra"

  Como agricultor, quiero que el sistema de riego "Buena Siembra" esté instalado y
   configurado en mi campo para mejorar la eficiencia en el riego y la producción de cultivos.

  Scenario Outline: Instalación del sistema con diferentes condiciones
    Given que el agricultor está interesado en "Buena Siembra"
    When el agricultor solicita la instalación del sistema a "Eco Innovadores" el lunes por la mañana
    Then el sistema se encuentra operativo en el campo del agricultor el siguiente lunes, dentro del plazo de 7 días

    Examples:
      | Condiciones Climáticas | Dias de Retraso |
      | Normales               | 0               |
      | Lluvias Fuertes        | 5               |
      | Condiciones Adversas   | 7               |

  Scenario Outline: Instalación exitosa antes del plazo
    Given que el agricultor está interesado en "Buena Siembra"
    When el agricultor solicita la instalación del sistema a "Eco Innovadores" el lunes por la mañana
    Then el sistema se encuentra operativo en el campo del agricultor el viernes de la misma semana,
    antes del plazo de 7 días

    Examples:
      | Dias de Anticipación |
      | 0                    |
      | 2                    |
      | 5                    |

  Scenario Outline: Retraso en la instalación debido a condiciones climáticas
    Given que el agricultor está interesado en "Buena Siembra"
    When el agricultor solicita la instalación del sistema a "Eco Innovadores" el lunes
    por la mañana y durante la semana se presentan <condiciones> adversas
    Then el sistema se encuentra operativo en el campo del agricultor dentro de los 7 
    días, pero si las condiciones climáticas impiden la instalación, se informa sobre
    el retraso y proporciona una fecha estimada actualizada

    Examples:
      | condiciones      |
      | lluvias fuertes  |
      | vientos fuertes  |
      | granizo          |

      

