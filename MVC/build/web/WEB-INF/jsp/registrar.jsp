
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel = "stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <title>Registrar</title>
    </head>
    <body>
          <div class="container mt-4 col-lg-4">
            <div class = "card border-info ">
                <div class="card-header bg-info">
                    <H4>Registrar</h4>
                </div>
                <div class ="card-body">
                    <form method="POST">

                        <label>Numero de Casilla</label><BR>
                        <input type="text" name="id" class="form-control">
                        <label>Casilla</label>
                        <!--<input type="text" name="cas" class="form-control">-->
                        <select name="cas" class="form-control">
                            <option value="Basica" selected>Básica</option>
                            <option value="Contigua">Contigua</option>
                            <option value="Especial">Especial</option>
                            <option value="Extraordinaria">Extraordinaria</option>
                            <option value="Otra">Otra</option>
                        </select><BR>
                        <label>Seccional</label>
                        <input type="text" name="sec" class="form-control"><BR>
                        <input type="submit" value="Registrar" class="btn btn-success">
                        <a href="index.htm">Regresar</a>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
