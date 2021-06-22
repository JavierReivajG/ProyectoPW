
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel = "stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <title>Recuperar Contraseña</title>
        <script type="text/javascript">
		function alertar(){
                      var x = document.getElementsByName("Email")[0].value;
                    if (x == ""){
                        alert ("Por favor, ingrese su cuenta de correo.");
                    }
                    else{
                        alert ("Se ha enviado un correo de recuperación. Por favor verifique su bandeja.");
                    }
		}
	</script>
    </head>
    <body>
          <div class="container mt-4 col-lg-4">
            <div class = "card border-info ">
                <div class="card-header bg-info">
                    <H4>Recuperar Contraseña</h4>
                </div>
                <div class ="card-body">
                    <form method="POST">
                        
                        <label>Correo Electrónico</label>
                        <input name="Email" class="form-control" autocomplete="email" placeholder="Correo" type="email" required><BR>
                        
                        <input type="submit" value="Enviar" onclick="alertar()" class="btn btn-success">

                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
