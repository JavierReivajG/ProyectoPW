
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <!--<link rel="stylesheet" href="./css/sign_up.css">
    <script src="/src/js/Sing_up.js"></script>-->
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign up</title>
</head>
<body class="body-signing">
    <main class="main-container-sign_in">
        <section class="section-container">
            <ul class="container-iner">
                <li class="iner-singup"><p>Crear Cuenta</p></li>
                <li class="slidery">
                    <div class="container-slidery">
                        <form method="POST" class="form-container">
                            <input class='logininput' name="Ape" autocomplete="family-name" placeholder="Apellido (S)" type="text">
                            <input class='logininput' name="Nom" autocomplete="name" placeholder="Nombre (S)" type="text" required>
                            <input class='logininput' name="Email" autocomplete="email" placeholder="Correo" type="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="La direccion de correo electronica no es valida" required>
                            <input class='logininput' name="Pass" autocomplete="current-password" placeholder="contraseña" type="password" pattern=".{5,}" title="La contraseña tiene que contener al menos 5 caracteres" required>
                            <input class='logininput' name="Tel" autocomplete="tel-local" placeholder="Numero Telefonico" type="number">          
                            <p class="iner-botons">Direcciones</p>
                            <input class='logininput' name="Calle" autocomplete="address-line3" placeholder="Calle" type="text" required>
                            <input class='logininput' name="Col" autocomplete="street-address" placeholder="Colonia" type="text" required>
                            <input class='logininput' name="Num" autocomplete="address-line1" placeholder="Numero interior y exterior" type="text" required>
                            <input class='logininput' name="Mun" autocomplete="cc-additional-name" placeholder="Municipio" type="text" required>
                            <input class='logininput' name="Cp" autocomplete="postal-code" placeholder="Codigo Postal" type="text">
                            <input class='logininput' name="Red" placeholder="Red Social" type="text">
                            <input class="iner-sign-button" type="submit" value="Vamos!">
                        </form>
                    </div>
                </li>
                <li class="iner-create-acount"><span>Ya tienes cuenta? </span> <a href="sign_in.htm"> Inicia Sesion</a></li>
            </ul>
        </section>
    </main>
</body>
<style>
    :root {
    --fondo: rgb(21,33,43);
    --contenedores: rgb(37,45,56);
    --botones: rgb(123,183,98);
}


* {
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
    }
    
    
    .section-container {
        background-color: var(--contenedores);
        border-radius: 25px;
        min-width: 300px;
        
        
    }
    
    .container-iner {
        margin-top: 5%;
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    
    .iner-singup  {
        margin-bottom: 4%;
        min-width: 260px;
        color: white;
        font-size: 2rem;
        width: 60vw;
        text-align: center;
        font-weight: 600;
        text-decoration: none;
        list-style: none;
    }
    
    .form-container {
        display: flex;
        flex-direction: column;
    }


    .logininput {
        border:  2px solid;
        border-color: var(--fondo);
        outline: none;
        background-color: var(--fondo);
        padding: 15px;
        border-radius: 30px;
        font-size: 1rem;
        min-width: 260px;
        margin-bottom: 2.5vh;
        color: var(--botones);
    }
    
    .logininput:hover {
        border-style: solid;
        border-color: var(--botones);
    }
    
    .iner-botons {
        color: rgba(255, 255, 255, 0.452);
        font-size: 1.5rem;
        font-weight: 500;
        text-align: center;
        margin-bottom: 2%;
    }
    
    .iner-sign-button{
        margin-top: 2vh;
        margin-bottom: 1vh;
        background-color: var(--botones);
        border: none;
        font-size: 2rem;
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
   
    .iner-create-acount{
        align-items: center;
        margin-top: 4%;
        margin-bottom: 4%;
    }
    
    .iner-create-acount span {
        color: rgba(255, 255, 255, 0.452);
        font-size: 1.5rem; 
    }
    
    .iner-create-acount a {
        font-size: 1.5rem; 
        color: var(--botones);
        text-decoration: none;
    }
    
    .slidery {
        display: flex;
        flex-direction: column;
        gap: 5px;
        width: 100%;
        height: 45vh;
        min-height: 200px;
        overflow-y: scroll;
        scroll-snap-type: y proximity;
    }
    
    
    .slidery .container-slidery {
        display: flex;
        flex-direction: column;
        align-items: center;
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
        margin-top: 5vh;
        margin-bottom: 5h;
    }
    
    
    .section-container {
        background-color: var(--contenedores);
        border-radius: 25px;
        min-width: 350px;
        min-height: 450px;
    }
    
    .container-iner {
        margin-top: 3%;
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    
    .iner-singup  {
        min-width: 260px;
        color: white;
        font-size: 5rem;
        width: 60vw;
        text-align: center;
        font-weight: 600;
        text-decoration: none;
        list-style: none;
        margin-bottom: 1%;
    }
    
    .form-container {
        display: flex;
        flex-direction: column;
    }


    .logininput {
        border:  2px solid;
        border-color: var(--fondo);
        outline: none;
        background-color: var(--fondo);
        padding: 20px;
        border-radius: 30px;
        font-size: 2rem;
        min-width: 260px;
        margin-bottom: 2.5vh;
        color: var(--botones);
    }

    .logininput:hover {
        border-style: solid;
        border-color: var(--botones);
    }
    
    .iner-botons {
        color: rgba(255, 255, 255, 0.452);
        font-size: 2.5rem;
        font-weight: 500;
        width: 100%;
        text-align: center;
        margin-bottom: 1%;
    }
    
    .iner-sign-button{
        margin-top: 3vh;
        margin-bottom: 1vh;
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
   
    .iner-create-acount{
        align-items: center;
        margin-top: 2%;
        margin-bottom: 2%;
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
    
    
    .slidery {
        
        display: flex;
        flex-direction: column;
        gap: 5px;
        width: 100%;
        height: 55vh;
        min-height: 200px;
        overflow-y: scroll;
        scroll-snap-type: y proximity;
    }
    
    
    .slidery .container-slidery {
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    ::-webkit-scrollbar {
        width: 10px;
        background: var(--fondo);
    }
    ::-webkit-scrollbar-thumb {
        background: var(--contenedores);
    }
    ::-webkit-scrollbar-thumb:hover {
        background: var(--botones);
    }
}
</style>
</html>


