/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 10.4.25-MariaDB : Database - mahasiswa
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mahasiswa` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `mahasiswa`;

/*Table structure for table `detil_mk` */

DROP TABLE IF EXISTS `detil_mk`;

CREATE TABLE `detil_mk` (
  `nim` varchar(10) DEFAULT NULL,
  `kode_mk` varchar(255) DEFAULT NULL,
  `nilai` varchar(5) DEFAULT NULL,
  KEY `nim` (`nim`),
  KEY `kode_mk` (`kode_mk`),
  CONSTRAINT `detil_mk_ibfk_1` FOREIGN KEY (`nim`) REFERENCES `tbl_mhs` (`nim`),
  CONSTRAINT `detil_mk_ibfk_2` FOREIGN KEY (`kode_mk`) REFERENCES `tbl_mk` (`kode_mk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `detil_mk` */

insert  into `detil_mk`(`nim`,`kode_mk`,`nilai`) values ('A01','MK01','3');
insert  into `detil_mk`(`nim`,`kode_mk`,`nilai`) values ('A01','MK02','4');
insert  into `detil_mk`(`nim`,`kode_mk`,`nilai`) values ('A01','MK03','2');
insert  into `detil_mk`(`nim`,`kode_mk`,`nilai`) values ('A02','MK02','3');
insert  into `detil_mk`(`nim`,`kode_mk`,`nilai`) values ('A02','MK03','2');
insert  into `detil_mk`(`nim`,`kode_mk`,`nilai`) values ('A03','MK01','4');
insert  into `detil_mk`(`nim`,`kode_mk`,`nilai`) values ('A03','MK03','3');
insert  into `detil_mk`(`nim`,`kode_mk`,`nilai`) values ('A04','MK01','3');
insert  into `detil_mk`(`nim`,`kode_mk`,`nilai`) values ('A04','MK02','4');
insert  into `detil_mk`(`nim`,`kode_mk`,`nilai`) values ('A05','MK02','2');
insert  into `detil_mk`(`nim`,`kode_mk`,`nilai`) values ('A05','MK03','2');

/*Table structure for table `tbl_mhs` */

DROP TABLE IF EXISTS `tbl_mhs`;

CREATE TABLE `tbl_mhs` (
  `nim` varchar(10) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`nim`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_mhs` */

insert  into `tbl_mhs`(`nim`,`nama`,`alamat`) values ('A01','Viyella','Jl. Rengas No.21');
insert  into `tbl_mhs`(`nim`,`nama`,`alamat`) values ('A02','Merry ','Jl. Cemara No.1');
insert  into `tbl_mhs`(`nim`,`nama`,`alamat`) values ('A03','Rahma ','Jl. Cemara No.4');
insert  into `tbl_mhs`(`nim`,`nama`,`alamat`) values ('A04','Dini','Jl. Nusa Indah No.7');
insert  into `tbl_mhs`(`nim`,`nama`,`alamat`) values ('A05','Rini','Jl. Meranti No.9');

/*Table structure for table `tbl_mk` */

DROP TABLE IF EXISTS `tbl_mk`;

CREATE TABLE `tbl_mk` (
  `kode_mk` varchar(10) NOT NULL,
  `nama_mk` varchar(255) DEFAULT NULL,
  `sks` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`kode_mk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_mk` */

insert  into `tbl_mk`(`kode_mk`,`nama_mk`,`sks`) values ('MK01','Kalkulus','3');
insert  into `tbl_mk`(`kode_mk`,`nama_mk`,`sks`) values ('MK02','Giometri','2');
insert  into `tbl_mk`(`kode_mk`,`nama_mk`,`sks`) values ('MK03','Aljabar','3');
insert  into `tbl_mk`(`kode_mk`,`nama_mk`,`sks`) values ('MK04','Basis Data','3');
insert  into `tbl_mk`(`kode_mk`,`nama_mk`,`sks`) values ('MK05','Algoritma','3');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
