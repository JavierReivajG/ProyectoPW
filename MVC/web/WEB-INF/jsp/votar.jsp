
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel = "stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <title>Registrar Resultados</title>
    </head>
    <body>
          <div class="container mt-4 col-lg-4">
            <div class = "card border-info ">
                <div class="card-header bg-info">
                    <H4>Programa de Resultados Electorales Preliminares 2021</h4>
                </div>
                <div class ="card-body">
                    <form method="POST">
                        
                        <label>Candidatura</label>
                        <select name = "can" class="form-control">
                            <option value = "1">Presidente Municipal de Tonalá</option>
                            <option value = "3">Diputado Local</option>
                            <option value = "2">Diputado Federal</option>
                        </select><BR>
                        
                        <label>Partido Político</label>
                        <select name="par" class="form-control">
                            <option value="15" selected>Seleccionar</Option>
                            <option value="5">PAN</option>
                            <option value="6">PRD</option>
                            <option value="4">PRI</option>
                            <option value="3">VERDE ECOLÓGISTA</option>
                            <option value="2">PT</option>
                            <option value="8">MOVIMIENTO CIUDADANO</option>
                            <option value="1">MORENA</option>
                            <option value="10">PES</option>
                            <option value="7">REDES SOCIALES PROGRESISTAS (RSP)</option>
                            <option value="9">FUERZA MÉXICO</option>
                            <option value="12">HAGAMOS</option>
                            <option value="13">SOMOS</option>
                            <option value="11">FUTURO</option>
                            <option value="14">INDEPENDIENTE</option>
                            <option value="16">Juntos Haremos Historia</option>
                            <option value="17">Va Por México</option>
                        </select><BR>
                        
                        <label>Votos</label>
                        <input type="text" name="vot" class="form-control"><BR>
                        
                        <input type="submit" value="Registrar" class="btn btn-success">
                        <a href="conteo.htm">Consultar Conteo de Votos</a>

                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
