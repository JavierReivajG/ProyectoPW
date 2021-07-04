
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel = "stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <title>Ingresar Como Administrador</title>
    </head>
    <body>
          <div class="container mt-4 col-lg-4">
            <div class = "card border-info ">
                <div class="card-header bg-info">
                    <H4>Iniciar sesión como administrador</h4>
                </div>
                <div class ="card-body">
                    <form method="POST">
                                                
                        <label>Correo</label><BR>
                        <input autocomplete="username" class="logininput" placeholder="correo@ejemplo.com" type="text" name="Email" id="username" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="La direccion de correo electronica no es valida" required><BR><BR>
                        <label>Contraseña</label><BR>
                        <input autocomplete="current-password" class="logininput" placeholder="contraseña" type="password" name="Pass" id="password" pattern=".{5,}" title="La contraseña tiene que contener al menos 5 caracteres" required><BR><BR>
                        
                        <input type="submit" value="Ingresar" class="btn btn-success">
                        <a href="sign_in.htm">Regresar</a>

                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
