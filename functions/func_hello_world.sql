DROP FUNCTION IF EXISTS hello_world;
DELIMITER $$
CREATE FUNCTION hello_world(nome TEXT)
  RETURNS TEXT
BEGIN
  RETURN CONCAT('Hello ', nome);
END;
$$
DELIMITER ;