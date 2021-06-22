<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel = "stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <title>PREP</title>
    </head>

    <body>
        <center>
        <div class="container mt-4">
            <div class = "card border-info ">
                <div class="card-header bg-info text-white">
                    <h3>Programa de Resultados Electorales Preliminares 2021</h3>
                </div>
                <div class="card-body">
                    <p>VOTOS DE LAS ALIANZAS Y PARTIDOS A DIPUTACIÓN FEDEREAL</p>
                    <table class="table" table-hover>
                        <thead>
                            <tr>
                                <th>Casilla</th>
                                <th>Alianza o Partido</th>
                                <th>Total de votos</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="dato" items = "${lista}">
                            <tr>
                                <td>${dato.casilla_id}</td>
                                <td>${dato.alianza_o_partido}</td>
                                <td>${dato.total_votos}</td>
                            </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                    <hr>
                    <p>VOTOS DE LAS ALIANZAS Y PARTIDOS A DIPUTACIÓN LOCAL</p>
                    <table class="table" table-hover>
                        <thead>
                            <tr>
                                <th>Casilla</th>
                                <th>Alianza o Partido</th>
                                <th>Total de votos</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="dato1" items = "${lista1}">
                            <tr>
                                <td>${dato1.casilla_id}</td>
                                <td>${dato1.alianza_o_partido}</td>
                                <td>${dato1.total_votos}</td>
                            </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                    <hr>
                    <p>VOTOS DE LAS ALIANZAS Y PARTIDOS A PRECIDENCIA MUNICIPAL</p>
                    <table class="table" table-hover>
                        <thead>
                            <tr>
                                <th>Casilla</th>
                                <th>Alianza o Partido</th>
                                <th>Total de votos</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="dato2" items = "${lista2}">
                            <tr>
                                <td>${dato2.casilla_id}</td>
                                <td>${dato2.alianza_o_partido}</td>
                                <td>${dato2.total_votos}</td>
                            </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                    <hr>
                    
                </div>
                <div class="card-header bg-info text-white">
                    <a class = "btn btn-light" href = "sign_in.htm">Registrar resultados</a>
                </div>
            </div>
        </div>
        </center>
    </body>
</html>
