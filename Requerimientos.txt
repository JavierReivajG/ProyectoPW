# ProyectoPW
Esto confirma la ingeneiria de requerimiento, de forma técnica y clara.

Software a Realizar: Sistema PREP
Sistema para contabilizar los votos en una elección de forma rápida y sencilla. 

Módulo 1: Login 
Solicita el usuario y contraseña de la persona para que pueda ingresar al sistema. El usuario tiene que ser un correo electrónico, debe contener Nombre, Usuario @, proveedor de servicios de correo electrónico y su dominio. 
(.mx, .com, etx) Deje contener una contraseña, que constará de 5 carácteres alfanuméricos como mínimo, al teclearla la contraseña se debe proteger con ***. 
Si no existe un usuario, debemos generar una pestaña o botón que registre nuevos usuarios que deben contener Nombre Completo, Correo Electrónico, Contraseña, Dirección: Calle, Colonia, Número, Municipio y Código Postal. Además debe agregar un número de teléfono, celular o fijo y opcionalmente puede agregar una red social.
Deben existir solo dos tipos de usuarios, administrador y capturista, el administrador debe estar en el código mientras que los capturistas se registran y son aprobados p rechazados por el administrador. 

Nota: La ventana Login debe tener el acceso al programa, en caso de que el usuario que quiere interesar no existe permite crear un usuario nuevo, a través de un botón. Al permitir crear un usuario nuevo, también debe haber una pestaña o boton que permita recuperar la contraseña en caso de ser olvidada, esto en la página de login. 
El sistema será Web, debe existir un usuario root (Padre o Madre) que se encargue de autorizar o rechazar los usuarios que se han creado en la aplicación, pues no cualquiera puede usar la aplicación. Antes de dar acceso a la aplicación el usuario root o administrador debe autorizar su uso o ingreso. 

Módulo 2: Registro (Pantalla Principal) 
Este registro permite generar un registro en función de las características del municipio, según la cantidad de casillas y urnas de elección pues existen diferentes tipos. Debe tener un combo box, para desplegar los tipos de casilla que pueden ser: Básica, Contigua, Especial, Extraordinaria y Otra. 

Seccional se refiere a la demarcación que contiene al territorio del municipio y se divide para definir las secciones en las que se debe votar, nuestro sistema genérico se adapta a todos los municipios por ella contiene un combi box para seleccionar el seccional en el que se está participando según el municipio, por ejemplo Tonalá tiene 68 seccionales. Además de esto se debe agregar un combo box que registra el distrito que en el caso de Tonalá es el 7 y 20 aún que en el caso de Jalisco existen 20 distritos. 

 Los sistemas deben ser autoadaptables, pues estos quedan abiertos y vendibles pues se configuran relativamente a la medida del usuario. 

Módulo 3: Captura de Datos
Debe permitir la opción de registrar a todos los partidos y oeeosnas independientes (En Tonalá compiten 13 partidos y 1 independiente) se deben capturar todas, esto se realiza interesando: Las opciones de los partidos que hoy están jugando o compitiendo. Se abre una pantalla para cada candidatura, presidente municipal, diputado local y diputado federar, respecto a la lista nominal de partidos debemos poner o llenar la información, para: 
• Presidente Municipal listando los partidos que existen: PAN, PRD, PRI, VERDE ECOLÓGISTA, PT, MOVIMIENTO CIUDADANO, MORENA, PES, PARTIDO DE REDES SOCIALES PROGRESISTAS, (RSP), FUERZA MÉXICO, HAGAMOS, SOMOS y FUTURO, INDEPENDIENTE y NULO. 

• Diputado Federal listando los partidos que existen más las co- alisiones: 
PAN, PRD, PRI, VERDE ECOLÓGISTA, PT, MORENA, PES, RSP, FUERZA MÉXICO, MOVIMIENTO CIUDADANO, PAN-PRD-PRI, MORENA-VERDE-PT, INDEPENDIENTE (En Tonalá no existe) y NULO. 

• Diputado Local listando los partidos que existen: PAN, PRD, PRI, VERDE ECOLÓGISTA, PT, MOVIMIENTO CIUDADANO, MORENA, PES, PARTIDO DE REDES SOCIALES PROGRESISTAS, (RSP), FUERZA MÉXICO, HAGAMOS, SOMOS y FUTURO, INDEPENDIENTE y NULO. (Nivel Estatal) 


En este caso, debería dejar una casilla en blanco para introducir el
