USE prep;
DELIMITER $$
-- TE DICE SI UN PARTIDO PERTENECE A UNA ALIANZA O NO
CREATE PROCEDURE partidos_alianza(
	IN partido varchar(30))
	BEGIN
		IF (SELECT alianza
        FROM partidos
        WHERE nombre = partido)
        IS NULL THEN
			SELECT "Este partido 
            no pertenece a Ningna alianza";
		ELSE
			SELECT alianza 
            FROM partidos
            where nombre = partido;
		END IF;
	END
$$

-- TE DICE AL GANADOR DE LA PRESIDENCIA MUNICIPAL
DELIMITER $$
CREATE PROCEDURE presidencia()
	BEGIN 
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
ORDER BY puesto,Total_Votos DESC
LIMIT 1;
END
$$

-- TE MUESTRA LOS VOTOS REALIZADOS SÓLO A LAS ALIANZAS
DELIMITER $$
CREATE PROCEDURE alianzas()
	BEGIN
	SELECT r.casilla_id,puesto,alianza AS "Alianza", SUM(no_votos) Total_Votos
	FROM registros r
	JOIN candidaturas cn ON cn.candidatura_id = r.candidatura_id
	JOIN partidos p ON r.partido_id = p.partido_id
	JOIN casillas c ON c.casilla_id = r.casilla_id
	WHERE alianza IS NOT NULL
	GROUP BY r.casilla_id,alianza,puesto
	ORDER BY puesto,Total_Votos DESC;
END
$$

-- TE MUESTRA LOS VOTOS REALIZADOS SÓLO A LOS PARTIDOS
DELIMITER $$
CREATE PROCEDURE partidos()
BEGIN
SELECT r.casilla_id,puesto,nombre AS "Partido", SUM(no_votos) as Total_Votos
FROM registros r
JOIN candidaturas cn ON cn.candidatura_id = r.candidatura_id
JOIN partidos p ON r.partido_id = p.partido_id
JOIN casillas c ON c.casilla_id = r.casilla_id
WHERE p.nombre != p.alianza
GROUP BY r.casilla_id,nombre,puesto
ORDER BY puesto,Total_Votos DESC;
END
$$
