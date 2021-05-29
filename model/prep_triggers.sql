DELIMITER $$
DROP TRIGGER IF EXISTS trigger_check_usuarios_before_insert$$
CREATE TRIGGER trigger_check_usuarios_before_insert
BEFORE INSERT
ON usuarios FOR EACH ROW
BEGIN
	IF NEW.red_social = NULL THEN
		SET NEW.red_social = 'Ninguna';
	END IF;
END
-- Si selcciona un partido no válido, será nulo.
DELIMITER $$
DROP TRIGGER IF EXISTS trigger_check_registros$$
CREATE TRIGGER trigger_check_registros
BEFORE INSERT
ON registros FOR EACH ROW
BEGIN
	IF NEW.partido_id > (SELECT COUNT(*) FROM partidos) THEN
		SET NEW.partido_id = NULL;
	END IF;
END

	