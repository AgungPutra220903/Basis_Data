/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 10.4.27-MariaDB : Database - db_toko_upmi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_toko_upmi` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci */;

USE `db_toko_upmi`;

/*Table structure for table `barang` */

DROP TABLE IF EXISTS `barang`;

CREATE TABLE `barang` (
  `ID_BARANG` int(11) NOT NULL,
  `ID_SUP` int(11) DEFAULT NULL,
  `NAMA_BARANG` varchar(20) DEFAULT NULL,
  `HARGA_BELI` decimal(10,0) DEFAULT NULL,
  `HARGA_JUAL` decimal(10,0) DEFAULT NULL,
  `STOK_BARANG` int(11) DEFAULT NULL,
  `STATUS_BARANG` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`ID_BARANG`),
  KEY `FK_BARANG_RELATIONS_SUPPLIER` (`ID_SUP`),
  CONSTRAINT `FK_BARANG_RELATIONS_SUPPLIER` FOREIGN KEY (`ID_SUP`) REFERENCES `supplier` (`ID_SUP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `barang` */

insert  into `barang`(`ID_BARANG`,`ID_SUP`,`NAMA_BARANG`,`HARGA_BELI`,`HARGA_JUAL`,`STOK_BARANG`,`STATUS_BARANG`) values (1,3,'Dancow Balita 150 gr',30000,35000,100,1);
insert  into `barang`(`ID_BARANG`,`ID_SUP`,`NAMA_BARANG`,`HARGA_BELI`,`HARGA_JUAL`,`STOK_BARANG`,`STATUS_BARANG`) values (2,2,'Tanggo 39gr',4000,4500,100,1);
insert  into `barang`(`ID_BARANG`,`ID_SUP`,`NAMA_BARANG`,`HARGA_BELI`,`HARGA_JUAL`,`STOK_BARANG`,`STATUS_BARANG`) values (4,2,'Milo Actigen 150gr',54000,65000,100,1);
insert  into `barang`(`ID_BARANG`,`ID_SUP`,`NAMA_BARANG`,`HARGA_BELI`,`HARGA_JUAL`,`STOK_BARANG`,`STATUS_BARANG`) values (5,1,'Mamy Poko Pant L2',89500,95000,100,1);
insert  into `barang`(`ID_BARANG`,`ID_SUP`,`NAMA_BARANG`,`HARGA_BELI`,`HARGA_JUAL`,`STOK_BARANG`,`STATUS_BARANG`) values (6,1,'Lifebuoy Shampo 180 ',32000,35000,100,1);
insert  into `barang`(`ID_BARANG`,`ID_SUP`,`NAMA_BARANG`,`HARGA_BELI`,`HARGA_JUAL`,`STOK_BARANG`,`STATUS_BARANG`) values (7,3,'Ultra LF 1000ml Cokl',19000,25000,100,1);
insert  into `barang`(`ID_BARANG`,`ID_SUP`,`NAMA_BARANG`,`HARGA_BELI`,`HARGA_JUAL`,`STOK_BARANG`,`STATUS_BARANG`) values (8,3,'Ultra 1000ml Plain',19000,25000,100,1);
insert  into `barang`(`ID_BARANG`,`ID_SUP`,`NAMA_BARANG`,`HARGA_BELI`,`HARGA_JUAL`,`STOK_BARANG`,`STATUS_BARANG`) values (9,2,'Selamat Wfr 60 gr Ba',14000,17000,100,1);
insert  into `barang`(`ID_BARANG`,`ID_SUP`,`NAMA_BARANG`,`HARGA_BELI`,`HARGA_JUAL`,`STOK_BARANG`,`STATUS_BARANG`) values (10,2,'Chiky Ball 12gr K Ay',3500,4200,100,1);

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `ID_CUSTOMER` int(11) NOT NULL,
  `NAMA_CUSTOMER` varchar(40) DEFAULT NULL,
  `NO_KTP` mediumtext DEFAULT NULL,
  `TELP_CUSTOMER` varchar(13) DEFAULT NULL,
  `ALAMAT_CUSTOMER` varchar(100) DEFAULT NULL,
  `POIN` int(11) DEFAULT NULL,
  `STATUS_CUSTOMER` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`ID_CUSTOMER`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `customer` */

