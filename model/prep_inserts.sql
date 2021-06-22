use prep;
-- INSERTS DE LOS PARTIDOS ----

INSERT INTO partidos VALUES(1,'MORENA','Juntos Haremos Historia');
INSERT INTO partidos VALUES(2,'PT','Juntos Haremos Historia');
INSERT INTO partidos VALUES(3,'PVEM','Juntos Haremos Historia');
INSERT INTO partidos VALUES(4,'PRI','Va Por México');
INSERT INTO partidos Values(5,'PAN','Va Por México');
INSERT INTO partidos VALUES(6,'PRD','Va Por México');
INSERT INTO partidos VALUES(7,'RSP',NULL);
INSERT INTO partidos VALUES(8,'MC',NULL);
INSERT INTO partidos VALUES(9,'FxM',NULL);
INSERT INTO partidos VALUES(10,'PES',NULL);
INSERT INTO partidos VALUES(11,'FUTURO',NULL);
INSERT INTO partidos VALUES(12,'HAGAMOS',NULL);
INSERT INTO partidos VALUES(13,'SOMOS',NULL);
INSERT INTO partidos VALUES(14,'INDEPENDIENTE',NULL);
INSERT INTO partidos VALUES(15,'NULO',NULL);
INSERT INTO partidos VALUES(16,'Juntos Haremos Historia','Juntos Haremos Historia');
INSERT INTO partidos VALUES(17,'Va Por México','Va Por México');

-- INSERTS DE LAS CANDIDATURAS 

INSERT INTO candidaturas VALUES(1,'Presidente Municipal','Tonala',11);
INSERT INTO candidaturas VALUES(2,'Diputado Federal',null,null);
INSERT INTO candidaturas VALUES(3,'Diputado Local','Tonala',11);
INSERT INTO registros VALUES(9,1,5,10,1213);
-- INSERT EJEMPLO CASILLA --

INSERT INTO casillas VALUES(1214,2683,'normal');

-- INSERT EJEMPLO REGISTROS --
INSERT INTO registros VALUES(1,1,1,4,1213);
INSERT INTO registros VALUES(2,1,2,5,1213);
INSERT INTO registros VALUES(3,1,3,5,1213);
INSERT INTO registros VALUES(4,1,16,5,1213);
INSERT INTO registros VALUES(5,1,4,10,1213);
INSERT INTO registros VALUES(6,2,3,100,1213);
INSERT INTO registros VALUES(7,1,8,20,1213);

INSERT INTO registros VALUES(12,1,8,5,1214);
INSERT INTO registros VALUES(13,1,8,3,1214);