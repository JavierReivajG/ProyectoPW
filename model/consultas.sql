-- EJEMPLO CONSULTA --
SELECT r.casilla_id,puesto,municipio,p.nombre,no_votos
FROM registros r
JOIN candidaturas cn ON cn.candidatura_id = r.candidatura_id
JOIN partidos p ON r.partido_id = p.partido_id
JOIN casillas c ON c.casilla_id = r.casilla_id;

SELECT r.casilla_id,alianza, puesto, SUM(no_votos) Total_Votos
FROM registros r
JOIN candidaturas cn ON cn.candidatura_id = r.candidatura_id
JOIN partidos p ON r.partido_id = p.partido_id
JOIN casillas c ON c.casilla_id = r.casilla_id
GROUP BY r.casilla_id,alianza,puesto;