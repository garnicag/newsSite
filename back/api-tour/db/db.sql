CREATE DATABASE IF NOT exists ciclismo;
USE ciclismo;
CREATE table cyclists (
id INT (11) NOT NULL auto_increment,
name VARCHAR (45) NOT NULL,
Pais VARCHAR (30) NOT NULL,
Equipo VARCHAR (30) NOT NULL,
N_camiseta INT (3) NOT NULL,
PRIMARY KEY (id)
);

describe ciclismo;
	 	
insert into cyclists values
(1,'TADEJ POGACAR','Eslovenia','UAE TEAM EMIRATES/UAE',131),
(2,'MIGUEL ANGEL LOPEZ','Colombia','ASTANA PRO TEAM/KAZ',141),
(3,'MIKEL LANDA','España','BAHRAIN - MCLAREN/BRN',61),
(4,'RIGOBERTO URAN','Colombia','EF PRO CYCLING/USA',71),
(5,'NAIRO QUINTANA','Colombia','TEAM ARKEA - SAMSIC',81);
 
SELECT * FROM cyclists;