DROP FUNCTION IF EXISTS media_aluno;
DELIMITER $$
CREATE FUNCTION media_aluno(nome_aluno TEXT)
	RETURNS TEXT
BEGIN
	DECLARE media NUMERIC(4,2);
--  SET media = LENGTH(nome_aluno);
	SELECT ( ( JSON_EXTRACT(boletim, "$.SQL") + JSON_EXTRACT(boletim, "$.Tunning") ) /2 ) INTO media FROM alunos WHERE nome = nome_aluno;  
RETURN CONCAT('O aluno ', nome_aluno, ' tem a média final: ', media);
END;
$$
DELIMITER ;
