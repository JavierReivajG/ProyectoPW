
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel = "stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <title>Crear cuenta</title>
    </head>
    <body>
        <center>
        <h3>Programa de Resultados Electorales Preliminares 2021</h3>
          <div class="container mt-4 col-lg-4">
            <div class = "card border-info ">
                <div class="card-header bg-info">
                    <H4>Crear cuenta</h4>
                </div>
                <div class ="card-body">
                    <form method="POST">

                        <label><h4>Apellidos</h4></label>
                        <input class="form-control" name="Ape" autocomplete="family-name" placeholder="Apellidos" type="text"><br>
                        <label><h4>Nombres</h4></label>
                        <input class="form-control" name="Nom" autocomplete="name" placeholder="Nombres" type="text" required><br>
                        <label><h4>Correo</h4></label>
                        <input class="form-control" name="Email" autocomplete="email" placeholder="ejemplo@gmail.com" type="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="La direccion de correo electronica no es valida" required><br>
                        <label><h4>Contraseña</h4></label>
                        <input class="form-control" name="Pass" autocomplete="current-password" placeholder="5 caracteres minimo" type="password" pattern=".{5,}" title="La contraseña tiene que contener al menos 5 caracteres" required><br>
                        <label><h4>Teléfono</h4></label>
                        <input class="form-control" name="Tel" autocomplete="tel-local" placeholder="Número telefónico" type="number"><br>
                        <label><h4>Calle</h4></label>
                        <input class="form-control" name="Calle" autocomplete="address-line3" placeholder="Calle" type="text" required><br>
                        <label><h4>Colonia</h4></label>
                        <input class="form-control" name="Col" autocomplete="street-address" placeholder="Colonia" type="text" required><br>
                        <label><h4>Número</h4></label>
                        <input class="form-control" name="Num" autocomplete="address-line1" placeholder="Número interior y exterior" type="text" required><br>
                        <label><h4>Municipio</h4></label>
                        <input class="form-control" name="Mun" autocomplete="cc-additional-name" placeholder="Municipio" type="text" required><br>
                        <label><h4>Código Postal</h4></label>
                        <input class="form-control" name="Cp" autocomplete="postal-code" placeholder="Código Postal" type="text"><br>
                        <label><h4>Red Social</h4></label>
                        <input class="form-control" name="Red" placeholder="Red Social" type="text"><br>

                        <input class="btn btn-success" type="submit" value="Crear cuenta">
                        <a href="index.htm">Iniciar sesión</a>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
