/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.1.37-MariaDB : Database - bdperiodicovirtual
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bdperiodicovirtual` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `bdperiodicovirtual`;

/*Table structure for table `detalle_genero` */

DROP TABLE IF EXISTS `detalle_genero`;

CREATE TABLE `detalle_genero` (
  `idUsuarios` char(10) NOT NULL,
  `idGenero` char(2) NOT NULL,
  KEY `fk_detalle_genero_Genero1_idx` (`idGenero`),
  KEY `fk_detalle_genero_Usuarios1_idx` (`idUsuarios`),
  CONSTRAINT `fk_detalle_genero_Genero1` FOREIGN KEY (`idGenero`) REFERENCES `genero` (`idGenero`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_detalle_genero_Usuarios1` FOREIGN KEY (`idUsuarios`) REFERENCES `usuarios` (`idUsuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `detalle_genero` */

/*Table structure for table `diario` */

DROP TABLE IF EXISTS `diario`;

CREATE TABLE `diario` (
  `idDiario` char(10) NOT NULL,
  `Diario` varchar(100) DEFAULT NULL,
  `Descripcion` varchar(150) DEFAULT NULL,
  `idGenero` char(2) NOT NULL,
  `logo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idDiario`),
  KEY `fk_Diario_Genero1_idx` (`idGenero`),
  CONSTRAINT `fk_Diario_Genero1` FOREIGN KEY (`idGenero`) REFERENCES `genero` (`idGenero`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `diario` */

insert  into `diario`(`idDiario`,`Diario`,`Descripcion`,`idGenero`,`logo`) values ('DI00000001','DEPOR','DIARIO DEPOR ','01','../Plugins/dist/img/depor.png'),('DI00000002','CORREO','DIARIO CORREO','02','RRT'),('DI00000003','LIBERO','DIARIO LIBERO','01','../Plugins/dist/img/libero.jpg');

/*Table structure for table `genero` */

DROP TABLE IF EXISTS `genero`;

CREATE TABLE `genero` (
  `idGenero` char(2) NOT NULL,
  `Genero` varchar(60) DEFAULT NULL,
  `Descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idGenero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `genero` */

insert  into `genero`(`idGenero`,`Genero`,`Descripcion`) values ('01','DEPORTES','DIARIOS CON TEMAS DEPORTIVOS'),('02','POLITICA','DIARIOS CON POLITICA');

/*Table structure for table `noticia` */

DROP TABLE IF EXISTS `noticia`;

CREATE TABLE `noticia` (
  `idNoticia` char(20) NOT NULL,
  `anteTitulo` varchar(100) DEFAULT NULL,
  `Titular` varchar(150) DEFAULT NULL,
  `Entradilla` varchar(300) DEFAULT NULL,
  `CuerpoNoticia` varchar(2000) DEFAULT NULL,
  `subtitulo` varchar(150) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `fuente` varchar(200) DEFAULT NULL,
  `fotografia` varchar(150) DEFAULT NULL,
  `epigrafe` varchar(100) DEFAULT NULL,
  `video` varchar(150) DEFAULT NULL,
  `idRedactor` char(10) NOT NULL,
  `idDiario` char(10) NOT NULL,
  PRIMARY KEY (`idNoticia`),
  KEY `fk_Noticia_Redactor1_idx` (`idRedactor`),
  KEY `fk_Noticia_Diario1_idx` (`idDiario`),
  CONSTRAINT `fk_Noticia_Diario1` FOREIGN KEY (`idDiario`) REFERENCES `diario` (`idDiario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Noticia_Redactor1` FOREIGN KEY (`idRedactor`) REFERENCES `redactor` (`idRedactor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `noticia` */

/*Table structure for table `redactor` */

DROP TABLE IF EXISTS `redactor`;

CREATE TABLE `redactor` (
  `idRedactor` char(10) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `Apellido` varchar(100) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  `user` varchar(45) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `fono` char(9) DEFAULT NULL,
  PRIMARY KEY (`idRedactor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `redactor` */

/*Table structure for table `tipousuarios` */

DROP TABLE IF EXISTS `tipousuarios`;

CREATE TABLE `tipousuarios` (
  `idtipoUsuarios` char(5) NOT NULL,
  `tipoUsuarios` varchar(45) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idtipoUsuarios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tipousuarios` */

/*Table structure for table `usuarios` */

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `idUsuarios` char(10) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `Apellido` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `user` varchar(45) DEFAULT NULL,
  `pass` char(20) DEFAULT NULL,
  `idtipoUsuarios` char(5) NOT NULL,
  PRIMARY KEY (`idUsuarios`),
  KEY `fk_Usuarios_tipoUsuarios_idx` (`idtipoUsuarios`),
  CONSTRAINT `fk_Usuarios_tipoUsuarios` FOREIGN KEY (`idtipoUsuarios`) REFERENCES `tipousuarios` (`idtipoUsuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `usuarios` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
