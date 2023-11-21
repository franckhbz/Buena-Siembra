Feature: Acceder al sistema "Buena Siembra" sin acceso a internet constante

    Como agricultor de una zona rural, quiero poder accerder y utilizar el sistema "Buena siembra" incluso
    cuando no tenga acceso constante a internet para garantizar que mis cultivos esten bien atendidos.

Scenario: Uso de la aplicacion movil sin conexion
Given que el <agricultor> es residente de una zona rural con acceso intermitente a internet y ha instalado la aplicacion movil de "Buena Siembra" en su diapositivo
When el agricultor intenta utilizar la aplicacion sin estar conectado a internet
Then el sistema debe permitir que el agricultor pueda realizar tareas basicas, como <programar riegos> o consultar datos de humedad del suelo

Examples:
    | agricultor | programar riegos |
    | Paolo  | El riego ha sido programado a las 11:00am  |

Scenario: Uso del sistema web sin conexion
Given que el  <agricultor> de una zona rural con acceso intermitente a internet y utilizo el sistema web de "Buena Siembra"
When el agricultor intenta acceder al sistema web sin conexión a internet
Then el sistema web permite al agricultor realizar tareas basicas, como revisar informes de produccion o ver el <estado de mis cultivos>
And cuando recupere la conexion a internet, el <sistema web se sincronizara automaticamente con los datos>

Examples:
    | agricultor | estado de mis cultivos | sistema web se sincronizara automaticamente con los datos |
    | Marisol  | Estado: Bueno  | Los datos fueron sincronizados exitosamente  |