insert  into `customer`(`ID_CUSTOMER`,`NAMA_CUSTOMER`,`NO_KTP`,`TELP_CUSTOMER`,`ALAMAT_CUSTOMER`,`POIN`,`STATUS_CUSTOMER`) values (1,'Anton','51040123456789','081805123123','Jl. Ngurah Rai No. 36',0,1);
insert  into `customer`(`ID_CUSTOMER`,`NAMA_CUSTOMER`,`NO_KTP`,`TELP_CUSTOMER`,`ALAMAT_CUSTOMER`,`POIN`,`STATUS_CUSTOMER`) values (2,'Budi','51040404040404','0812273939','Jl. Badak No.3 Renon',0,1);
insert  into `customer`(`ID_CUSTOMER`,`NAMA_CUSTOMER`,`NO_KTP`,`TELP_CUSTOMER`,`ALAMAT_CUSTOMER`,`POIN`,`STATUS_CUSTOMER`) values (3,'Carly','637678278372','0818181818','Jl. Ngawur No 33',10,1);
insert  into `customer`(`ID_CUSTOMER`,`NAMA_CUSTOMER`,`NO_KTP`,`TELP_CUSTOMER`,`ALAMAT_CUSTOMER`,`POIN`,`STATUS_CUSTOMER`) values (4,'Budi','9999999','123123123','Jl. Anggur',0,1);

/*Table structure for table `detil_pembelian` */

DROP TABLE IF EXISTS `detil_pembelian`;

