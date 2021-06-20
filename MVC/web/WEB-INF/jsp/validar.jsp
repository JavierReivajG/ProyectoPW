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
                                <th>Contraseña</th>
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
                                <td>${valor.contraseña}</td>
                                <td>${valor.tipo_usuario}</td>
                                <td>
                                    <a href = "autorizar.htm?codigo=${valor.usuario_id}" class = "btn btn-warning">Autorizar</a>
                                    <a href = "denegar.htm?codigo=${valor.usuario_id}" class = "btn btn-danger">Denegar</a>
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
</html>
