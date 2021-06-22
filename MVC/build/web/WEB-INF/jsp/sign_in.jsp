
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
    <!--<link href="css/sign_in.css" rel="stylesheet" type="text/css"/>-->
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
                        <input autocomplete="username" class="logininput" placeholder="correo@ejemplo.com" type="text" name="email" id="username" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="La direccion de correo electronica no es valida" required>
                        <span class="password-icon"></span>
                        <input autocomplete="current-password" class="logininput" placeholder="contraseña" type="password" name="pass" id="password" pattern=".{5,}" title="La contraseña tiene que contener al menos 5 caracteres" required>
                        <li class="iner-botons">
                            <a class="recordar" href="recuperar.htm">Recordar contraseña</a>
                        </li>
                        <input class="iner-sign-button" type="submit" href="registrar.htm" value="Vamos!">
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
                    <a href="sign_up.htm"> Crea una nueva!</a>
                </li>
            </ul>
        </section>
    </main>
</body>
<style>
:root {
    --fondo: rgb(51,56,90);
    --contenedores: rgb(32,36,66);
    --botones: rgb(65,205,125);
}


*  {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}


html {
    font-size: 62.5%;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}


@media only screen and (max-width: 1000px) {
    li {
        list-style: none;
    }
    
    .body-signing {
        background-color: var(--fondo);
    }
    
    
    .main-container-sign_in {
        display: flex;
        justify-content: center;
        margin-top: 5vh;
        margin-bottom: 15vh;
    }
    
    
    .section-container {
        background-color: var(--contenedores);
        border-radius: 25px;
        width: 70vw;
        min-width: 340px;
        height: 70vh;
        min-height: 450px;
        
    }
    
    .container-iner {
        margin-top: 15%;
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    
    .iner-singin  {
        min-width: 260px;
        color: white;
        font-size: 2.5rem;
        width: 60vw;
        margin-bottom: 1vh;
        font-weight: 600;
        text-decoration: none;
        list-style: none;
    }
    
    .logininput {
        border: none;
        outline: none;
        background-color: var(--fondo);
        padding: 10px;
        border-radius: 30px;
        font-size: 1.5rem;
        min-width: 260px;
        margin-bottom: 2vh;
        color: var(--botones);
    }

    
    .iner-botons a {
        width: 100%;
        text-decoration: none;
        color: rgba(255, 255, 255, 0.452);
        font-size: 1.2rem;
    
    }

    .iner-botons a:hover {
        color: var(--botones);
    }

    .iner-botons .recordar  {
        padding-right: 1.5vh;
    }
    
    .iner-botons .recordar:hover {
        color: var(--botones);
    }
    .iner-sign-button {
        margin-top: 2vh;
        background-color: var(--botones);
        border: none;
        font-size: 1.6rem;
        font-weight: 600;
        width: 55vw;
        border-radius: 15px;
        padding: 8px;
        color: rgba(0, 0, 0, 0.712);
        min-width: 260px;
        cursor: pointer;
    }

    .iner-sign-button:hover {
        color: rgb(255, 255, 255);
        box-shadow: 3px 3px 2px 2px rgba(17, 17, 17, 0.911);
    }
    
    .iner-lineal {
        color:rgba(255, 255, 255, 0.452);
        font-size: 1.3rem;
        margin: 20px;
        margin-bottom: 10px;
    }
    
    .iner-icons {
        display: flex;
        justify-content: center;
    }
    
    .iner-icons .face-icon  {
        width: 10%;
        background-repeat: no-repeat;
        background-position: center;
        background-size: contain;
        cursor: pointer;
        margin: 0 10px;
    }
    
    .iner-icons .goog-icon  {
        width: 10%;
        background-repeat: no-repeat;
        background-position: center;
        background-size: contain;
        cursor: pointer;
        margin: 0 10px;
    }
    
    .iner-icons .twit-icon  {
        width: 10%;
        background-repeat: no-repeat;
        background-position: center;
        background-size: contain;
        cursor: pointer;
        margin: 0 10px;
    }
    
    
    .iner-create-acount{
        align-items: center;
        margin-top: 10%;
    }
    
    .iner-create-acount span {
        color: rgba(255, 255, 255, 0.452);
        font-size: 1.3rem;
        margin-right: 1vw;
    }
    
    .iner-create-acount a {
        color: rgba(255, 255, 255, 0.452);
        font-size: 1.3rem;
        color: var(--botones);
        text-decoration: none;
    }
}

@media only screen and (min-width: 1000px) {
    li {
        list-style: none;
    }
    
    .body-signing {
        background-color: var(--fondo);
    }
    
    
    .main-container-sign_in {
        display: flex;
        justify-content: center;
        margin-top: 10vh;
        margin-bottom: 15vh;
    }
    
    
    .section-container {
        background-color: var(--contenedores);
        border-radius: 25px;
        width: 70vw;
        min-width: 350px;
        height: 70vh;
        min-height: 450px;
        
    }
    
    .container-iner {
        margin-top: 5%;
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    
    .iner-singin  {
        min-width: 260px;
        color: white;
        font-size: 5rem;
        width: 60vw;
        text-align: center;
        margin-bottom: 2vh;
        font-weight: 600;
        text-decoration: none;
        list-style: none;
    }
    
    
    .logininput {
        border: none;
        outline: none;
        background-color: var(--fondo);
        padding: 20px;
        border-radius: 30px;
        width: 30vw;
        font-size: 2rem;
        min-width: 260px;
        margin-bottom: 2.5vh;
        color: var(--botones);
    }
    
   
    
    .iner-botons {
        color: rgba(255, 255, 255, 0.452);
        font-size: 2.5rem;
        font-weight: 500;
        width: 90%;
    }
    

    
    .iner-botons .recordar {
        float: left;
    }

    .iner-botons .recordar:hover {
        color: var(--botones);
    }

    .iner-botons a {
        float: right;
        text-decoration: none;
        color: rgba(255, 255, 255, 0.452);
        padding-left: 5px;
    }

    .iner-botons a:hover {
        color: var(--botones);
    }
    
    .iner-sign-button{
        margin-top: 3vh;
        background-color: var(--botones);
        border: none;
        font-size: 4rem;
        font-weight: 600;
        width: 30vw;
        border-radius: 15px;
        padding: 8px;
        color: rgba(0, 0, 0, 0.712);
        min-width: 260px;
        cursor: pointer;
    }

    .iner-sign-button:hover {
        color: rgb(255, 255, 255);
        box-shadow: 3px 3px 2px 2px rgba(17, 17, 17, 0.911);
    }

    
    .iner-lineal {
        color:rgba(255, 255, 255, 0.452);
        font-size: 3rem;
        margin: 20px;
        margin-bottom: 10px;
    }
    
    .iner-icons {
        display: flex;
        justify-content: center;
        
    }
    
    .iner-icons .face-icon  {
        width: 5%;
        background-repeat: no-repeat;
        background-position: center;
        background-size: contain;
        cursor: pointer;
        margin: 0 10px;
    }
    
    .iner-icons .goog-icon  {
        width: 5%;
        background-repeat: no-repeat;
        background-position: center;
        background-size: contain;
        cursor: pointer;
        margin: 0 10px;
    }
    
    .iner-icons .twit-icon  {
        width: 5%;
        background-repeat: no-repeat;
        background-position: center;
        background-size: contain;
        cursor: pointer;
        margin: 0 10px;
    }
    
    
    .iner-create-acount{
        align-items: center;
        margin-top: 5%;
    }
    
    .iner-create-acount span {
        color: rgba(255, 255, 255, 0.452);
        font-size: 3rem;
        width: 75%; 
    }
    
    .iner-create-acount a {
        color: rgba(255, 255, 255, 0.452);
        font-size: 3rem;
        width: 75%; 
        margin-left: 10px;
        color: var(--botones);
        text-decoration: none;
    } 

    /*css de JS*/


  

}
</style>
</html>