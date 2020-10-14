CREATE DATABASE IF NOT EXISTS turismocolombia;

USE turismocolombia;

CREATE TABLE lugaresColombia (
	id INT(2) NOT NULL AUTO_INCREMENT,
    name VARCHAR(45) DEFAULT NULL,
    departamento VARCHAR(45) DEFAULT NULL,
    municipio VARCHAR(45) DEFAULT NULL,
    alturamsm INT(6) DEFAULT NULL,
    temperatura INT(6) DEFAULT NULL,
    actividades VARCHAR(100) DEFAULT NULL,
    PRIMARY KEY(id)
);

DESCRIBE lugaresColombia;

INSERT INTO lugaresColombia values
(1, 'Minas de sal de Nemocón', 'Cundinamarca', 'Zipaquira', 2585, 12,'temático, minero y turístico talleres pedagógicos'),
(2, 'Parque Nacional Natural El Tuparro', 'Vichada', 'Puerto Carreño', 1300, 27, 'Senderismo, Kayak, Escalada, Ciclomontañismo, Avistamiento de aves, Rafting'),
(3, 'Cabo de la Vela', 'La Guajira', 'Uribia', 47, 28, 'Kitesurf, Visitar rancherias wayuu, nadar'),
(4, 'Caño Cristales', 'Meta', 'Macarena', 150, 30, 'Piscina de los turistas, Ecoturismo, Senderismo, Avistamiento de Aves'),
(5, 'Reserva Rio Claro', 'Antioquia', 'Campo Alegre', 350, 24, 'Senderismo, flora y fauna, rafting'),
(6, 'Desierto de la Tatacoa', 'Huila', 'Neiva', 384, 45, 'explorar en el día y para hospedarse y ver las estrellas en la noche'),
(7, 'Puerto Nariño', 'Amazonas', 'Puerto Nariño', 159, 28, 'turismo de aventura, múltiples actividades culturales, la mejor gastronomía'),
(8, 'Santuario de las Lajas', 'Nariño', 'Ipiales', 2900, 12, 'visualizar muchas piedras preciosas y lujos dentro de ella'),
(9, 'Ciudad Perdida', 'Magdalena','Santa Marta', 1300, 24, 'Ecoturismo, Senderismo'),
(10, 'Parque Nacional Natural Utría', 'Choco', 'Nuqui', 1400, 30, 'senderismo, actividades recreativas acuáticas, el avistamiento de ballenas, aves y fotografía');

SELECT * FROM lugaresColombia