CREATE TABLE `detil_pembelian` (
  `ID_TRX_PEMB` int(11) NOT NULL,
  `ID_BARANG` int(11) NOT NULL,
  `QTY_DETIL_PEM` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_TRX_PEMB`,`ID_BARANG`),
  KEY `FK_DETIL_PE_RELATIONS_BARANG` (`ID_BARANG`),
  CONSTRAINT `FK_DETIL_PE_RELATIONS_BARANG` FOREIGN KEY (`ID_BARANG`) REFERENCES `barang` (`ID_BARANG`),
  CONSTRAINT `FK_DETIL_PE_RELATIONS_TRX_PEMB` FOREIGN KEY (`ID_TRX_PEMB`) REFERENCES `trx_pembelian` (`ID_TRX_PEMB`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `detil_pembelian` */

insert  into `detil_pembelian`(`ID_TRX_PEMB`,`ID_BARANG`,`QTY_DETIL_PEM`) values (1,7,100);

/*Table structure for table `detil_penjualan` */

DROP TABLE IF EXISTS `detil_penjualan`;

CREATE TABLE `detil_penjualan` (
  `ID_TRX_PENJ` int(11) NOT NULL,
  `ID_BARANG` int(11) NOT NULL,
  `QTY_DETIL_PENJ` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_TRX_PENJ`,`ID_BARANG`),
  KEY `ID_BARANG` (`ID_BARANG`),
  CONSTRAINT `FK_DETIL_PE_RELATIONS_TRX_PENJ` FOREIGN KEY (`ID_TRX_PENJ`) REFERENCES `trx_penjualan` (`ID_TRX_PENJ`),
  CONSTRAINT `detil_penjualan_ibfk_1` FOREIGN KEY (`ID_BARANG`) REFERENCES `barang` (`ID_BARANG`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `detil_penjualan` */

insert  into `detil_penjualan`(`ID_TRX_PENJ`,`ID_BARANG`,`QTY_DETIL_PENJ`) values (1,10,2);
insert  into `detil_penjualan`(`ID_TRX_PENJ`,`ID_BARANG`,`QTY_DETIL_PENJ`) values (2,1,1);
insert  into `detil_penjualan`(`ID_TRX_PENJ`,`ID_BARANG`,`QTY_DETIL_PENJ`) values (2,2,2);
insert  into `detil_penjualan`(`ID_TRX_PENJ`,`ID_BARANG`,`QTY_DETIL_PENJ`) values (2,4,1);

/*Table structure for table `supplier` */

DROP TABLE IF EXISTS `supplier`;

CREATE TABLE `supplier` (
  `ID_SUP` int(11) NOT NULL,
  `NAMA_SUP` varchar(40) DEFAULT NULL,
  `ALAMAT_SUP` varchar(100) DEFAULT NULL,
  `CP` varchar(40) DEFAULT NULL,
  `TELP_SUP` varchar(13) DEFAULT NULL,
  `STATUS_SUP` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`ID_SUP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `supplier` */

insert  into `supplier`(`ID_SUP`,`NAMA_SUP`,`ALAMAT_SUP`,`CP`,`TELP_SUP`,`STATUS_SUP`) values (1,'UD. Beras Makmur','Jl. Raya Jatiluwih','Wayan Sri','081222222',1);
insert  into `supplier`(`ID_SUP`,`NAMA_SUP`,`ALAMAT_SUP`,`CP`,`TELP_SUP`,`STATUS_SUP`) values (2,'PT. Bima Sakti','Jl. Tabanan No.9X','Juwita','081736746',1);
insert  into `supplier`(`ID_SUP`,`NAMA_SUP`,`ALAMAT_SUP`,`CP`,`TELP_SUP`,`STATUS_SUP`) values (3,'PT. Susu Bayi Perkasa','Jl. Buluh Indah 99X','Angel','081123344',1);

/*Table structure for table `trx_pembelian` */

DROP TABLE IF EXISTS `trx_pembelian`;

CREATE TABLE `trx_pembelian` (
  `ID_TRX_PEMB` int(11) NOT NULL,
  `ID_USER` int(11) DEFAULT NULL,
  `TGL_TRX_PEMB` timestamp NULL DEFAULT NULL,
  `QTY_PEMB` int(11) DEFAULT NULL,
  `TOTAL_PEMB` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`ID_TRX_PEMB`),
  KEY `ID_KASIR` (`ID_USER`),
  CONSTRAINT `trx_pembelian_ibfk_1` FOREIGN KEY (`ID_USER`) REFERENCES `user` (`ID_USER`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `trx_pembelian` */

insert  into `trx_pembelian`(`ID_TRX_PEMB`,`ID_USER`,`TGL_TRX_PEMB`,`QTY_PEMB`,`TOTAL_PEMB`) values (1,4,'2023-05-04 11:10:27',100,1900000);

/*Table structure for table `trx_penjualan` */

DROP TABLE IF EXISTS `trx_penjualan`;

CREATE TABLE `trx_penjualan` (
  `ID_TRX_PENJ` int(11) NOT NULL,
  `ID_USER` int(11) DEFAULT NULL,
  `ID_CUSTOMER` int(11) DEFAULT NULL,
  `TGL_TRX_PENJ` timestamp NULL DEFAULT NULL,
  `QTY_PENJ` int(11) DEFAULT NULL,
  `TOTAL_PENJ` decimal(10,0) DEFAULT NULL,
  `DISC` decimal(10,0) DEFAULT NULL,
  `TOTAL_BAYAR` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`ID_TRX_PENJ`),
  KEY `ID_CUSTOMER` (`ID_CUSTOMER`),
  KEY `ID_KASIR` (`ID_USER`),
  CONSTRAINT `trx_penjualan_ibfk_1` FOREIGN KEY (`ID_CUSTOMER`) REFERENCES `customer` (`ID_CUSTOMER`),
  CONSTRAINT `trx_penjualan_ibfk_2` FOREIGN KEY (`ID_USER`) REFERENCES `user` (`ID_USER`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `trx_penjualan` */

insert  into `trx_penjualan`(`ID_TRX_PENJ`,`ID_USER`,`ID_CUSTOMER`,`TGL_TRX_PENJ`,`QTY_PENJ`,`TOTAL_PENJ`,`DISC`,`TOTAL_BAYAR`) values (1,2,2,'2023-05-10 11:03:43',2,8400,0,8400);
insert  into `trx_penjualan`(`ID_TRX_PENJ`,`ID_USER`,`ID_CUSTOMER`,`TGL_TRX_PENJ`,`QTY_PENJ`,`TOTAL_PENJ`,`DISC`,`TOTAL_BAYAR`) values (2,2,3,'2023-05-11 11:07:27',4,109000,0,109000);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `ID_USER` int(11) NOT NULL AUTO_INCREMENT,
  `NAMA_USER` varchar(40) DEFAULT NULL,
  `TELP_USER` varchar(13) DEFAULT NULL,
  `ALAMAT_USER` varchar(100) DEFAULT NULL,
  `STATUS_USER` smallint(6) DEFAULT NULL,
  `USERNAME` varchar(20) DEFAULT NULL,
  `PASSWORD` varchar(100) DEFAULT NULL,
  `HASH` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID_USER`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `user` */

insert  into `user`(`ID_USER`,`NAMA_USER`,`TELP_USER`,`ALAMAT_USER`,`STATUS_USER`,`USERNAME`,`PASSWORD`,`HASH`) values (1,'hghg','123456','',1,'','indri','');
insert  into `user`(`ID_USER`,`NAMA_USER`,`TELP_USER`,`ALAMAT_USER`,`STATUS_USER`,`USERNAME`,`PASSWORD`,`HASH`) values (2,'Prabowo','1234','diana',1,'','3a23bb515e06d0e944ff916e79a7775c','');
insert  into `user`(`ID_USER`,`NAMA_USER`,`TELP_USER`,`ALAMAT_USER`,`STATUS_USER`,`USERNAME`,`PASSWORD`,`HASH`) values (4,'Yuni','0818237777','Jl. Marga No. 38X Denpasar Timur',1,'yunita','771393b4e52f91157c7a2dc3ab198037','Admin');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
