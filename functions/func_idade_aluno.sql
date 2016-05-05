DROP FUNCTION IF EXISTS idade_aluno;
DELIMITER $$
CREATE FUNCTION idade_aluno(nome_aluno TEXT)
  RETURNS TEXT
BEGIN
  DECLARE idade INT;
  SELECT TIMESTAMPDIFF(YEAR,nascimento,CURDATE()) INTO idade FROM alunos WHERE nome = nome_aluno;
  RETURN CONCAT('O aluno ', nome_aluno, ' tem ', idade, ' anos de idade.');
END;
$$
DELIMITER ;
