DELIMITER $$
DROP TRIGGER IF EXISTS datos_registros$$
CREATE TRIGGER datos_registros
BEFORE INSERT
ON registros FOR EACH ROW
BEGIN 
	IF NEW.no_votos < 0 THEN
		SET NEW.no_votos= 0;
	END IF;
END;

DELIMITER $$
DROP TRIGGER IF EXISTS datos_usuarios$$
CREATE TRIGGER datos_usuarios
BEFORE INSERT
ON usuarios FOR EACH ROW
BEGIN 
	IF NEW.red_social IS NULL THEN
		SET NEW.red_social = 'Ninguna';
	END IF;
END;

