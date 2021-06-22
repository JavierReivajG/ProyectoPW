<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel = "stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <title>Conteo</title>
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
                            <c:forEach var="dato3" items = "${cont}">
                            <tr>
                                <td>${dato3.casilla_id}</td>
                                <td>${dato3.alianza_o_partido}</td>
                                <td>${dato3.total_votos}</td>
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
                            <c:forEach var="dato4" items = "${cont1}">
                            <tr>
                                <td>${dato4.casilla_id}</td>
                                <td>${dato4.alianza_o_partido}</td>
                                <td>${dato4.total_votos}</td>
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
                            <c:forEach var="dato5" items = "${cont2}">
                            <tr>
                                <td>${dato5.casilla_id}</td>
                                <td>${dato5.alianza_o_partido}</td>
                                <td>${dato5.total_votos}</td>
                            </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                    <hr>
                </div>
                <div class="card-header bg-info text-white">
                    <a class = "btn btn-light" href = "votar.htm">Regresar</a>
                </div>
            </div>
        </div>
        </center>
    </body>
</html>
