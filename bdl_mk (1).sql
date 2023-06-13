/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 10.1.21-MariaDB : Database - bdl_mk
*********************************************************************
*/
SELECT tb_mhs.nama_mhs, tb_mk.nama_mk, tb_nilai.nilai
FROM tb_nilai JOIN tb_mhs
	ON tb_nilai.nim=tb_mhs.nim
	JOIN tb_mk
		ON tb_nilai.kode_mk=tb_mk.kode_mk
WHERE tb_nilai.nilai= (SELECT MAX(nilai) FROM 
tb_nilai WHERE kode_mk =     'mk303'    )     AND tb_nilai .kode_mk    =    'mk303'
/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bdl_mk` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `bdl_mk`;

/*Table structure for table `departemen` */

CREATE TABLE `departemen` (
  `id_dep` varchar(10) DEFAULT NULL,
  `nama_dep` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `departemen` */

insert  into `departemen`(`id_dep`,`nama_dep`) values ('10','Penelitian');
insert  into `departemen`(`id_dep`,`nama_dep`) values ('11','Pemasaran');
insert  into `departemen`(`id_dep`,`nama_dep`) values ('12','SDM');
insert  into `departemen`(`id_dep`,`nama_dep`) values ('13','Keuangan');

/*Table structure for table `employees` */

CREATE TABLE `employees` (
  `employee_id` varchar(10) DEFAULT NULL,
  `first_name` varchar(15) DEFAULT NULL,
  `last_name` varchar(15) DEFAULT NULL,
  `job_id` varchar(10) DEFAULT NULL,
  `departement_id` varchar(10) DEFAULT NULL,
  `salary` double DEFAULT NULL,
  `manager_id` varchar(10) DEFAULT NULL,
  `hire_date` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `employees` */

insert  into `employees`(`employee_id`,`first_name`,`last_name`,`job_id`,`departement_id`,`salary`,`manager_id`,`hire_date`) values ('7369','King','Kong','ad_pres','10',24000,'201','1987-05-17');
insert  into `employees`(`employee_id`,`first_name`,`last_name`,`job_id`,`departement_id`,`salary`,`manager_id`,`hire_date`) values ('7499','van','kochhar','ad_vp','90',17000,'101','1989-09-21');
insert  into `employees`(`employee_id`,`first_name`,`last_name`,`job_id`,`departement_id`,`salary`,`manager_id`,`hire_date`) values ('7521','van','de haan','ad_vp','90',8500,'102','1996-07-23');
insert  into `employees`(`employee_id`,`first_name`,`last_name`,`job_id`,`departement_id`,`salary`,`manager_id`,`hire_date`) values ('7566','mark','hunold','it_prog','60',7800,'102','1969-09-16');
insert  into `employees`(`employee_id`,`first_name`,`last_name`,`job_id`,`departement_id`,`salary`,`manager_id`,`hire_date`) values ('7654','maria','lorents','it_prog','60',13000,'100','1991-05-21');
insert  into `employees`(`employee_id`,`first_name`,`last_name`,`job_id`,`departement_id`,`salary`,`manager_id`,`hire_date`) values ('7896','john','mourgos','st_man','80',7000,'100','1999-02-07');
insert  into `employees`(`employee_id`,`first_name`,`last_name`,`job_id`,`departement_id`,`salary`,`manager_id`,`hire_date`) values ('7114','tom','whalen','ad_vp','85',17000,'101','1990-01-03');
insert  into `employees`(`employee_id`,`first_name`,`last_name`,`job_id`,`departement_id`,`salary`,`manager_id`,`hire_date`) values ('8888','Andi','Sulistyo','ad_prog','60',34000,'100','1970-01-06');
insert  into `employees`(`employee_id`,`first_name`,`last_name`,`job_id`,`departement_id`,`salary`,`manager_id`,`hire_date`) values ('9999','Nurul','Indah','st_prog','75',20000,'100','1993-04-17');

/*Table structure for table `karyawan` */

CREATE TABLE `karyawan` (
  `nama` varchar(20) DEFAULT NULL,
  `id_dep` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `karyawan` */

insert  into `karyawan`(`nama`,`id_dep`) values ('Agus','10');
insert  into `karyawan`(`nama`,`id_dep`) values ('Budi','16');
insert  into `karyawan`(`nama`,`id_dep`) values ('Citra','12');
insert  into `karyawan`(`nama`,`id_dep`) values ('Dani','17');

/*Table structure for table `nilai` */

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

/*Table structure for table `tb_mhs` */

CREATE TABLE `tb_mhs` (
  `nim` varchar(10) NOT NULL,
  `nama_mhs` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`nim`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_mhs` */

insert  into `tb_mhs`(`nim`,`nama_mhs`) values ('141001','Jono');
insert  into `tb_mhs`(`nim`,`nama_mhs`) values ('141002','Taufik');
insert  into `tb_mhs`(`nim`,`nama_mhs`) values ('141003','Rohim');
insert  into `tb_mhs`(`nim`,`nama_mhs`) values ('141004','Rozaq');

/*Table structure for table `tb_mk` */

CREATE TABLE `tb_mk` (
  `kode_mk` varchar(10) NOT NULL,
  `nama_mk` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`kode_mk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_mk` */

insert  into `tb_mk`(`kode_mk`,`nama_mk`) values ('MK302','Algoritma');
insert  into `tb_mk`(`kode_mk`,`nama_mk`) values ('MK303','Basis Data');

/*Table structure for table `tb_nilai` */

CREATE TABLE `tb_nilai` (
  `nim` varchar(10) NOT NULL,
  `kode_mk` varchar(20) NOT NULL,
  `nilai` int(11) DEFAULT NULL,
  PRIMARY KEY (`nim`,`kode_mk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_nilai` */

insert  into `tb_nilai`(`nim`,`kode_mk`,`nilai`) values ('141001','MK302',90);
insert  into `tb_nilai`(`nim`,`kode_mk`,`nilai`) values ('141001','MK303',80);
insert  into `tb_nilai`(`nim`,`kode_mk`,`nilai`) values ('141002','MK302',90);
insert  into `tb_nilai`(`nim`,`kode_mk`,`nilai`) values ('141003','MK303',89);
insert  into `tb_nilai`(`nim`,`kode_mk`,`nilai`) values ('141004','MK302',90);
insert  into `tb_nilai`(`nim`,`kode_mk`,`nilai`) values ('141004','MK303',90);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
