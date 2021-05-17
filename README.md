# ProyectoPW
Sistema de control de pagos (proyecto final ingeniería de software)
Login 
Cliente, 
Vendedor y Administrador (aprobación)
Usuario 
 Contraseña alfanumérico de 8 caracteres.
Podrán ingresar con cuenta Facebook o google.
Crear cuenta nueva que contenga los datos de las personas
Nombre, dirección, teléfono, correo, redes sociales, numero de cliente(auto incrementable i++).
Recuperar contraseña y se envía al correo registrado o viceversa recuperar usuario y se envía al correo,(para que se envié es necesario poner tu correo y haga la comparativa con tu correo registrado, si es verdadero envía)

Perfiles
Clientes:
Vendedor:
Administrador:


Registro de pagos (pantalla principal)
Clientes
Debe tener un espacio para cambiar el logotipo cuando se cargue el sistema por primera vez o cuando lo decida el administrador.
Mostrar Fecha y hora 
Se captura el pago o transferencia o recibo.
Y el estatus es pago cargado en el sistema del mes “variable mes”, ”variable año”. Se el pago es al corriente.
Si no lo fuera selecciona una casilla, abre un calendario y deja seleccionar la fecha.
Un botón de “GUARDAR”.
Guarda la imagen con los datos ya pre registrados en la base de datos y envía una notificación a través de correo electrónico donde señala que el recibo fue recibido y cargado, espera que sea revisado para otorgarle su recibo de pago correspondiente al mes.

Aprobación de recibos 
Vendedor o Administrador
 El vendedor o el administrador acezaran a la plataforma y encontrara todas las personas que han subido sus imágenes de pago, si estas no son legibles habrá un botón donde este pree configurado y envié un correo donde exprese que su imagen no se puede leer.
Si esta legible, existirá un botón que permita aprobar el pago lo guarde o lo cambie de estatus a aprobado “mes “y “año”. Texfield donde cantidad que tiene el recibo.
Ejemplo 1580.00  APROBADO y regresa el recibo al cliente por correo.
Si por error aprobó el pago y después encontró una falla podrá regresar el status a revisión por falla_______________ y notificar al cliente.


Reportes
El cliente podrá accesar a la parte de reportes a ver cuantos pagos lleva realizados, fecha, dia y hora de carga de su recibo y envio de su pago, solo a su cuenta y descargarlo en PDF de la misma manera que el vendedor, solo una cuenta a la vez.

Administrador podrá accesar a todas y cada una de las cuentas, los reportes podran ser nombre, numero de cliente, pagos realizados, de una fecha a otra “intervalo”. Pago aprobado.
