<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel = "stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <title>Validar Usuarios</title>
    </head>

    <body>
        <center>
        <div class="container mt-4">
            <div class = "card border-info ">
                <div class="card-header bg-info text-white">
                    <h3>Usuarios</h3>
                </div>
                <div class="card-body">
                    <table class="table" table-hover>
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>Nombre</th>
                                <th>Correo</th>
                                <th>Tipo de usuario</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="valor" items = "${contenido}">
                            <tr>
                                <td>${valor.usuario_id}</td>
                                <td>${valor.nombre}</td>
                                <td>${valor.email}</td>
                                <td>${valor.tipo_usuario}</td>
                                <td>
                                    <a href = "autorizar.htm?codigo=${valor.usuario_id}" class = "btn btn-primary">Autorizar</a>
                                    <a href = "denegar.htm?codigo=${valor.usuario_id}" class = "btn btn-warning">Denegar</a>
                                    <a href = "eliminar.htm?codigo=${valor.usuario_id}" class = "btn btn-danger">Eliminar</a>
                                </td>
                            </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                    <hr>
                </div>
                <div class="card-header bg-info text-white">
                </div>
            </div>
        </div>
        </center>
    </body>
    <style>
        :root {
        --fondo: rgb(21,33,43);
        --contenedores: rgb(37,45,56);
        --botones: rgb(123,183,98);
        --color-red: #ec1840;
        --color-purple: #7a18ec;
        --color-white: #fff;
        --color-black-1: #111;
        --color-black-2: #222;
        --color-black-3: #444;
        --speed-normal: 0.5s;
        --speed-fast: 0.8s;
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
        body {
            background-color: var(--fondo);
            display: flex;
            justify-content: center;
            padding: 4%;
        }
        
        .container {
            background-color: var(--contenedores);
            display: flex;
            justify-content: center;
            width: 80vw;
            padding-bottom: 10vh;
            border-radius: 15px;

        }

        h3 {
            margin: 2%;
            text-align: center;
            color:white;
            font-size: 3rem;
        }

        .a  {
            color: white;
            font-size: 2rem;
            width: 20vw;
        }

        .a-acciones {
            color: white;
            font-size: 2rem;
            width: 20vw;
            text-align: center;
        }

        .card-body {
            margin-bottom: 10vh;
        }

        .slidery {
            display: flex;
            flex-direction: column;
            gap: 5px;
            width: 80vw;
            height: 55vh;
            padding: 4%;
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

        .bonton-container {
            display: flex;
            justify-content: space-around;
        }
        .btn {
            position: relative;
            width: 100px;
            text-decoration: none;
            text-align: center;
            color: var(--color-white);
            transition: var(--speed-normal);
            border: 1px solid var(--color-red);
            font-size: 2rem;
            border-radius: 5px;
        }


        .btn-warning {
            border: 1px solid var(--color-purple);
        }

        .btn-danger {
            border: 1px solid var(--color-red);
        }

        .btn-warning:hover {
            border: 1px solid transparent;
            background: var(--color-purple) url(https://i.postimg.cc/FzBWFtKM/pixel2.png);
            transition-delay: 0.8s;
            background-size: 180px;
            animation: animate var(--speed-fast) steps(8) forwards;
        }

        .btn-danger:hover {
            border: 1px solid transparent;
            background: var(--color-red) url(https://i.postimg.cc/wBXGXbWN/pixel.png);
            transition-delay: 0.8s;
            background-size: 180px;
            animation: animate var(--speed-fast) steps(8) forwards;
        }
        @keyframes animate {
        0% { background-position-y: 0;}
        100% {background-position-y: -480px;}
        }
    }

    @media only screen and (min-width: 1000px) {
        body {
            background-color: var(--fondo);
            display: flex;
            justify-content: center;
            padding: 4%;
        }
        
        .container {
            background-color: var(--contenedores);
            display: flex;
            justify-content: center;
            width: 80vw;
            padding-bottom: 10vh;
            border-radius: 15px;

        }

        h3 {
            margin: 2%;
            text-align: center;
            color:white;
            font-size: 3rem;
        }

        .a  {
            color: white;
            font-size: 2rem;
            width: 20vw;
        }

        .a-acciones {
            color: white;
            font-size: 2rem;
            width: 20vw;
            text-align: center;
        }

        .card-body {
            margin-bottom: 10vh;
        }

        .slidery {
            display: flex;
            flex-direction: column;
            gap: 5px;
            width: 80vw;
            height: 55vh;
            padding: 4%;
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

        .bonton-container {
            display: flex;
            justify-content: space-around;
        }
        .btn {
            position: relative;
            width: 100px;
            text-decoration: none;
            text-align: center;
            color: var(--color-white);
            transition: var(--speed-normal);
            border: 1px solid var(--color-red);
            font-size: 2rem;
            border-radius: 5px;
        }


        .btn-warning {
            border: 1px solid var(--color-purple);
        }

        .btn-danger {
            border: 1px solid var(--color-red);
        }

        .btn-warning:hover {
            border: 1px solid transparent;
            background: var(--color-purple) url(https://i.postimg.cc/FzBWFtKM/pixel2.png);
            transition-delay: 0.8s;
            background-size: 180px;
            animation: animate var(--speed-fast) steps(8) forwards;
        }

        .btn-danger:hover {
            border: 1px solid transparent;
            background: var(--color-red) url(https://i.postimg.cc/wBXGXbWN/pixel.png);
            transition-delay: 0.8s;
            background-size: 180px;
            animation: animate var(--speed-fast) steps(8) forwards;
        }
        @keyframes animate {
        0% { background-position-y: 0;}
        100% {background-position-y: -480px;}
        }
    }
    </style>
</html>

