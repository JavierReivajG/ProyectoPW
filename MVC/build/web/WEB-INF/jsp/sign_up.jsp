
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="./css/sign_up.css">
    <script src="/src/js/Sing_up.js"></script>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sing in</title>
</head>
<body class="body-signing">
    <main class="main-container-sign_in">
        <section class="section-container">
            <ul class="container-iner">
                <li class="iner-singup"><p>Crear Cuenta</p></li>
                <li class="slidery">
                    <div class="container-slidery">
                        <form action="" class="form-container">
                            <input class='logininput' name="Apellido" autocomplete="family-name" placeholder="Apellido (S)" type="text">
                            <input class='logininput' name="Nombre" autocomplete="name" placeholder="Nombre (S)" type="text">
                            <input class='logininput' name="Email" autocomplete="email" placeholder="Correo" type="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="La direccion de correo electronica no es valida" required>
                            <input class='logininput' name="Contraseña" autocomplete="current-password" placeholder="contraseña" type="password" pattern=".{5,}" title="La contraseña tiene que contener al menos 5 caracteres" required>
                            <input class='logininput' name="No_telefono" autocomplete="tel-local" placeholder="Numero Telefonico" type="number">          
                            <p class="iner-botons">Direcciones</p>
                            <input class='logininput' name="Calle" autocomplete="address-line3" placeholder="Calle" type="number">
                            <input class='logininput' name="Colonia" autocomplete="street-address" placeholder="Colonia" type="number">
                            <input class='logininput' name="Numero" autocomplete="address-line1" placeholder="Numero interior y exterior" type="number">
                            <input class='logininput' name="Municipio" autocomplete="cc-additional-name" placeholder="Municipio" type="number">
                            <input class='logininput' name="Cp" autocomplete="postal-code" placeholder="Codigo Postal" type="number">
                            <input class='logininput' name="Red_social" placeholder="Red Social" type="text">
                            <input class="iner-sign-button" type="submit" value="Vamos!">
                        </form>
                    </div>
                </li>
                <li class="iner-create-acount"><span>Ya tienes cuenta?</span> <a href="./sign_in.html"> Inicia Sesion</a></li>
            </ul>
        </section>
    </main>
</body>
</html>

