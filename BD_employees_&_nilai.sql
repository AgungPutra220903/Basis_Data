/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 5.7.24 : Database - bbd_2021
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bdl_mk` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `bdl_mk`;

/*Table structure for table `employees` */

DROP TABLE IF EXISTS `employees`;

CREATE TABLE `employees` (
  `employee_id` varchar(10) DEFAULT NULL,
  `first_name` varchar(15) DEFAULT NULL,
  `last_name` varchar(15) DEFAULT NULL,
  `job_id` varchar(10) DEFAULT NULL,
  `departement_id` varchar(10) DEFAULT NULL,
  `salary` varchar(20) DEFAULT NULL,
  `manager_id` varchar(10) DEFAULT NULL,
  `hire_date` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `employees` */

insert  into `employees`(`employee_id`,`first_name`,`last_name`,`job_id`,`departement_id`,`salary`,`manager_id`,`hire_date`) values ('7369','King','Kong','ad_pres','10','24000','201','1987-05-17');
insert  into `employees`(`employee_id`,`first_name`,`last_name`,`job_id`,`departement_id`,`salary`,`manager_id`,`hire_date`) values ('7499','van','kochhar','ad_vp','90','17000','101','1989-09-21');
insert  into `employees`(`employee_id`,`first_name`,`last_name`,`job_id`,`departement_id`,`salary`,`manager_id`,`hire_date`) values ('7521','van','de haan','ad_vp','90','8500','102','1996-07-23');
insert  into `employees`(`employee_id`,`first_name`,`last_name`,`job_id`,`departement_id`,`salary`,`manager_id`,`hire_date`) values ('7566','mark','hunold','it_prog','60','7800','102','0000-00-00');
insert  into `employees`(`employee_id`,`first_name`,`last_name`,`job_id`,`departement_id`,`salary`,`manager_id`,`hire_date`) values ('7654','maria','lorents','it_prog','60','13000','100','1991-05-21');
insert  into `employees`(`employee_id`,`first_name`,`last_name`,`job_id`,`departement_id`,`salary`,`manager_id`,`hire_date`) values ('7896','john','mourgos','st_man','80','7000','100','1999-02-07');
insert  into `employees`(`employee_id`,`first_name`,`last_name`,`job_id`,`departement_id`,`salary`,`manager_id`,`hire_date`) values ('7114','tom','whalen','ad_vp','85','17000','101','1990-01-03');
insert  into `employees`(`employee_id`,`first_name`,`last_name`,`job_id`,`departement_id`,`salary`,`manager_id`,`hire_date`) values ('8888','Andi','Sulistyo','ad_prog','60','34000','100','0000-00-00');
insert  into `employees`(`employee_id`,`first_name`,`last_name`,`job_id`,`departement_id`,`salary`,`manager_id`,`hire_date`) values ('9999','Nurul','Indah','st_prog','75','20000','100','1993-04-17');

/*Table structure for table `nilai` */

DROP TABLE IF EXISTS `nilai`;

CREATE TABLE `nilai` (
  `nim` varchar(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `matkul` varchar(20) NOT NULL,
  `nilai` int(3) NOT NULL,
  PRIMARY KEY (`nim`,`nama`,`matkul`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `nilai` */

insert  into `nilai`(`nim`,`nama`,`matkul`,`nilai`) values ('0911500101','ADI','ALGORITMA',90);
insert  into `nilai`(`nim`,`nama`,`matkul`,`nilai`) values ('0911500101','ADI','KALKULUS',65);
insert  into `nilai`(`nim`,`nama`,`matkul`,`nilai`) values ('0911500101','ADI','PBO',90);
insert  into `nilai`(`nim`,`nama`,`matkul`,`nilai`) values ('0911500101','ADI','PEMROGRAMAN WEB',90);
insert  into `nilai`(`nim`,`nama`,`matkul`,`nilai`) values ('0911500101','ADI','PTI',75);
insert  into `nilai`(`nim`,`nama`,`matkul`,`nilai`) values ('0911500102','IDA','ALGORITMA',80);
insert  into `nilai`(`nim`,`nama`,`matkul`,`nilai`) values ('0911500102','IDA','KALKULUS',70);
insert  into `nilai`(`nim`,`nama`,`matkul`,`nilai`) values ('0911500102','IDA','PBO',80);
insert  into `nilai`(`nim`,`nama`,`matkul`,`nilai`) values ('0911500102','IDA','PEMROGRAMAN WEB',85);
insert  into `nilai`(`nim`,`nama`,`matkul`,`nilai`) values ('0911500102','IDA','PTI',90);
insert  into `nilai`(`nim`,`nama`,`matkul`,`nilai`) values ('0911500103','EDI','ALGORITMA',85);
insert  into `nilai`(`nim`,`nama`,`matkul`,`nilai`) values ('0911500103','EDI','KALKULUS',60);
insert  into `nilai`(`nim`,`nama`,`matkul`,`nilai`) values ('0911500103','EDI','PBO',85);
insert  into `nilai`(`nim`,`nama`,`matkul`,`nilai`) values ('0911500103','EDI','PEMROGRAMAN WEB',85);
insert  into `nilai`(`nim`,`nama`,`matkul`,`nilai`) values ('0911500103','EDI','PTI',88);
insert  into `nilai`(`nim`,`nama`,`matkul`,`nilai`) values ('0911500104','INA','ALGORITMA',75);
insert  into `nilai`(`nim`,`nama`,`matkul`,`nilai`) values ('0911500104','INA','KALKULUS',50);
insert  into `nilai`(`nim`,`nama`,`matkul`,`nilai`) values ('0911500104','INA','PBO',75);
insert  into `nilai`(`nim`,`nama`,`matkul`,`nilai`) values ('0911500104','INA','PEMROGRAMAN WEB',80);
insert  into `nilai`(`nim`,`nama`,`matkul`,`nilai`) values ('0911500104','INA','PTI',72);
insert  into `nilai`(`nim`,`nama`,`matkul`,`nilai`) values ('0911500105','ANI','ALGORITMA',92);
insert  into `nilai`(`nim`,`nama`,`matkul`,`nilai`) values ('0911500105','ANI','KALKULUS',68);
insert  into `nilai`(`nim`,`nama`,`matkul`,`nilai`) values ('0911500105','ANI','PBO',80);
insert  into `nilai`(`nim`,`nama`,`matkul`,`nilai`) values ('0911500105','ANI','PEMROGRAMAN WEB',92);
insert  into `nilai`(`nim`,`nama`,`matkul`,`nilai`) values ('0911500105','ANI','PTI',90);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
