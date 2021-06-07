
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel = "stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <title>Votar</title>
    </head>
    <body>
          <div class="container mt-4 col-lg-4">
            <div class = "card border-info ">
                <div class="card-header bg-info">
                    <H4>Proceso Electoral Federal 2021</h4>
                </div>
                <div class ="card-body">
                    <form method="POST">
                        <label>Presidente Municipal de Tonalá</label>
                        <select name="Nomp" class="form-control">
                            <option value="NULL" selected>Seleccionar</Option>
                            <option value="PAN">PAN</option>
                            <option value="PRD">PRD</option>
                            <option value="PRI">PRI</option>
                            <option value="PVEM">VERDE ECOLÓGISTA</option>
                            <option value="PT">PT</option>
                            <option value="MC">MOVIMIENTO CIUDADANO</option>
                            <option value="MORENA">MORENA</option>
                            <option value="PES">PES</option>
                            <option value="RSP">REDES SOCIALES PROGRESISTAS (RSP)</option>
                            <option value="FxM">FUERZA MÉXICO</option>
                            <option value="HAGAMOS">HAGAMOS</option>
                            <option value="SOMOS">SOMOS</option>
                            <option value="FUTURO">FUTURO</option>
                            <option value="INDEPENDIENTE">INDEPENDIENTE</option>
                        </select><BR>
                        
                        <label>Diputado Federal</label>
                        <select name="Nomdf" class="form-control">
                            <option value="NULL" selected>Seleccionar</Option>
                            <option value="PAN">PAN</option>
                            <option value="PRD">PRD</option>
                            <option value="PRI">PRI</option>
                            <option value="PVEM">VERDE ECOLÓGISTA</option>
                            <option value="PT">PT</option>
                            <option value="MC">MOVIMIENTO CIUDADANO</option>
                            <option value="MORENA">MORENA</option>
                            <option value="PES">PES</option>
                            <option value="RSP">REDES SOCIALES PROGRESISTAS (RSP)</option>
                            <option value="FxM">FUERZA MÉXICO</option>
                            <option value="HAGAMOS">HAGAMOS</option>
                            <option value="SOMOS">SOMOS</option>
                            <option value="FUTURO">FUTURO</option>
                            <option value="INDEPENDIENTE">INDEPENDIENTE</option>
                        </select><BR>
                        
                        <label>Diputado Local</label>
                        <select name="Nomdl" class="form-control">
                            <option value="NULL" selected>Seleccionar</Option>
                            <option value="PAN">PAN</option>
                            <option value="PRD">PRD</option>
                            <option value="PRI">PRI</option>
                            <option value="PVEM">VERDE ECOLÓGISTA</option>
                            <option value="PT">PT</option>
                            <option value="MC">MOVIMIENTO CIUDADANO</option>
                            <option value="MORENA">MORENA</option>
                            <option value="PES">PES</option>
                            <option value="RSP">REDES SOCIALES PROGRESISTAS (RSP)</option>
                            <option value="FxM">FUERZA MÉXICO</option>
                            <option value="HAGAMOS">HAGAMOS</option>
                            <option value="SOMOS">SOMOS</option>
                            <option value="FUTURO">FUTURO</option>
                            <option value="INDEPENDIENTE">INDEPENDIENTE</option>
                        </select><BR>
                        
                        <input type="submit" value="Registrar Voto" class="btn btn-success">
                        <a href="index.htm">Regresar</a>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
