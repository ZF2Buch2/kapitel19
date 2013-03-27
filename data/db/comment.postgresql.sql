DROP TABLE IF EXISTS comments;
CREATE TABLE comments (
  id smallint NOT NULL,
  cdate datetime DEFAULT NULL,
  status varchar(8) DEFAULT NULL,
  url varchar(255) DEFAULT NULL,
  email varchar(128) DEFAULT NULL,
  name varchar(64) DEFAULT NULL,
  message text DEFAULT NULL,
  
  CONSTRAINT comments_id PRIMARY KEY(id)
);

INSERT INTO comments VALUES (1,'2012-12-28 18:02:17','approved','/about/team','luigi@luigis-pizza.de','Luigi','<p>Ich freue mich, dass ihr alle in unserem Team seid!</p>');
INSERT INTO comments VALUES (2,'2013-01-01 15:55:14','approved','/pizza/pizza-mexicana','horst@hat-hunger.de','Horst','<p>Liefert ihr auch heute an Neujahr?</p>');
INSERT INTO comments VALUES (3,'2013-01-01 16:06:47','approved','/pizza/pizza-mexicana','valentina@luigis-pizza.de','Valentina','<p>Ja klar, Horst, ruf einfach an und gib deine Bestellung auf.</p><p>Alessandro und ich warten schon!</p><p>:-x</p>');
INSERT INTO comments VALUES (4,'2013-01-01 16:08:13','approved','/pizza/pizza-mexicana','alessandro@luigis-pizza.de','Alessandro','<p>Ja, genau Horst. Hau rein, Salami und Schinken sind wieder ganz frisch reingekommen.</p><p>Forza Horst!</p>');
INSERT INTO comments VALUES (5,'2013-01-01 16:15:46','approved','/pizza/pizza-mexicana','horst@hat-hunger.de','Horst','<p>Danke, geht gleich los!</p>');
