/*
SQLyog Ultimate v9.63 
MySQL - 5.5.16 : Database - examen
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`examen` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `examen`;

/*Table structure for table `detalle_pregutas_respuestas` */

DROP TABLE IF EXISTS `detalle_pregutas_respuestas`;

CREATE TABLE `detalle_pregutas_respuestas` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Pregunta` int(11) NOT NULL,
  `ID_Respuesta` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `unique_ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

/*Data for the table `detalle_pregutas_respuestas` */

insert  into `detalle_pregutas_respuestas`(`ID`,`ID_Pregunta`,`ID_Respuesta`) values (1,1,1),(2,1,2),(3,1,3),(4,2,4),(5,2,5),(6,2,6),(7,3,7),(8,3,8),(9,3,9),(10,4,10),(11,4,11),(12,4,12),(13,5,13),(14,5,14),(15,5,15),(16,6,16),(17,6,17),(18,6,18),(19,7,19),(20,7,20),(21,7,21),(22,8,22),(23,8,23),(24,8,24),(25,9,25),(26,9,26),(27,9,27),(28,10,28),(29,10,29),(30,10,30);

/*Table structure for table `preguntas` */

DROP TABLE IF EXISTS `preguntas`;

CREATE TABLE `preguntas` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `pregunta` varchar(200) NOT NULL,
  `ID_respuesta` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `unique_ID` (`ID`),
  KEY `ID_respuesta` (`ID_respuesta`),
  CONSTRAINT `preguntas_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `respuestas` (`ID`),
  CONSTRAINT `preguntas_ibfk_10` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  CONSTRAINT `preguntas_ibfk_11` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  CONSTRAINT `preguntas_ibfk_12` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  CONSTRAINT `preguntas_ibfk_13` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  CONSTRAINT `preguntas_ibfk_14` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  CONSTRAINT `preguntas_ibfk_15` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  CONSTRAINT `preguntas_ibfk_16` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  CONSTRAINT `preguntas_ibfk_17` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  CONSTRAINT `preguntas_ibfk_18` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  CONSTRAINT `preguntas_ibfk_19` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  CONSTRAINT `preguntas_ibfk_2` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  CONSTRAINT `preguntas_ibfk_20` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  CONSTRAINT `preguntas_ibfk_21` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  CONSTRAINT `preguntas_ibfk_22` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  CONSTRAINT `preguntas_ibfk_3` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  CONSTRAINT `preguntas_ibfk_4` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  CONSTRAINT `preguntas_ibfk_5` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  CONSTRAINT `preguntas_ibfk_6` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  CONSTRAINT `preguntas_ibfk_7` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  CONSTRAINT `preguntas_ibfk_8` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  CONSTRAINT `preguntas_ibfk_9` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `preguntas` */

insert  into `preguntas`(`ID`,`pregunta`,`ID_respuesta`) values (1,'9 x 9',1),(2,'9 x 5',6),(3,'9 x 3',8),(4,'6 x 7',12),(5,'8 x 4',13),(6,'5 x 6',17),(7,'4 x 7',19),(8,'2 x 9',22),(9,'3 x 4',25),(10,'8 x 8',29);

/*Table structure for table `respuestas` */

DROP TABLE IF EXISTS `respuestas`;

CREATE TABLE `respuestas` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `respuesta` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

/*Data for the table `respuestas` */

insert  into `respuestas`(`ID`,`respuesta`) values (1,'81'),(2,'18'),(3,'91'),(4,'20'),(5,'54'),(6,'45'),(7,'72'),(8,'27'),(9,'18'),(10,'24'),(11,'13'),(12,'42'),(13,'32'),(14,'36'),(15,'26'),(16,'36'),(17,'30'),(18,'27'),(19,'28'),(20,'82'),(21,'12'),(22,'18'),(23,'81'),(24,'16'),(25,'12'),(26,'21'),(27,'9'),(28,'46'),(29,'64'),(30,'23');

/*Table structure for table `usuarios` */

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Nomb` varchar(50) DEFAULT NULL,
  `App` varchar(50) DEFAULT NULL,
  `Apm` varchar(50) DEFAULT NULL,
  `usr` varchar(20) DEFAULT NULL,
  `psw` varchar(100) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `calficacion` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `unique_ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `usuarios` */

insert  into `usuarios`(`ID`,`Nomb`,`App`,`Apm`,`usr`,`psw`,`status`,`calficacion`) values (1,'Cruz Alfredo','Bibiano','Montaño','cruz','qwerty',1,0),(2,'victor','juarez','martinez','victor','123',1,5);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
