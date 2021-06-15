USE prep;

-- CONSULTA VOTOS DE LAS ALIANZAS -- 
SELECT r.casilla_id,puesto,alianza AS "Alianza", SUM(no_votos) Total_Votos
FROM registros r
JOIN candidaturas cn ON cn.candidatura_id = r.candidatura_id
JOIN partidos p ON r.partido_id = p.partido_id
JOIN casillas c ON c.casilla_id = r.casilla_id
WHERE alianza IS NOT NULL
GROUP BY r.casilla_id,alianza,puesto
ORDER BY puesto,Total_Votos DESC;

-- CONSULTA VOTOS DE LOS PARTIDOS -- 
SELECT r.casilla_id,puesto,nombre AS "Partido", SUM(no_votos) as Total_Votos
FROM registros r
JOIN candidaturas cn ON cn.candidatura_id = r.candidatura_id
JOIN partidos p ON r.partido_id = p.partido_id
JOIN casillas c ON c.casilla_id = r.casilla_id
WHERE p.nombre != p.alianza
GROUP BY r.casilla_id,nombre,puesto
ORDER BY puesto,Total_Votos DESC;

-- CONSULTA VOTOS DE LOS PARTIDOS Y ALIANZAS JUNTOS --
SELECT r.casilla_id,puesto,alianza AS "Alianza o Partido", SUM(no_votos) Total_Votos
FROM registros r
JOIN candidaturas cn ON cn.candidatura_id = r.candidatura_id
JOIN partidos p ON r.partido_id = p.partido_id
JOIN casillas c ON c.casilla_id = r.casilla_id
WHERE alianza IS NOT NULL
GROUP BY r.casilla_id,alianza,puesto
UNION
SELECT r.casilla_id,puesto,nombre AS "Alianza o Partido", SUM(no_votos) as Total_Votos
FROM registros r
JOIN candidaturas cn ON cn.candidatura_id = r.candidatura_id
JOIN partidos p ON r.partido_id = p.partido_id
JOIN casillas c ON c.casilla_id = r.casilla_id
WHERE p.alianza IS NULL
GROUP BY r.casilla_id,nombre,puesto
ORDER BY puesto,Total_Votos DESC;


-- CONSULTA VOTOS DE LAS ALIANZAS Y PARTIDOS A DIPUTACIÓN FEDEREAL

SELECT r.casilla_id,puesto,alianza AS "Alianza o Partido", SUM(no_votos) Total_Votos
FROM registros r
JOIN candidaturas cn ON cn.candidatura_id = r.candidatura_id
JOIN partidos p ON r.partido_id = p.partido_id
JOIN casillas c ON c.casilla_id = r.casilla_id
WHERE alianza IS NOT NULL and cn.puesto = 'Diputado Federal'
GROUP BY r.casilla_id,alianza,puesto
UNION
SELECT r.casilla_id,puesto,nombre AS "Alianza o Partido", SUM(no_votos) as Total_Votos
FROM registros r
JOIN candidaturas cn ON cn.candidatura_id = r.candidatura_id
JOIN partidos p ON r.partido_id = p.partido_id
JOIN casillas c ON c.casilla_id = r.casilla_id
WHERE cn.puesto = 'Diputado Federal'
GROUP BY r.casilla_id,nombre,puesto
ORDER BY puesto,Total_Votos DESC;

-- CONSULTA VOTOS DE LAS ALIANZAS Y PARTIDOS A DIPUTACIÓN LOCAL

SELECT r.casilla_id,puesto,alianza AS "Alianza o Partido", SUM(no_votos) Total_Votos
FROM registros r
JOIN candidaturas cn ON cn.candidatura_id = r.candidatura_id
JOIN partidos p ON r.partido_id = p.partido_id
JOIN casillas c ON c.casilla_id = r.casilla_id
WHERE alianza IS NOT NULL and cn.puesto = 'Diputado Local'
GROUP BY r.casilla_id,alianza,puesto
UNION
SELECT r.casilla_id,puesto,nombre AS "Alianza o Partido", SUM(no_votos) as Total_Votos
FROM registros r
JOIN candidaturas cn ON cn.candidatura_id = r.candidatura_id
JOIN partidos p ON r.partido_id = p.partido_id
JOIN casillas c ON c.casilla_id = r.casilla_id
WHERE cn.puesto = 'Diputado Local'
GROUP BY r.casilla_id,nombre,puesto
ORDER BY puesto,Total_Votos DESC;


-- CONSULTA VOTOS DE LAS ALIANZAS Y PARTIDOS A PRESIDENCIA MUNICIPAL

SELECT r.casilla_id,puesto,alianza AS "Alianza o Partido", SUM(no_votos) Total_Votos
FROM registros r
JOIN candidaturas cn ON cn.candidatura_id = r.candidatura_id
JOIN partidos p ON r.partido_id = p.partido_id
JOIN casillas c ON c.casilla_id = r.casilla_id
WHERE alianza IS NOT NULL and cn.puesto = 'Presidente Municipal'
GROUP BY r.casilla_id,alianza,puesto
UNION
SELECT r.casilla_id,puesto,nombre AS "Alianza o Partido", SUM(no_votos) as Total_Votos
FROM registros r
JOIN candidaturas cn ON cn.candidatura_id = r.candidatura_id
JOIN partidos p ON r.partido_id = p.partido_id
JOIN casillas c ON c.casilla_id = r.casilla_id
WHERE cn.puesto = 'Presidente Municipal'
GROUP BY r.casilla_id,nombre,puesto
ORDER BY puesto,Total_Votos DESC;