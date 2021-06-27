USE prep;

-- CONSULTA VOTOS DE LAS ALIANZAS -- 
SELECT c.numero_casilla,puesto,alianza AS "Alianza", SUM(no_votos) Total_Votos
FROM registros r
JOIN candidaturas cn ON cn.candidatura_id = r.candidatura_id
JOIN partidos p ON r.partido_id = p.partido_id
JOIN casillas c ON c.casilla_id = r.casilla_id
WHERE alianza IS NOT NULL
GROUP BY c.numero_casilla,alianza,puesto
ORDER BY puesto,Total_Votos DESC;

-- CONSULTA VOTOS DE LOS PARTIDOS -- 
SELECT numero_casilla,puesto,nombre AS "Partido", SUM(no_votos) as Total_Votos
FROM registros r
JOIN candidaturas cn ON cn.candidatura_id = r.candidatura_id
JOIN partidos p ON r.partido_id = p.partido_id
JOIN casillas c ON c.casilla_id = r.casilla_id
WHERE p.nombre != p.alianza
GROUP BY numero_casilla,nombre,puesto
ORDER BY puesto,Total_Votos DESC;

-- CONSULTA VOTOS DE LOS PARTIDOS Y ALIANZAS JUNTOS --
SELECT c.numero_casilla,puesto,alianza AS "Alianza o Partido", SUM(no_votos) Total_Votos
FROM registros r
JOIN candidaturas cn ON cn.candidatura_id = r.candidatura_id
JOIN partidos p ON r.partido_id = p.partido_id
JOIN casillas c ON c.casilla_id = r.casilla_id
WHERE alianza IS NOT NULL
GROUP BY c.numero_casilla,alianza,puesto
UNION
SELECT c.numero_casilla,puesto,nombre AS "Alianza o Partido", SUM(no_votos) as Total_Votos
FROM registros r
JOIN candidaturas cn ON cn.candidatura_id = r.candidatura_id
JOIN partidos p ON r.partido_id = p.partido_id
JOIN casillas c ON c.casilla_id = r.casilla_id
WHERE p.alianza IS NULL
GROUP BY c.numero_casilla,nombre,puesto
ORDER BY puesto,Total_Votos DESC;


-- CONSULTA VOTOS DE LAS ALIANZAS Y PARTIDOS A DIPUTACIÓN FEDEREAL

SELECT c.numero_casilla,puesto,alianza AS "Alianza_o_Partido", SUM(no_votos) Total_Votos
FROM registros r
JOIN candidaturas cn ON cn.candidatura_id = r.candidatura_id
JOIN partidos p ON r.partido_id = p.partido_id
JOIN casillas c ON c.casilla_id = r.casilla_id
WHERE alianza IS NOT NULL and cn.puesto = 'Diputado Federal'
GROUP BY c.numero_casilla,alianza,puesto
UNION
SELECT c.numero_casilla,puesto,nombre AS "Alianza_o_Partido", SUM(no_votos) as Total_Votos
FROM registros r
JOIN candidaturas cn ON cn.candidatura_id = r.candidatura_id
JOIN partidos p ON r.partido_id = p.partido_id
JOIN casillas c ON c.casilla_id = r.casilla_id
WHERE cn.puesto = 'Diputado Federal'
GROUP BY c.numero_casilla,nombre,puesto
ORDER BY puesto,Total_Votos DESC;

-- CONSULTA VOTOS DE LAS ALIANZAS Y PARTIDOS A DIPUTACIÓN LOCAL

SELECT numero_casilla,puesto,alianza AS "Alianza o Partido", SUM(no_votos) Total_Votos
FROM registros r
JOIN candidaturas cn ON cn.candidatura_id = r.candidatura_id
JOIN partidos p ON r.partido_id = p.partido_id
JOIN casillas c ON c.casilla_id = r.casilla_id
WHERE alianza IS NOT NULL and cn.puesto = 'Diputado Local'
GROUP BY numero_casilla,alianza,puesto
UNION
SELECT numero_casilla,puesto,nombre AS "Alianza o Partido", SUM(no_votos) as Total_Votos
FROM registros r
JOIN candidaturas cn ON cn.candidatura_id = r.candidatura_id
JOIN partidos p ON r.partido_id = p.partido_id
JOIN casillas c ON c.casilla_id = r.casilla_id
WHERE cn.puesto = 'Diputado Local'
GROUP BY numero_casilla,nombre,puesto
ORDER BY puesto,Total_Votos DESC;


-- CONSULTA VOTOS DE LAS ALIANZAS Y PARTIDOS A PRESIDENCIA MUNICIPAL

SELECT numero_casilla,puesto,alianza AS "Alianza o Partido", SUM(no_votos) Total_Votos
FROM registros r
JOIN candidaturas cn ON cn.candidatura_id = r.candidatura_id
JOIN partidos p ON r.partido_id = p.partido_id
JOIN casillas c ON c.casilla_id = r.casilla_id
WHERE alianza IS NOT NULL and cn.puesto = 'Presidente Municipal'
GROUP BY numero_casilla,alianza,puesto
UNION
SELECT numero_casilla,puesto,nombre AS "Alianza o Partido", SUM(no_votos) as Total_Votos
FROM registros r
JOIN candidaturas cn ON cn.candidatura_id = r.candidatura_id
JOIN partidos p ON r.partido_id = p.partido_id
JOIN casillas c ON c.casilla_id = r.casilla_id
WHERE cn.puesto = 'Presidente Municipal'
GROUP BY numero_casilla,nombre,puesto
ORDER BY puesto,Total_Votos DESC;

-- CRUD --

