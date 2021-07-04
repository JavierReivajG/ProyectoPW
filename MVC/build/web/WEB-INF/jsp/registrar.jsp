
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel = "stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <title>Registrar</title>
    </head>
    <body>
    <center>
        <h3>Programa de Resultados Electorales Preliminares 2021</h3>
          <div class="container mt-4 col-lg-4">
            <div class = "card border-info ">
                <div class="card-header bg-info">
                    <H4>Registrar</h4>
                </div>
                <div class ="card-body">
                    <form method="POST">

                        <label><h4>Numero de Casilla</h4></label><BR>
                        <input type="number" name="id" class="form-control" min="1" pattern="^[0-9]+" step="1" required>
                        <label><h4>Casilla</h4></label>
                        <!--<input type="text" name="cas" class="form-control">-->
                        <select name="cas" class="form-control">
                            <option value="Basica" selected>Básica</option>
                            <option value="Contigua">Contigua</option>
                            <option value="Especial">Especial</option>
                            <option value="Extraordinaria">Extraordinaria</option>
                            <option value="Otra">Otra</option>
                        </select>
                        <label><h4>Seccional</h4></label>
                        
                        <select name="sec" class="form-control">
                            <option value = "2650">2650</option>
<option value = "2651">2651</option>
<option value = "2652">2652</option>
<option value = "2653">2653</option>
<option value = "2654">2654</option>
<option value = "2655">2655</option>
<option value = "2656">2656</option>
<option value = "2657">2657</option>
<option value = "2658">2658</option>
<option value = "2659">2659</option>
<option value = "2660">2660</option>
<option value = "2661">2661</option>
<option value = "2662">2662</option>
<option value = "2663">2663</option>
<option value = "2664">2664</option>
<option value = "2665">2665</option>
<option value = "2666">2666</option>
<option value = "2667">2667</option>
<option value = "2668">2668</option>
<option value = "2669">2669</option>
<option value = "2670">2670</option>
<option value = "2671">2671</option>
<option value = "2672">2672</option>
<option value = "2673">2673</option>
<option value = "2674">2674</option>
<option value = "2675">2675</option>
<option value = "2676">2676</option>
<option value = "2677">2677</option>
<option value = "2678">2678</option>
<option value = "2679">2679</option>
<option value = "2680">2680</option>
<option value = "2681">2681</option>
<option value = "2682">2682</option>
<option value = "2683">2683</option>
<option value = "2684">2684</option>
<option value = "2685">2685</option>
<option value = "2686">2686</option>
<option value = "2687">2687</option>
<option value = "2688">2688</option>
<option value = "2689">2689</option>
<option value = "2690">2690</option>
<option value = "2691">2691</option>
<option value = "2692">2692</option>
<option value = "2693">2693</option>
<option value = "2694">2694</option>
<option value = "2695">2695</option>
<option value = "2696">2696</option>
<option value = "2697">2697</option>
<option value = "2698">2698</option>
<option value = "2699">2699</option>
<option value = "2700">2700</option>
<option value = "2701">2701</option>
<option value = "2702">2702</option>
<option value = "2703">2703</option>
<option value = "2704">2704</option>
<option value = "2705">2705</option>
<option value = "2706">2706</option>
<option value = "2707">2707</option>
<option value = "2708">2708</option>
<option value = "2709">2709</option>
<option value = "2710">2710</option>
<option value = "2711">2711</option>
<option value = "2712">2712</option>
<option value = "2713">2713</option>
<option value = "2714">2714</option>
<option value = "2715">2715</option>
<option value = "2716">2716</option>
<option value = "2717">2717</option>
<option value = "2718">2718</option>
<option value = "2719">2719</option>
<option value = "2720">2720</option>
<option value = "2721">2721</option>
<option value = "2722">2722</option>
<option value = "2723">2723</option>
<option value = "2724">2724</option>
<option value = "2725">2725</option>
<option value = "2726">2726</option>
<option value = "2727">2727</option>
<option value = "2728">2728</option>
<option value = "2729">2729</option>
                        </select><BR>
                        
                        <hr>
                        
                        <label><h4>Candidatura</h4></label>
                        <select name = "can" class="form-control">
                            <option value = "1">Presidente Municipal de Tonalá</option>
                            <option value = "3">Diputado Local</option>
                            <option value = "2">Diputado Federal</option>
                        </select><BR>
                        
                        <label><h4>Partido Político</h4></label>
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
                        
                        <label><h4>Votos</h4></label>
                        <input type="number" name="vot" class="form-control" min="1" pattern="^[0-9]+" step="1" required><BR>
                        <input type="submit" value="Registrar" class="btn btn-success">
                        <a href="conteo.htm">Consultar conteo de votos</a><br>
                        <a href="index.htm">Cambiar de usuario</a>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
