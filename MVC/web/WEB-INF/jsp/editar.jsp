
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel = "stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <title>Actualizar</title>
    </head>
    <body>
          <div class="container mt-4 col-lg-4">
            <div class = "card border-info ">
                <div class="card-header bg-info">
                    <H4>Actualizar</h4>
                </div>
                <div class ="card-body">
                    <form method="POST">
                        <label>Codigo</label>
                        <input type="text" name="cod" class="form-control" value="${lista[0].Codigo}">
                        <label>Nombre</label>
                        <input type="text" name="nom" class="form-control" value ="${lista[0].Nombre}">
                        <label>Domicilio</label>
                        <input type="text" name="domi" class="form-control" value="${lista[0].Domicilio}"><BR>
                        <input type="submit" value="Actualizar" class="btn btn-success">
                        <a href="index.htm">Regresar</a>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
