Feature: Registrar un servicio de mantenimiento de un sistema de riego inteligente

    Como desarrollador, quiero registrar el servicio de mantenimiento del sistema de riego inteligente de un agricultor que realice para tener un registro

Scenario: Aceptar el servicio de mantenimiento
Given que el <desarrollador> ha recibido una solicitud para el servicio de mantenimiento
When el desarrollador <acepta el servicio de mantenimiento>
Then el servicio al cliente <notifica al agricultor> que su solicitud ha sido aceptada

Examples:
    | desarrollador | acepta el servicio de mantenimiento | notifica al agricultor |
    | Fernando  | Servicio de mantenimiento aceptado  | Su solicitud ha sido aceptada exitosamente  |

Scenario: Registrar el servicio de mantenimiento
Given que el <desarrollador> tiene acceso al sistema de riego inteligente del agricultor
When el desarrollador solucione los problemas encontrados en el sistema de riego y presione el botón "Sistema Revisado"
Then el sistema guardará un informe y la fecha del servicio de mantenimiento del sistema de riego inteligente del agricultor en un <registro en la base de datos>

Examples:
    | desarrollador | registro en la base de datos |
    | Paola  | El informe y fecha del servicio de mantenimineto se ha guardado exitosamente en la base de datos  |
