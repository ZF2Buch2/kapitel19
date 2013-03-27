SET FOREIGN_KEY_CHECKS=0;
SET AUTOCOMMIT=0;
START TRANSACTION;

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `cdate` datetime DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `message` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

INSERT INTO `comments` (`id`, `cdate`, `status`, `url`, `email`, `name`, `description`) VALUES
(1,'2012-12-28 18:02:17','approved','/about/team','luigi@luigis-pizza.de','Luigi','<p>Ich freue mich, dass ihr alle in unserem Team seid!</p>'),
(2,'2013-01-01 15:55:14','approved','/pizza/pizza-mexicana','horst@hat-hunger.de','Horst','<p>Liefert ihr auch heute an Neujahr?</p>'),
(3,'2013-01-01 16:06:47','approved','/pizza/pizza-mexicana','valentina@luigis-pizza.de','Valentina','<p>Ja klar, Horst, ruf einfach an und gib deine Bestellung auf.</p><p>Alessandro und ich warten schon!</p><p>:-x</p>'),
(4,'2013-01-01 16:08:13','approved','/pizza/pizza-mexicana','alessandro@luigis-pizza.de','Alessandro','<p>Ja, genau Horst. Hau rein, Salami und Schinken sind wieder ganz frisch reingekommen.</p><p>Forza Horst!</p>'),
(5,'2013-01-01 16:15:46','approved','/pizza/pizza-mexicana','horst@hat-hunger.de','Horst','<p>Danke, geht gleich los!</p>');

SET FOREIGN_KEY_CHECKS=1;
COMMIT;
