USE turismocolombia;

DELIMITER $$
USE `turismocolombia`$$

CREATE PROCEDURE `lugaresColombiaAddorEdit` (
  IN _id INT,
  IN _name VARCHAR(45),
  IN _departamento VARCHAR(45),
  IN _municipio VARCHAR(45),
  IN _alturamsm INT,
  IN _temperatura INT,
  IN _actividades VARCHAR(100)
)
BEGIN 
  IF _id = 0 THEN
    INSERT INTO lugaresColombia (name, departamento, municipio, alturamsm, temperatura, actividades)
    VALUES ( _name, _departamento, _municipio, _alturamsm, _temperatura, _actividades);

    SET _id = LAST_INSERT_ID();
  ELSE
    UPDATE lugaresColombia
    SET
    name = _name,
	departamento = _departamento,
	municipio = _municipio,
	alturamsm = _alturamsm,
	temperatura = _temperatura,
	actividades = _actividades
	WHERE id = _id;
  END IF;

  SELECT _id AS 'id';
END