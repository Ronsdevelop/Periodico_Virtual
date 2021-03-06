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

insert  into `diario`(`idDiario`,`Diario`,`Descripcion`,`idGenero`,`logo`) values ('DI00000001','DEPOR','DIARIO DEPOR ','01','../Plugins/dist/img/depor.png'),('DI00000002','CORREO','DIARIO CORREO','02','../Plugins/dist/img/correo.jpg'),('DI00000003','LIBERO','DIARIO LIBERO','01','../Plugins/dist/img/libero.jpg'),('DI00000004','EL BOCON','DIARIO EL BOCON','01','../Plugins/dist/img/bocon.jpg'),('DI00000005','TODO SPORT','DIARIO TODO SPORT','01','../Plugins/dist/img/todosport.png'),('DI00000006','COMERCIO','DIARIO COMERCIO','02','../Plugins/dist/img/comercio.png'),('DI00000007','TROME','EL TROME','01','../Plugins/dist/img/trome.jpg');

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

insert  into `noticia`(`idNoticia`,`anteTitulo`,`Titular`,`Entradilla`,`CuerpoNoticia`,`subtitulo`,`fecha`,`fuente`,`fotografia`,`epigrafe`,`video`,`idRedactor`,`idDiario`) values ('NOT00000000000000001','Ricardo Gareca va disipando sus dudas','Ricardo Gareca sorprendido con desempeño de este jugador en los entrenamientos de la Selección','el mejor jugador del momento que tiene la seleccion','Ricardo Gareca no quiere llevar a nadie a la Copa América de Brasil de paseo. Por ello viene observando en los entrenamientos al jugador diferente. Varios se esfuerzan pero, por ahora solo hay uno que lo tiene apuntado por su gran nivel; Beto Da Silva ','garequita','2019-05-28','libero','../Plugins/noticia/images/planes/garecanoti.jpg','Imagen de gareca','http://www.htmlquick.com/es/reference/tags/input-image.html','RE00000001','DI00000003'),('NOT00000000000000002',NULL,'ADVINCULA TIENE QUE JUGAR EN LA SELECCION','El correcaminos, usain boll no lo para nadie','Ricardo Gareca no quiere llevar a nadie a la Copa América de Brasil de paseo.',NULL,NULL,NULL,'../Plugins/noticia/images/planes/advincula.jpg',NULL,NULL,'RE00000001','DI00000006'),('NOT00000000000000003',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'RE00000001','DI00000004'),('NOT00000000000000004',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'RE00000001','DI00000003'),('NOT00000000000000005',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'RE00000001','DI00000005'),('NOT00000000000000006',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'RE00000001','DI00000003'),('NOT00000000000000007',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'RE00000001','DI00000003'),('NOT00000000000000008',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'RE00000001','DI00000003'),('NOT00000000000000009',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'RE00000001','DI00000003'),('NOT00000000000000010',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'RE00000001','DI00000004'),('NOT00000000000000011',NULL,'ADVINCULA TIENE QUE JUGAR EN LA SELECCION',NULL,NULL,NULL,NULL,NULL,'../Plugins/noticia/images/planes/advincula.jpg',NULL,NULL,'RE00000001','DI00000003');

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

insert  into `redactor`(`idRedactor`,`nombre`,`Apellido`,`direccion`,`user`,`pass`,`email`,`fono`) values ('RE00000001','JUAN ','PEREZ RIOS','AV. LOS FICUS MZ D 34','Juan','123456','juan@elinformativo.com','98463553');

/*Table structure for table `usuarios` */

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `idUsuarios` char(10) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `Apellido` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `user` varchar(45) DEFAULT NULL,
  `pass` char(20) DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL,
  PRIMARY KEY (`idUsuarios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `usuarios` */

insert  into `usuarios`(`idUsuarios`,`nombre`,`Apellido`,`email`,`user`,`pass`,`estado`) values ('USER000001','admin','roa','richard@gmail.com','roa','roa',''),('USER000002','admin','roa','richard@gmail.com','roa','roa','');

/* Procedure structure for procedure `sp_ingresaDiario` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_ingresaDiario` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ingresaDiario`(`idDiario`CHAR(10),`diario`VARCHAR(10),`Descripcion`VARCHAR(150),`idGenero`CHAR(2),logo VARCHAR(100))
BEGIN
INSERT INTO `diario`VALUES (idDiario,diario,Descripcion,idGenero,logo);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_registraUsuario` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_registraUsuario` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_registraUsuario`(`nombre`VARCHAR(50),`Apellido`VARCHAR(100),`email`VARCHAR(100),`user`VARCHAR(45),`pass`VARCHAR(20))
BEGIN
    
	     DECLARE id CHAR(10);
   
		SET id=(SELECT CONCAT('USER',RIGHT(CONCAT('000000',
	MAX(SUBSTRING(`idUsuarios`,5)+1)),6))FROM
	`usuarios`);
	
	IF ISNULL(id) THEN
		BEGIN
			SET id='USER000001';
		END;
	END IF;
		INSERT INTO `usuarios`VALUES (id,`nombre`,`Apellido`,`email`,`user`,pass,1);
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
