CREATE DATABASE  IF NOT EXISTS `trailerflix` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `trailerflix`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: trailerflix
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `actores`
--

DROP TABLE IF EXISTS `actores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_apellido` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=368 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actores`
--

LOCK TABLES `actores` WRITE;
/*!40000 ALTER TABLE `actores` DISABLE KEYS */;
INSERT INTO `actores` VALUES (1,'Pedro Pascal'),(2,'Carl Weathers'),(3,'Misty Rosas'),(4,'Chris Bartlett'),(5,'Rio Hackford'),(6,'Giancarlo Esposito'),(7,'Tom Hopper'),(8,'David Castañeda'),(9,'Emmy Raver-Lampman'),(10,'Robert Sheehan'),(11,'Aidan Gallagher'),(12,'Elliot Page'),(13,'Anya Taylor-Joy'),(14,'Thomas Brodie-Sangster'),(15,'Harry Melling'),(16,'Moses Ingram'),(17,'Chloe Pirrie'),(18,'Janina Elkin'),(19,'Lili Reinhart'),(20,'Casey Cott'),(21,'Camila Mendes'),(22,'Marisol Nichols'),(23,'Madelaine Petsch'),(24,'Mädchen Amick'),(25,'Claire Foy'),(26,'Olivia Colman'),(27,'Matt Smith'),(28,'Tobias Menzies'),(29,'Vanessa Kirby'),(30,'Helena Bonham Carter'),(31,'Millie Bobby Brown'),(32,'Henry Cavill'),(33,'Sam Claflin'),(34,'Louis Partridge'),(35,'Adeel Akhtar'),(36,'Joaquin Phoenix'),(37,'Robert De Niro'),(38,'Zazie Beetz'),(39,'Frances Conroy'),(40,'Brett Cullen'),(41,'Shea Whigham'),(42,'Robert Downey Jr.'),(43,'Chris Evans'),(44,'Mark Ruffalo'),(45,'Chris Hemsworth'),(46,'Scarlett Johansson'),(47,'Jeremy Renner'),(48,'Emilia Clarke'),(49,'Lena Headey'),(50,'Sophie Turner'),(51,'Kit Harington'),(52,'Peter Dinklage'),(53,'Nikolaj Coster-Waldau'),(54,'Grant Gustin'),(55,'Carlos Valdes'),(56,'Danielle Panabaker'),(57,'Candice Patton'),(58,'Jesse L. Martin'),(59,'Tom Cavanagh'),(60,'Jim Parsons'),(61,'Johnny Galecki'),(62,'Kaley Cuoco'),(63,'Simon Helberg'),(64,'Kunal Nayyar'),(65,'Melissa Rauch'),(66,'Mayim Bialik'),(67,'Jennifer Aniston'),(68,'Courteney Cox'),(69,'Lisa Kudrow'),(70,'David Schwimmer'),(71,'Matthew Perry'),(72,'Matt LeBlanc'),(73,'Amybeth McNulty'),(74,'Geraldine James'),(75,'R. H. Thomson'),(76,'Corrine Koslo'),(77,'Dalila Bela'),(78,'Lucas Jade Zumann'),(79,'Gillian Anderson'),(80,'David Duchovny'),(81,'Mitch Pileggi'),(82,'Robert Patrick'),(83,'Tom Braidwood'),(84,'Bruce Harwood'),(85,'Jared Harris'),(86,'Stellan Skarsgård'),(87,'Emily Watson'),(88,'Paul Ritter'),(89,'Jessie Buckley'),(90,'Adam Nagaitis'),(91,'Evan Rachel Wood'),(92,'Thandie Newton'),(93,'Jeffrey Wright'),(94,'Tessa Thompson'),(95,'Ed Harris'),(96,'Luke Hemsworth'),(97,'Lee Pace'),(98,'Scoot McNairy'),(99,'Mackenzie Davis'),(100,'Kerry Bishé'),(101,'Toby Huss'),(102,'Alana Cavanaugh'),(103,'Jessica Chastain'),(104,'John Malkovich'),(105,'Colin Farrell'),(106,'Common'),(107,'Geena Davis'),(108,'Ioan Gruffudd'),(109,'Margot Robbie'),(110,'Ewan McGregor'),(111,'Mary Elizabeth Winstead'),(112,'Jurnee Smollett'),(113,'Rosie Perez'),(114,'Chris Messina'),(115,'Stacy Martin'),(116,'Rhona Mitra'),(117,'Theo James'),(118,'Peter Ferdinando'),(119,'Lia Williams'),(120,'Toby Jones'),(121,'Dwayne Johnson'),(122,'Kevin Hart'),(123,'Jack Black'),(124,'Karen Gillan'),(125,'Awkwafina'),(126,'Nick Jonas'),(127,'Miranda Cosgrove'),(128,'Kate Walsh'),(129,'Omar Epps'),(130,'Angus Macfadyen'),(131,'Jorja Fox'),(132,'Enver Gjokaj'),(133,'Marion Cotillard'),(134,'Matt Damon'),(135,'Laurence Fishburne'),(136,'Jude Law'),(137,'Kate Winslet'),(138,'Jennifer Ehle'),(139,'Gwyneth Paltrow'),(140,'Florence Pugh'),(141,'David Harbour'),(142,'O.T. Fagbenle'),(143,'Rachel Weisz'),(144,'William Hurt'),(145,'Ray Winstone'),(146,'Christian Bale'),(147,'Caitriona Balfe'),(148,'Josh Lucas'),(149,'Noah Jupe'),(150,'Jon Bernthal'),(151,'Génesis Rodríguez'),(152,'Vincent Piazza'),(153,'Benjamin Sokolow'),(154,'Emily Bayiokos'),(155,'Amy Manson'),(156,'Luke Allen-Gale'),(157,'Nina Bergman'),(158,'Dominic Mafham'),(159,'James Weber Brown'),(160,'Lorina Kamburova'),(161,'Kristen Wiig'),(162,'Jeff Daniels'),(163,'Michael Peña'),(164,'Sean Bean'),(165,'Kate Mara'),(166,'Alicia Vikander'),(167,'Domhnall Gleeson'),(168,'Oscar Isaac'),(169,'Sonoya Mizuno'),(170,'Corey Johnson'),(171,'Claire Selby'),(172,'Gana Bayarsaikhan'),(173,'Bryce Dallas Howard'),(174,'Chris Pratt'),(175,'Irrfan Khan'),(176,'Vincent D´ Onofrio'),(177,'Omar Sy'),(178,'Nick Robinson'),(179,'Judy Greer'),(180,'Bill Skarsgård'),(181,'Isaiah Mustafa'),(182,'Jay Ryan'),(183,'Chadwick Boseman'),(184,'Michael B. Jordan'),(185,'Lupita Nyong\'o'),(186,'Danai Gurira'),(187,'Martin Freeman'),(188,'Daniel Kaluuya'),(189,'Aidan Gallagher'),(190,'Elliot Page'),(191,'Anya Taylor-Joy'),(192,'Thomas Brodie-Sangster'),(193,'Harry Melling'),(194,'Moses Ingram'),(195,'Chloe Pirrie'),(196,'Janina Elkin'),(197,'Lili Reinhart'),(198,'Casey Cott'),(199,'John Boyega'),(200,'Scott Eastwood'),(201,'Cailee Spaeny'),(202,'Jing Tian'),(203,'Rinko Kikuchi'),(204,'Burn Gorman'),(205,'Ryan Gosling'),(206,'Claire Foy'),(207,'Jason Clarke'),(208,'Kyle Chandler'),(209,'Corey Stoll'),(210,'Patrick Fugit'),(211,'Will Smith'),(212,'Alice Braga'),(213,'Charlie Tahan'),(214,'Dash Mihok'),(215,'Salli Richardson-Whitfield'),(216,'Willow Smith'),(217,'Emma Thompson'),(218,'Bill Hader'),(219,'James McAvoy');
/*!40000 ALTER TABLE `actores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actoresxpeliculas`
--

DROP TABLE IF EXISTS `actoresxpeliculas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actoresxpeliculas` (
  `idpelicula` int NOT NULL,
  `idactor` int NOT NULL,
  PRIMARY KEY (`idpelicula`,`idactor`),
  KEY `ActoresXPeliculas_fk1` (`idactor`),
  CONSTRAINT `ActoresXPeliculas_fk0` FOREIGN KEY (`idpelicula`) REFERENCES `peliculas` (`id`),
  CONSTRAINT `ActoresXPeliculas_fk1` FOREIGN KEY (`idactor`) REFERENCES `actores` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actoresxpeliculas`
