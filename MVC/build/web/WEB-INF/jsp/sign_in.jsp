
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="./css/sign_in.css">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iniciar Sesion</title>
</head>
<body class="body-signing">
    <main class="main-container-sign_in">
        <section class="section-container">
            <ul class="container-iner"> 
                <li class="iner-singin"><p>Iniciar Sesion</p></li>
                <li class="iner-email">
                    <form class="container-iner"  action="" method = "POST">
                        <span class="invalid" id="correo-comprobacion"></span>
                        <input autocomplete="username" class="logininput" placeholder="correo@ejemplo.com" type="text" name="username" id="username" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="La direccion de correo electronica no es valida" required>
                        <span class="password-icon"></span>
                        <input autocomplete="current-password" class="logininput" placeholder="contraseña" type="password" name="password" id="password" pattern=".{5,}" title="La contraseña tiene que contener al menos 5 caracteres" required>
                        <li class="iner-botons">
                            <a class="recordar" href="">Recordar contraseña</a><a class="" href="">Terminos y Condiciones</a>
                        </li>
                        <input class="iner-sign-button" type="submit" value="Vamos!">
                    </form>
                </li>
                <li class="iner-lineal"><p>Otras</p></li>
                <li class="iner-icons">
                    <img class="face-icon" src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Facebook_f_logo_%282019%29.svg/1365px-Facebook_f_logo_%282019%29.svg.png" alt="">
                    <img class="goog-icon" src="https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-webinar-optimizing-for-success-google-business-webinar-13.png" alt="">
                    <img class="twit-icon" src="https://logodownload.org/wp-content/uploads/2014/09/twitter-logo-4.png" alt="">
                </li>
                <li class="iner-create-acount">
                    <span>No tienes cuenta?</span>
                    <a href="./sign_up.html"> Crea una nueva!</a>
                </li>
            </ul>
        </section>
    </main>
</body>
</html>