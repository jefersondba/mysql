DROP PROCEDURE IF EXISTS seleciona_alunos;
DELIMITER $$
CREATE PROCEDURE seleciona_alunos(IN quantidade INT)
BEGIN
	SELECT * FROM alunos LIMIT quantidade;
END $$
 DELIMITER ;