--

LOCK TABLES `actoresxpeliculas` WRITE;
/*!40000 ALTER TABLE `actoresxpeliculas` DISABLE KEYS */;
INSERT INTO `actoresxpeliculas` VALUES (3,1),(3,2),(3,3),(3,4),(3,5),(3,6),(4,7),(4,8),(4,9),(4,10),(4,11),(4,12),(5,13),(5,14),(5,15),(5,16),(5,17),(5,18),(2,19),(2,20),(2,21),(2,22),(2,23),(2,24),(1,25),(1,26),(1,27),(1,28),(1,29),(1,30),(6,30),(6,31),(6,32),(6,33),(6,34),(6,35),(7,36),(7,37),(7,38),(7,39),(7,40),(7,41),(8,42),(8,43),(8,44),(8,45),(8,46),(29,46),(8,47),(9,48),(9,49),(9,50),(9,51),(9,52),(9,53),(10,54),(10,55),(10,56),(10,57),(10,58),(10,59),(11,60),(11,61),(11,63),(11,64),(11,65),(11,66),(11,67),(12,67),(12,68),(12,69),(12,70),(12,71),(12,72),(13,73),(13,74),(13,75),(13,76),(13,77),(13,78),(14,79),(14,80),(14,81),(14,82),(14,83),(14,84),(15,85),(15,86),(15,87),(15,88),(15,89),(15,90),(16,91),(16,92),(16,93),(16,94),(16,95),(16,96),(17,97),(17,98),(17,99),(17,100),(17,101),(17,102),(18,103),(23,103),(30,103),(18,104),(18,105),(18,106),(18,107),(18,108),(19,109),(19,110),(19,111),(19,112),(19,113),(19,114),(20,115),(20,116),(20,117),(20,118),(20,119),(20,120),(21,121),(21,122),(21,123),(21,124),(21,125),(21,126),(22,127),(22,128),(22,129),(22,130),(22,131),(22,132),(28,133),(25,134),(28,134),(30,134),(28,135),(28,136),(28,137),(28,138),(28,139),(29,140),(29,141),(29,142),(29,143),(29,144),(29,145),(25,146),(25,147),(25,148),(25,149),(25,150),(26,151),(26,152),(26,153),(26,154),(27,155),(27,156),(27,157),(27,158),(27,159),(27,160),(30,161),(30,162),(30,163),(30,164),(30,165),(31,166),(31,167),(31,168),(31,169),(31,170),(31,171),(31,172),(32,173),(32,174),(32,175),(32,176),(32,177),(32,178),(32,179),(23,180),(23,181),(23,182),(24,183),(24,184),(24,185),(24,186),(24,187),(24,188),(35,199),(35,200),(35,201),(35,202),(35,203),(35,204),(34,205),(34,206),(34,207),(34,208),(34,209),(34,210),(33,211),(33,212),(33,213),(33,214),(33,215),(33,216),(33,217),(23,218),(23,219);
/*!40000 ALTER TABLE `actoresxpeliculas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Película'),(2,'Serie');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generos`
--

DROP TABLE IF EXISTS `generos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generos`
--

LOCK TABLES `generos` WRITE;
/*!40000 ALTER TABLE `generos` DISABLE KEYS */;
INSERT INTO `generos` VALUES (1,'Ciencia Ficción'),(2,'Fantasía'),(3,'Drama'),(4,'Ficción'),(5,'Sucesos'),(6,'Misterio'),(7,'Hechos verídicos'),(8,'Crimen'),(9,'Suspenso'),(10,'Aventura'),(11,'Sci-Fi'),(12,'Acción'),(13,'Comedia'),(14,'Familia'),(15,'Western'),(16,'Tecnología'),(17,'Historia'),(18,'Intriga'),(19,'Terror');
/*!40000 ALTER TABLE `generos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generosxpeliculas`
--

DROP TABLE IF EXISTS `generosxpeliculas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generosxpeliculas` (
  `idgenero` int NOT NULL,
  `idpelicula` int NOT NULL,
  PRIMARY KEY (`idgenero`,`idpelicula`),
  KEY `GenerosXPeliculas_fk1` (`idpelicula`),
  CONSTRAINT `GenerosXPeliculas_fk0` FOREIGN KEY (`idgenero`) REFERENCES `generos` (`id`),
  CONSTRAINT `GenerosXPeliculas_fk1` FOREIGN KEY (`idpelicula`) REFERENCES `peliculas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generosxpeliculas`
--

LOCK TABLES `generosxpeliculas` WRITE;
/*!40000 ALTER TABLE `generosxpeliculas` DISABLE KEYS */;
INSERT INTO `generosxpeliculas` VALUES (3,1),(7,1),(3,2),(4,2),(6,2),(1,3),(2,3),(1,4),(2,4),(3,5),(4,5),(5,5),(3,6),(4,6),(6,6),(3,7),(8,7),(9,7),(10,8),(11,8),(12,8),(2,9),(3,9),(10,9),(1,10),(2,10),(2,11),(4,11),(13,11),(3,12),(13,12),(14,12),(3,13),(14,13),(15,13),(1,14),(3,14),(3,15),(7,15),(1,16),(15,16),(3,17),(4,17),(16,17),(3,18),(9,18),(12,18),(4,19),(12,19),(13,19),(9,20),(11,20),(12,20),(4,21),(10,21),(13,21),(1,22),(9,22),(2,23),(9,23),(19,23),(2,24),(10,24),(12,24),(3,25),(10,25),(17,25),(3,26),(9,26),(18,26),(11,27),(12,27),(19,27),(3,28),(4,28),(9,28),(3,29),(10,29),(12,29),(3,30),(10,30),(11,30),(3,31),(9,31),(11,31),(4,32),(9,32),(10,32),(3,33),(4,33),(19,33),(3,34),(7,34),(2,35),(11,35),(12,35);
/*!40000 ALTER TABLE `generosxpeliculas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peliculas`
--

DROP TABLE IF EXISTS `peliculas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `peliculas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `poster` varchar(50) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `trailer` varchar(300) DEFAULT NULL,
  `temporadas` int DEFAULT NULL,
  `resumen` varchar(1000) NOT NULL,
  `idcategoria` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Peliculas_fk0` (`idcategoria`),
  CONSTRAINT `Peliculas_fk0` FOREIGN KEY (`idcategoria`) REFERENCES `categorias` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peliculas`
--

LOCK TABLES `peliculas` WRITE;
/*!40000 ALTER TABLE `peliculas` DISABLE KEYS */;
INSERT INTO `peliculas` VALUES (1,'/posters/1.jpg','The Crown',NULL,4,'Este drama narra las rivalidades políticas y el romance de la reina Isabel II, así como los sucesos que moldearon la segunda mitad del siglo XX.',2),(2,'/posters/2.jpg','Riverdale',NULL,5,'El paso a la edad adulta incluye sexo, romance, escuela y familia. Para Archie y sus amigos, también hay misterios oscuros.',2),(3,'/posters/3.jpg','The Mandalorian','https://www.youtube.com/embed/aOC8E8z_ifw',2,'Ambientada tras la caída del Imperio y antes de la aparición de la Primera Orden, la serie sigue los pasos de un pistolero solitario en las aventuras que protagoniza en los confines de la galaxia, donde no alcanza la autoridad de la Nueva República.',2),(4,'/posters/4.jpg','The Umbrella Academy',NULL,1,'La muerte de su padre reúne a unos hermanos distanciados y con extraordinarios poderes que descubren impactantes secretos y una amenaza que se cierne sobre la humanidad.',2),(5,'/posters/5.jpg','Gambito de Dama',NULL,1,'En los cincuenta, una joven de un orfanato descubre que tiene un increíble don para el ajedrez y recorre el arduo camino a la fama mientras lucha contra las adicciones.',2),(6,'/posters/6.jpg','Enola Holmes',NULL,NULL,'La hermana menor de Sherlock, descubre que su madre ha desaparecido y se dispone a encontrarla. En su búsqueda, saca a relucir el sabueso que corre por sus venas y se encuentra con una conspiración que gira en torno a un misterioso lord, demostrando que su ilustre hermano no es el único talento en la familia.',1),(7,'/posters/7.jpg','Guasón','https://www.youtube.com/embed/zAGVQLHvwOY',NULL,'Arthur Fleck (Phoenix) es un hombre ignorado por la sociedad, cuya motivación en la vida es hacer reír. Pero una serie de trágicos acontecimientos le llevarán a ver el mundo de otra forma. Película basada en el popular personaje de DC Comics Joker, conocido como archivillano de Batman, pero que en este film tomará un cariz más realista y oscuro.',1),(8,'/posters/8.jpg','Avengers: End Game',NULL,NULL,'Después de los devastadores eventos de los Vengadores: Infinity War (2018), el universo está en ruinas. Con la ayuda de los aliados restantes, los Vengadores se reúnen una vez más para revertir las acciones de Thanos y restaurar el equilibrio del universo.',1),(9,'/posters/9.jpg','Juego de tronos',NULL,8,'En un mundo fantástico y en un contexto medieval varias familias, relativas a la nobleza, se disputan el poder para dominar el territorio ficticio de Poniente (Westeros) y tomar el control de los Siete Reinos desde el Trono de Hierro, lugar donde el rey ejerce el poder.',2),(10,'/posters/10.jpg','The Flash',NULL,6,'Sigue las veloces aventuras de Barry Allen, un joven común y corriente con el deseo latente de ayudar a los demás. Cuando una inesperada partícula aceleradora golpea por accidente a Barry, de pronto se encuentra cargado de un increíble poder para moverse a increíbles velocidades. Mientras Barry siempre ha tenido el alma de un héroe, sus nuevos poderes le han dado la capacidad de actuar como tal.',2),(11,'/posters/11.jpg','The Big Bang Theory','https://www.youtube.com/embed/WBb3fojgW0Q',12,'Leonard y Sheldon son dos físicos que comparten trabajo y apartamento. La serie comienza con la mudanza de Penny, su nueva y atractiva vecina, y hace hincapié en la dificultad de los físicos para relacionarse con personas fuera de su entorno para dar lugar a situaciones cómicas.',2),(12,'/posters/12.jpg','Friends',NULL,10,'\'Friends\' narra las aventuras y desventuras de seis jóvenes de Nueva York: Rachel, Monica, Phoebe, Ross, Chandler y Joey. Ellos forman una unida pandilla de amigos que viven en Manhattan y que suelen reunirse en sus apartamentos o en su bar habitual cafetería, el Central Perk. A pesar de los numerosos cambios que se producen en sus vidas, su amistad es inquebrantable en la dura batalla por salir adelante en sus periplos profesionales y personales.',2),(13,'/posters/13.jpg','Anne with an \'E\'',NULL,2,'Anne Shirley es una niña huérfana que vive en un pequeño pueblo llamado Avonlea que pertenece a la Isla del Príncipe Eduardo, en el año 1890. Después de una infancia difícil, donde fue pasando de orfanato a hogares de acogida, es enviada por error a vivir con una solterona y su hermano. Cuando cumple 13 años, Anne va a conseguir transformar su vida y el pequeño pueblo donde vive gracias a su fuerte personalidad, intelecto e imaginación. Basada en la inolvidable novela.',2),(14,'/posters/14.jpg','Expedientes Secretos \'X\'','https://www.youtube.com/embed/KKziOmsJxzE',11,'Fox Mulder y Dana Scully son dos investigadores del FBI que investigan casos sin resolución ni explicación, ya sea por razones paranormales (espíritus, criaturas extrañas, aliens...) ya porque el gobierno se ha encargado de ocultar todo tipo de pruebas. Cuando Mulder tenía doce años, su hermana pequeña fue secuestrada por unos desconocidos, aunque él cree que, en realidad, fue abducida por extraterrestres. Tras acabar sus estudios en la universidad de Oxford, ingresó en la Academia de Quantico, donde se ganó el apodo de \'siniestro\'',2),(15,'/posters/15.jpg','Chernobyl','https://www.youtube.com/embed/s9APLXM9Ei8',1,'Sigue «la verdadera historia de una de las peores catástrofes provocadas por el hombre y habla de los valientes hombres y mujeres que se sacrificaron para salvar a Europa de un desastre inimaginable. La miniserie se centra en el desgarrador alcance del desastre de la planta nuclear que ocurrió en Ucrania en abril de 1986, revelando cómo y por qué ocurrió, además contando las sorprendentes y notables historias de los héroes que lucharon y cayeron.',2),(16,'/posters/16.jpg','Westworld','https://www.youtube.com/embed/qLFBcdd6Qw0',3,'\'Westworld\' es una oscura odisea acerca del amanecer de la conciencia artificial y la evolución del pecado. Situada en la intersección del futuro cercano y el pasado reimaginado, explora un mundo donde cada apetito humano, sin importar cuán noble o depravado, puede ser saciado. Está ambientada en un parque temático futurista dirigido por el Dr. Robert Ford (Anthony Hopkins). Las instalaciones cuentan con androides caracterizados del western americano, y gracias a ellos los visitantes pueden introducirse en cualquier tipo de fantasía por muy oscura que sea.',2),(17,'/posters/17.jpg','Halt and Catch Fire','https://www.youtube.com/embed/pWrioRji60A',4,'Situada en los inicios de la década de 1980, un visionario ficticio, un ingeniero electrónico y una prodigiosa ingeniera, se alían a una programadora de software para confrontar con las corporaciones informáticas dominantes de la época. El Personal de la firma y sus socios de negocio, comenzarán una carrera que cambiará la cultura en el Estado de Texas, cuna de las empresas de tecnología, casi de la misma forma que lo es hoy Silicon Valey. \\n Esta historia ficticia emula el trabajo realizado, en su momento, por la firma Compaq, cuando clonó el BIOS de las Computadoras Personales IBM, dando vida así al económico mercado de los clones. Mostrando también, a lo largo de sus 4 temporadas, el nacimiento de la arquitectura abierta de hardware, los videojuegos online, las salas de chat y de trueque de productos físicos, los BBS, y las primeras nubes computacionales, hasta la llegada de Internet (sin dejar afuera la guerra de los web browsers).',2),(18,'/posters/18.jpg','Ava',NULL,NULL,'Ava es una mortífera asesina a sueldo que trabaja para una organización de operaciones encubiertas, que viaja por todo el mundo acabando con aquellos objetivos que nadie más puede derribar. Cuando uno de sus encargos sale mal, Ava tendrá que luchar por una vida.',1),(19,'/posters/19.jpg','Aves de presa y la fantabulosa emancipación de una Harley Quinn',NULL,NULL,'Después de separarse de Joker, Harley Quinn y otras tres heroínas (Canario Negro, Cazadora y Renée Montoya) unen sus fuerzas para salvar a una niña (Cassandra Cain) del malvado rey del crimen Máscara Negra.',1),(20,'/posters/20.jpg','Archivo','https://www.youtube.com/embed/VHSoCnDioAo',NULL,'2038: George Almore está trabajando en una verdadera IA equivalente a la humana. Su último prototipo está casi listo. Esta fase sensible también es la más arriesgada. Especialmente porque tiene un objetivo que debe ocultarse a toda costa: reunirse con su esposa muerta.',1),(21,'/posters/21.jpg','Jumanji - The next level','https://www.youtube.com/embed/rBxcF-r9Ibs',NULL,'Las aventuras continúan en el fantástico mundo del video juego Jumanji, donde nada es lo que parece. En esta ocasión, los jugadores vuelven al juego, pero sus personajes se han intercambiado entre sí, lo que ofrece un curioso plantel: los mismos héroes con distinta apariencia y habilidades. Pero, ¿dónde está el resto de la gente?',1),(22,'/posters/22.jpg','3022','https://www.youtube.com/embed/AGQ7OkmIx4Q',NULL,'La película está ambientada en una estación espacial en el futuro. La tripulación sufre un estrés traumático y considera abandonar su misión después de observar lo que creen que es la destrucción de la Tierra. La película se muestra como una serie de flashbacks y flash-forward.',1),(23,'/posters/23.jpg','IT - Capítulo 2','https://www.youtube.com/embed/hZeFeYSmBcg',NULL,'En este segundo capitulo Han pasado 27 años desde que el \'Club de los Perdedores\', formado por Bill, Berverly, Richie, Ben, Eddie, Mike y Stanley, se enfrentaran al macabro y despiadado Pennywise (Bill Skarsgård). En cuanto tuvieron oportunidad, abandonaron el pueblo de Derry, en el estado de Maine, que tantos problemas les había ocasionado. Sin embargo, ahora, siendo adultos, parece que no pueden escapar de su pasado. Todos deberán enfrentarse de nuevo al temible payaso para descubrir si de verdad están preparados para superar sus traumas de la infancia.',1),(24,'/posters/24.jpg','Pantera Negra','https://www.youtube.com/embed/BE6inv8Xh4A',NULL,'T’Challa (Chadwick Boseman) regresa a su hogar en la apartada nación africana de Wakanda para servir como líder de su país. Tras suceder a su padre en el trono, pasa a convertirse en Pantera Negra, una sigilosa criatura de la noche, con agudos sentidos felinos y otras habilidades como súper fuerza e inteligencia, agilidad, estrategia o maestro del combate sin armas. Es bajo el liderazgo de T’Challa como Wakanda consigue convertirse en una de las naciones más ricas y tecnológicamente avanzadas del planeta.',1),(25,'/posters/25.jpg','Contra lo imposible (Ford versus Ferrari)','https://www.youtube.com/embed/SOVb0-2g1Q0',NULL,'Los ganadores del Premio de la Academia® Matt Damon y Christian Bale protagonizan CONTRA LO IMPOSIBLE, basada en la historia real del visionario diseñador americano de automóviles Carroll Shelby (Damon) y el intrépido piloto británico Ken Miles (Bale). Juntos construyen un nuevo coche de carreras para Ford Motor Company y así enfrentar a Enzo Ferrari en las 24 Horas de Le Mans en Francia en 1966.',1),(26,'/posters/26.jpg','Centígrados',NULL,NULL,'\"Una joven pareja estadounidense viaja a las montañas árticas de Noruega. Después de detenerse durante una tormenta de nieve, se despiertan atrapados en su SUV, enterrados bajo capas de nieve y hielo.',1),(27,'/posters/27.jpg','DOOM: Aniquilación','https://www.youtube.com/embed/nat3u3gAVLE',NULL,'Doom: Aniquilación sigue a un grupo de marines espaciales que han respondido a una llamada de alerta de una base en la luna marciana, solo para descubrir que ha sido tomada por criaturas demoníacas que amenazan con desatar el infierno en la tierra.',1),(28,'/posters/28.jpg','Contagio','https://www.youtube.com/embed/4sYSyuuLk5g',NULL,'\"De repente, sin saber cuál es su origen, aunque todo hace sospechar que comienza con el viaje de una norteamericana a un casino de Hong Kong, un virus mortal comienza a propagarse por todo el mundo. En pocos días, la enfermedad empieza a diezmar a la población. El contagio se produce por mero contacto entre los seres humanos. Un thriller realista y sin efectos especiales sobre los efectos de una epidemia.',1),(29,'/posters/29.jpg','Viuda Negra','https://www.youtube.com/embed/BIn8iANwEog',NULL,'Primera pelicula individual de la Viuda Negra en el universo cinematografico de Marvel, contando su historia desde que se inició como doble agente rusa, su niñez, sus misiones, y su actualidad, después de Avengers.',1),(30,'/posters/30.jpg','The Martian','https://www.youtube.com/embed/XvB58bCVfng',NULL,'Durante una misión a Marte de la nave tripulada Ares III, una fuerte tormenta se desata dando por desaparecido y muerto al astronauta Mark Watney (Matt Damon), sus compañeros toman la decisión de irse pero él ha sobrevivido. Está solo y sin apenas recursos en el planeta. Con muy pocos medios deberá recurrir a sus conocimientos, su sentido del humor y un gran instinto de supervivencia para lograr sobrevivir y comunicar a la Tierra que todavía está vivo esperando que acudan en su rescate.',1),(31,'/posters/31.jpg','Ex-Machina','https://www.youtube.com/embed/XRYL5spvEcI',NULL,'Un programador multimillonario selecciona a Caleb, un joven empleado de su empresa, para que pase una semana en un lugar remoto con el objetivo de que participe en un test en el que estará involucrada su última creación: un robot-mujer en el que inteligencia artificial lo es todo.',1),(32,'/posters/32.jpg','Jurassic World',NULL,NULL,'Veintidós años después de lo ocurrido en Jurassic Park, la isla Nublar ha sido transformada en un enorme parque temático, Jurassic Wold, con versiones «domesticadas» de algunos de los dinosaurios más conocidos. Cuando todo parece ir sobre ruedas y ser el negocio del siglo, un nuevo dinosaurio de especie desconocida, pues ha sido creado manipulando genéticamente su ADN, y que resulta ser mucho más inteligente de lo que se pensaba, se escapa de su recinto y comienza a causar estragos entre los visitantes del Parque.',1),(33,'/posters/33.jpg','Soy leyenda','https://www.youtube.com/embed/dtKMEAXyPkg',NULL,'Años después de que una plaga mate a la mayoría de la humanidad y transforme al resto en monstruos, el único superviviente en la ciudad de Nueva York lucha valientemente para encontrar una cura.',1),(34,'/posters/34.jpg','El primer hombre en la luna',NULL,NULL,'Cuenta la historia de la misión de la NASA que llevó al primer hombre a la luna, centrada en Neil Armstrong (interpretado por Ryan Gosling) y el periodo comprendido entre los años 1961 y 1969. Un relato en primera persona, basado en la novela de James R. Hansen, que explora el sacrificio y el precio que representó, tanto para Armstrong como para Estados Unidos, una de las misiones más peligrosas de la historia.',1),(35,'/posters/35.jpg','Titanes del pacífico - La insurrección',NULL,NULL,'Han pasado 10 años tras la primera invasión que sufrió la humanidad, pero la lucha aún no ha terminado. El planeta vuelve a ser asediado por los Kaiju, una raza de alienígenas colosales, que emergen desde un portal interdimensional con el objetivo de destruir a la raza humana. Ante esta nueva amenaza, los Jaegers, robots gigantes de guerra pilotados por dos personas para sobrellevar la inmensa carga neuronal que conlleva manipularlos, ya no están a la altura de lo que se les viene encima. Será entonces cuando los supervivientes de la primera invasión, además de nuevos personajes como el hijo de Pentecost, tendrán que idear la manera de sorprender al enorme enemigo, apostando por nuevas estrategias defensivas y de ataque. Con la Tierra en ruinas e intentando reconstruirse, esta nueva batalla puede ser decisiva para el futuro.',1);
/*!40000 ALTER TABLE `peliculas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `peliculasview`
--

DROP TABLE IF EXISTS `peliculasview`;
/*!50001 DROP VIEW IF EXISTS `peliculasview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `peliculasview` AS SELECT 
 1 AS `id`,
 1 AS `poster`,
 1 AS `resumen`,
 1 AS `temporadas`,
 1 AS `titulo`,
 1 AS `trailer`,
 1 AS `categoria`,
 1 AS `generos`,
 1 AS `actores`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `peliculasview`
--

/*!50001 DROP VIEW IF EXISTS `peliculasview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `peliculasview` AS select `p`.`id` AS `id`,`p`.`poster` AS `poster`,`p`.`resumen` AS `resumen`,`p`.`temporadas` AS `temporadas`,`p`.`titulo` AS `titulo`,`p`.`trailer` AS `trailer`,`c`.`descripcion` AS `categoria`,(select group_concat(`g`.`descripcion` separator ', ') AS `generos_por_pelicula` from (`generos` `g` join `generosxpeliculas` `gxp` on((`g`.`id` = `gxp`.`idgenero`))) where (`gxp`.`idpelicula` = `p`.`id`)) AS `generos`,(select group_concat(`a`.`nombre_apellido` separator ', ') AS `actores_en_pelicula` from (`actores` `a` join `actoresxpeliculas` `axp` on((`a`.`id` = `axp`.`idactor`))) where (`axp`.`idpelicula` = `p`.`id`)) AS `actores` from (`peliculas` `p` join `categorias` `c` on((`c`.`id` = `p`.`idcategoria`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-23  9:41:38
