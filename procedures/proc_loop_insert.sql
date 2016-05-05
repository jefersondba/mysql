DROP PROCEDURE IF EXISTS loop_insert;
DELIMITER $$
CREATE PROCEDURE loop_insert(quantidade INT)
BEGIN
	DECLARE carga INT;
	SET carga = 0;
	WHILE carga < quantidade DO
		SET carga = carga + 1;
		INSERT INTO tabela VALUES (carga);
	END WHILE;
END $$
DELIMITER ;
