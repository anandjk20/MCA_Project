/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.5.20-log : Database - db_taxi
*********************************************************************
Server version : 5.5.20-log
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `db_taxi`;

USE `db_taxi`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `tbl_admin` */

DROP TABLE IF EXISTS `tbl_admin`;

CREATE TABLE `tbl_admin` (
  `Admin_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Admin_Name` varchar(45) NOT NULL,
  `Admin_Password` varchar(45) NOT NULL,
  PRIMARY KEY (`Admin_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_admin` */

insert  into `tbl_admin`(`Admin_Id`,`Admin_Name`,`Admin_Password`) values (1,'admin','admin');

/*Table structure for table `tbl_booking` */

DROP TABLE IF EXISTS `tbl_booking`;

CREATE TABLE `tbl_booking` (
  `Booking_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Customer_Id` varchar(45) NOT NULL,
  `Driver_Id` varchar(45) NOT NULL,
  `Vehicle_Id` varchar(45) NOT NULL,
  `Source` varchar(45) NOT NULL,
  `Destination` varchar(45) NOT NULL,
  `Req_Date` varchar(45) NOT NULL,
  `Booked_Date` varchar(45) NOT NULL,
  `Time` varchar(45) NOT NULL,
  `Status` varchar(45) NOT NULL DEFAULT 'PENDING',
  PRIMARY KEY (`Booking_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_booking` */

insert  into `tbl_booking`(`Booking_Id`,`Customer_Id`,`Driver_Id`,`Vehicle_Id`,`Source`,`Destination`,`Req_Date`,`Booked_Date`,`Time`,`Status`) values (33,'4','9','10','2','1','2021-01-11','2021-01-10','11:31','ACCEPTED'),(34,'3','6','14','2','38','2021-01-28','2021-01-10','23:33','ACCEPTED'),(35,'1','7','15','2','20','2021-01-15','2021-01-10','16:30','ACCEPTED'),(36,'4','11','13','2','38','2021-01-12','2021-01-11','06:15','ACCEPTED'),(38,'10','9','10','2','20','2021-01-22','2021-01-11','10:00','ACCEPTED'),(39,'4','11','13','2','1','2021-01-22','2021-01-22','12:42','ACCEPTED'),(40,'4','10','11','2','5','2021-01-30','2021-01-22','06:00','ACCEPTED'),(41,'12','10','11','2','5','2021-01-30','2021-01-22','06:00','PENDING');

/*Table structure for table `tbl_category` */

DROP TABLE IF EXISTS `tbl_category`;

CREATE TABLE `tbl_category` (
  `Category_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Category_Name` varchar(45) NOT NULL,
  `Category_Description` varchar(45) NOT NULL,
  PRIMARY KEY (`Category_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_category` */

insert  into `tbl_category`(`Category_Id`,`Category_Name`,`Category_Description`) values (1,'Car','four wheeler'),(2,'Auto','Three wheeler'),(3,'Motor bike','Two wheeler'),(4,'Truck','Six wheeler');

/*Table structure for table `tbl_charge` */

DROP TABLE IF EXISTS `tbl_charge`;

CREATE TABLE `tbl_charge` (
  `Charge_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Vehicle_Id` varchar(45) NOT NULL,
  `Basic_Amount` varchar(45) NOT NULL,
  `Basic_km` varchar(45) NOT NULL,
  `Rate_Per_Km` varchar(45) NOT NULL,
  PRIMARY KEY (`Charge_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_charge` */

insert  into `tbl_charge`(`Charge_Id`,`Vehicle_Id`,`Basic_Amount`,`Basic_km`,`Rate_Per_Km`) values (6,'8','100','5','10'),(7,'9','200','10','15'),(8,'10','50','10','10'),(9,'11','300','30','20'),(10,'13','30','2','10'),(11,'14','20','5','10'),(12,'15','250','20','20');

/*Table structure for table `tbl_customer` */

DROP TABLE IF EXISTS `tbl_customer`;

CREATE TABLE `tbl_customer` (
  `Customer_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Customer_Name` varchar(45) NOT NULL,
  `Customer_Address` varchar(45) NOT NULL,
  `Reg_Date` varchar(45) NOT NULL,
  `Customer_Contact` varchar(45) NOT NULL,
  `Customer_Gender` varchar(45) NOT NULL,
  `Customer_Email` varchar(45) NOT NULL,
  `Customer_Password` varchar(45) NOT NULL,
  PRIMARY KEY (`Customer_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_customer` */

insert  into `tbl_customer`(`Customer_Id`,`Customer_Name`,`Customer_Address`,`Reg_Date`,`Customer_Contact`,`Customer_Gender`,`Customer_Email`,`Customer_Password`) values (1,'ARJUN C S','CHOOZHIKUNNATHU MANA ','2021-01-01','9656685085','Male','arjunchoozhi2000@gmail.com','12345'),(2,'ASHWIN ','KUNJANPARAMBIL','2021-01-01','9747856877','Male','ashwin@gmail.com','1234'),(3,'JAISON','JAISON HOUSE','2021-01-02','9982817820','Male','jaison@gmail.com','123'),(4,'BABU','BABU HOUSE','2021-01-03','8789172398','Male','babu@gmail.com','12'),(5,'AROMAL','BALAKRISHNAN HOUSE','2021-01-04','8739739410','Male','aromal@gmail.com','1'),(6,'GEORGE','GEORGE HOUSE','2021-01-04','8739469947','Male','george@gmail.com','123456'),(7,'sindhu','Puthenpurayil','2021-01-05','9898989898','Female','sindhu@gmail.com','sindhu'),(8,'Clinto','Sunny House','2021-01-07','8579948574','Male','clinto@gmail.com','1234567'),(9,'AMAL LORANZ','LORANZ HOUSE','2021-01-08','8895598985','Male','amal@gmail.com','1234567'),(10,'AJAY GEORGE','GEORGE HOUSE','2021-01-09','7834937598','Male','ajay@gmail.com','12345678'),(11,'Alen George','Ellakunnel','2021-01-13','6282885176','Male','alengeorge1999@gmail.com','alen1234'),(12,'githin','pallivathukkal','2021-01-22','1234567890','Male','githin@gmail.com','1234');

/*Table structure for table `tbl_district` */

DROP TABLE IF EXISTS `tbl_district`;

CREATE TABLE `tbl_district` (
  `District_Id` int(11) NOT NULL AUTO_INCREMENT,
  `District_Name` varchar(45) NOT NULL,
  PRIMARY KEY (`District_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_district` */

insert  into `tbl_district`(`District_Id`,`District_Name`) values (1,'Trivandrum'),(2,'Pathanamthitta'),(3,'Kannur'),(4,'Kasargod'),(5,'Alappuzha'),(6,'Kollam'),(7,'Idukki'),(8,'Thrissur'),(9,'Eranakulam'),(10,'Palakkad'),(11,'Malappuram'),(12,'Wayanad'),(13,'Kozhikkod'),(14,'Kottayam');

/*Table structure for table `tbl_driver` */

DROP TABLE IF EXISTS `tbl_driver`;

CREATE TABLE `tbl_driver` (
  `Driver_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Customer_Id` varchar(45) NOT NULL,
  `Driver_Name` varchar(45) NOT NULL,
  `Driver_Address` varchar(45) NOT NULL,
  `Driver_Contact` varchar(45) NOT NULL,
  `Driver_Email` varchar(45) NOT NULL,
  `Driver_Gender` varchar(45) NOT NULL,
  `Driver_Image` varchar(400) NOT NULL,
  `Driver_Licence` varchar(400) NOT NULL,
  `Driver_Dob` varchar(45) NOT NULL,
  PRIMARY KEY (`Driver_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_driver` */

insert  into `tbl_driver`(`Driver_Id`,`Customer_Id`,`Driver_Name`,`Driver_Address`,`Driver_Contact`,`Driver_Email`,`Driver_Gender`,`Driver_Image`,`Driver_Licence`,`Driver_Dob`) values (6,'1','ARJUN C S','CHOOZHIKUNNATHU','9656685085','arjun2000@gmail.com','Male','arjun copy.jpg','licence.JPG','2000-06-20'),(7,'2','AHSWIN','ASHWIN HOUSE ','9869596758','ashwin@gmail.com','Male','42810 Ashwin 2.jpg','licence.JPG','2000-02-23'),(9,'5','AROMAL','BALAKRISHNAN HOUSE','8739739410','aromal@gmail.com','Male','aromal b.jpg','licence.JPG','2000-02-29'),(10,'9','AMAL LORANZ','LORANZ HOUSE','9875983745','amal@gmail.com','Male','profile pic.png','licence.JPG','2000-07-07'),(11,'8','Clinto sunny','Sunny house','9898388923','clinto@gmail.com','Male','profile pic.png','licence.JPG','2000-02-10');

/*Table structure for table `tbl_model` */

DROP TABLE IF EXISTS `tbl_model`;

CREATE TABLE `tbl_model` (
  `Model_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Category_Id` varchar(45) NOT NULL,
  `Model_Name` varchar(45) NOT NULL,
  PRIMARY KEY (`Model_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_model` */

insert  into `tbl_model`(`Model_Id`,`Category_Id`,`Model_Name`) values (1,'1','Alto 800'),(2,'1','Swift'),(3,'1','Ambassador'),(4,'2','Bajaj Auto'),(5,'2','	Piaggio'),(6,'2','TVS'),(7,'3','Tvs apache rtr 200'),(8,'3','Tvs apache rtr 160'),(9,'3','Yamaha R15'),(10,'4','Tata Yodha Pickup'),(11,'4','Ashok Leyland Dost+'),(12,'4','Mahindra Bolero Maxitruck Plus'),(13,'1','Sandro');

/*Table structure for table `tbl_payment` */

DROP TABLE IF EXISTS `tbl_payment`;

CREATE TABLE `tbl_payment` (
  `Payment_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Booking_Id` varchar(45) NOT NULL,
  `Basic_Amount` varchar(45) NOT NULL,
  `Extra_Amount` varchar(45) NOT NULL,
  `Total_Amount` varchar(45) NOT NULL,
  `Status` varchar(45) NOT NULL DEFAULT 'PENDING',
  `Date` varchar(45) NOT NULL DEFAULT 'Not payed',
  PRIMARY KEY (`Payment_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_payment` */

insert  into `tbl_payment`(`Payment_Id`,`Booking_Id`,`Basic_Amount`,`Extra_Amount`,`Total_Amount`,`Status`,`Date`) values (15,'34','20','550','570','PENDING','Not payed'),(16,'35','250','1300','1550','PENDING','Not payed'),(17,'33','50','0','50','ACCEPTED','2021-01-10'),(18,'36','30','580','610','ACCEPTED','2021-01-22'),(19,'38','50','750','800','PENDING','Not payed'),(20,'39','30','30','60','ACCEPTED','2021-01-22'),(21,'40','300','800','1100','PENDING','Not payed');

/*Table structure for table `tbl_route` */

DROP TABLE IF EXISTS `tbl_route`;

CREATE TABLE `tbl_route` (
  `Route_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Source` varchar(45) NOT NULL,
  `Destination` varchar(45) NOT NULL,
  `Distance` varchar(45) NOT NULL,
  PRIMARY KEY (`Route_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_route` */

insert  into `tbl_route`(`Route_Id`,`Source`,`Destination`,`Distance`) values (7,'1','5','60'),(9,'1','4','12'),(10,'1','2','5'),(11,'1','3','8'),(12,'2','1','5'),(13,'2','3','3'),(15,'2','4','18'),(16,'2','5','70'),(17,'3','1','8'),(18,'3','2','3'),(19,'3','4','21'),(20,'3','5','73'),(21,'4','1','12'),(22,'4','2','18'),(23,'4','3','21'),(24,'4','5','80'),(25,'5','1','60'),(27,'5','2','70'),(28,'5','3','73'),(29,'5','4','80'),(31,'1','20','80'),(32,'2','20','85'),(33,'2','6','800'),(34,'2','38','60'),(35,'1','20','80'),(36,'1','6','805'),(37,'1','38','65'),(38,'1','24','70');

/*Table structure for table `tbl_stand` */

DROP TABLE IF EXISTS `tbl_stand`;

CREATE TABLE `tbl_stand` (
  `Stand_Id` int(11) NOT NULL AUTO_INCREMENT,
  `District_Id` varchar(45) NOT NULL,
  `Stand_Name` varchar(45) NOT NULL,
  PRIMARY KEY (`Stand_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_stand` */

insert  into `tbl_stand`(`Stand_Id`,`District_Id`,`Stand_Name`) values (1,'7','Thodupuzha'),(2,'7','Edavetty'),(3,'7','Marthoma'),(4,'7','Vazhithala'),(5,'7','Vagoman'),(6,'1','Neyyattinkara'),(7,'1','Kazhakuttam'),(8,'1','Kanjiramkulam'),(9,'1','Karkkonam'),(10,'2','Sabarimala'),(11,'2','Aranmula'),(12,'3','Thavakkara'),(13,'3','Thaikkavu'),(14,'4','Anangoor'),(15,'4','Nellikunnu'),(16,'5','Kuttanadu'),(17,'5','Pathirappally'),(18,'6','Ramankulangara'),(19,'6','Kallumthazham'),(20,'8','Chalakkudy'),(21,'8','Irinjalakkuda'),(22,'8','Athirappally'),(23,'9','Thiruvaangulam'),(24,'9','Thrippunithura'),(25,'9','Chottanikkara'),(26,'10','Ottappalam'),(27,'10','Pattambi'),(28,'10','Pulappatta'),(29,'11','Manjeri'),(30,'11','Thirur'),(31,'11','Kondotty'),(32,'12','Sulthan Batheri'),(33,'12','Kalpetta'),(34,'12','Mananthavadi'),(35,'13','Ramanattukara'),(36,'13','Perambra'),(37,'13','Koyilandi'),(38,'14','Pala'),(39,'14','Changanassery'),(40,'14','Ettumanoor');

/*Table structure for table `tbl_vehicle` */

DROP TABLE IF EXISTS `tbl_vehicle`;

CREATE TABLE `tbl_vehicle` (
  `Vehicle_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Customer_Id` varchar(45) NOT NULL,
  `Category_Id` varchar(45) NOT NULL,
  `Model_Id` varchar(45) NOT NULL,
  `Stand_Id` varchar(45) NOT NULL,
  `Driver_Id` varchar(45) NOT NULL,
  `Vehicle_Image` varchar(400) NOT NULL,
  `RC_Book` varchar(400) NOT NULL,
  `Insurance_Image` varchar(400) NOT NULL,
  `Vehicle_Status` varchar(45) NOT NULL DEFAULT 'PENDING',
  PRIMARY KEY (`Vehicle_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_vehicle` */

insert  into `tbl_vehicle`(`Vehicle_Id`,`Customer_Id`,`Category_Id`,`Model_Id`,`Stand_Id`,`Driver_Id`,`Vehicle_Image`,`RC_Book`,`Insurance_Image`,`Vehicle_Status`) values (8,'1','1','1','2','6','alto800blue.png','rc.jpg','insurance.png','ACCEPTED'),(9,'2','1','1','2','7','alto800green.png','rc.jpg','insurance.png','ACCEPTED'),(10,'5','1','1','2','9','alto800red.jpg','rc.jpg','insurance.png','ACCEPTED'),(11,'9','1','2','2','10','swiftred.jpeg','rc.jpg','insurance.png','ACCEPTED'),(13,'8','2','5','2','11','autoyellow.jpg','rc.jpg','insurance.png','ACCEPTED'),(14,'1','2','5','2','6','autored.jpg','rc.jpg','insurance.png','ACCEPTED'),(15,'2','1','2','2','7','swiftblack.jpg','rc.jpg','insurance.png','ACCEPTED');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
