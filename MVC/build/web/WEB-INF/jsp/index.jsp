<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel = "stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <title>CRUD</title>
    </head>

    <body>
        <center>
        <div class="container mt-4">
            <div class = "card border-info ">
                <div class="card-header bg-info text-white">
                    <a class = "btn btn-light" href = "agregar.htm">Agregar Alumno</a>
                </div>
                <div class="card-body">
                    <table class="table" table-hover>
                        <thead>
                            <tr>
                                <th>Codigo</th>
                                <th>Nombre</th>
                                <th>Domicilio</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="dato" items = "${lista}">
                            <tr>
                                <td>${dato.Codigo}</td>
                                <td>${dato.Nombre}</td>
                                <td>${dato.Domicilio}</td>
                                <td>
                                    <a href = "editar.htm?codigo=${dato.Codigo}" class = "btn btn-warning">Editar</a>
                                    <a href = "borrar.htm?codigo=${dato.Codigo}" class = "btn btn-danger">Delete</a>
                                </td>
                            </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        </center>
    </body>
</html>
