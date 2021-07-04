DELIMITER $$
CREATE FUNCTION num_partidos()
	RETURNS INT DETERMINISTIC
    BEGIN
		DECLARE n INT DEFAULT 0;
		SELECT COUNT(*) 
        FROM partidos
        INTO n;
        RETURN n;
	END $$


CREATE FUNCTION num_votos(
	nom VARCHAR(30),
    cargo VARCHAR(30))
	RETURNS INT DETERMINISTIC
    BEGIN
		DECLARE n INT DEFAULT 0;
        SELECT SUM(no_votos)
        FROM registros
        JOIN partidos
        ON partidos.partido_id = registros.partido_id
        JOIN candidaturas
        ON registros.candidatura_id = candidaturas.candidatura_id
        WHERE partidos.nombre = nom and 
				candidaturas.puesto = cargo
        INTO n;
        RETURN n;
	END $$

		
		