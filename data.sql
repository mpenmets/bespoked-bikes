-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: localhost    Database: bespoked_bikes
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customer` (
  `id` mediumint NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(250) NOT NULL,
  `Last_Name` varchar(250) NOT NULL,
  `Address` varchar(250) NOT NULL,
  `Phone` varchar(30) NOT NULL,
  `Start_Date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES (1,'Olivia','Gardner','862 Mcbride Lodge\nKeithport, LA 27408','001-797-975-1468x279','2009-05-29'),(2,'Lauren','Chase','61448 Parrish Station Apt. 159\nPatelhaven, NH 07184','+1-416-319-2367','2003-04-14'),(3,'Kevin','Garcia','2724 Gonzalez Lock\nWilliamhaven, WA 15734','001-872-181-0978','1998-06-22'),(4,'Crystal','Flores','279 Daniel Ridges\nWest Meredith, NY 64046','001-546-773-4450x612','2014-01-07'),(5,'Christine','Perkins','344 Rodriguez Valleys\nMarytown, CT 92672','001-194-991-4107x0770','2013-09-07'),(6,'Debra','Cooper','141 Kurt Harbor\nMillerside, CO 15095','001-777-528-7896x19472','1997-03-09'),(7,'Richard','Walsh','10559 Bradley Loop Suite 747\nNorth Lindsey, WA 52246','183.166.5207','2021-05-29'),(8,'John','Goodman','99792 Michael Flats Apt. 003\nJacobbury, AR 69037','7656961823','1997-11-07'),(9,'Ebony','Knox','176 Swanson Island\nNew Jim, MN 02881','9966381469','1993-02-08'),(10,'Martha','Marshall','51471 Brown Lights\nLake Frankshire, GA 75543','001-426-341-4191x58929','2013-06-16'),(11,'Kendra','Allen','17992 Gabriel Heights Apt. 121\nEast Manuelstad, CT 21896','524-726-1767','2020-06-06'),(12,'Angela','Harrison','593 Renee Burgs Suite 999\nMillerton, NM 72321','8234573925','2000-01-08'),(13,'Ronnie','Becker','440 Montes Rapid\nNicolebury, KS 20532','397.677.9663x83523','1993-05-20'),(14,'Savannah','Clark','0748 Newman Lake\nCaitlynport, NE 53309','(646)800-9512x95249','2011-05-06'),(15,'John','Brooks','USNV Fox\nFPO AA 98237','(080)645-9363','1999-11-06');
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Discount`
--

DROP TABLE IF EXISTS `Discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Discount` (
  `Product` mediumint NOT NULL,
  `Begin_Date` date NOT NULL,
  `End_Date` date NOT NULL,
  `Discount_Percentage` double NOT NULL,
  KEY `Product` (`Product`),
  CONSTRAINT `Discount_ibfk_1` FOREIGN KEY (`Product`) REFERENCES `Product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Discount`
--

LOCK TABLES `Discount` WRITE;
/*!40000 ALTER TABLE `Discount` DISABLE KEYS */;
INSERT INTO `Discount` VALUES (76,'2021-07-04','2022-07-04',73.2),(5,'1998-08-14','1999-08-14',73.52),(67,'2011-03-05','2012-03-05',32.75),(88,'2010-02-18','2011-02-18',13.08),(31,'2011-04-15','2012-04-15',45.87),(81,'1993-07-23','1994-07-23',77.71),(63,'2004-10-07','2005-10-07',44.21),(77,'2014-05-22','2015-05-22',26.07),(37,'2004-06-07','2005-06-07',91.22),(36,'2000-02-06','2001-02-06',29.32),(64,'2005-03-15','2006-03-15',46.92),(72,'1992-10-03','1993-10-03',37.76),(35,'2018-06-01','2019-06-01',29.22),(75,'2020-03-01','2021-03-01',33.43),(86,'1996-08-26','1997-08-26',46.36),(35,'2005-01-17','2006-01-17',87.06),(59,'2020-03-12','2021-03-12',87.11),(97,'2015-07-26','2016-07-26',51.05),(46,'2006-01-11','2007-01-11',33.25),(27,'2014-11-01','2015-11-01',57.29);
/*!40000 ALTER TABLE `Discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Product`
--

DROP TABLE IF EXISTS `Product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Product` (
  `id` mediumint NOT NULL AUTO_INCREMENT,
  `Name` varchar(250) NOT NULL,
  `Manufacturer` varchar(250) NOT NULL,
  `Style` varchar(250) NOT NULL,
  `Purchase_Price` double NOT NULL,
  `Sale_Price` double NOT NULL,
  `Qty_On_Hand` tinyint NOT NULL,
  `Commission_Percentage` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Product`
--

LOCK TABLES `Product` WRITE;
/*!40000 ALTER TABLE `Product` DISABLE KEYS */;
INSERT INTO `Product` VALUES (3,'enable user-centric networks','Harris, Palmer and Harrington','',362.94,891.31,63,84),(4,'deploy enterprise e-services','Davis-Cox','',767.68,961.89,74,76),(5,'deploy robust systems','Holt, Sanchez and Wagner','',940.21,912.39,32,29),(6,'generate virtual functionalities','Graham, Rangel and Clark','',949.37,904.44,47,20),(7,'orchestrate B2C systems','Leblanc, Delacruz and Schroeder','',136.97,240.65,83,51),(8,'whiteboard proactive systems','Booker-Cummings','',661.75,201.58,25,100),(9,'enhance seamless web-readiness','Perkins, French and Robinson','',447.57,975.8,0,8),(10,'engineer efficient relationships','Lee Ltd','',867.83,100.25,91,60),(11,'revolutionize granular users','Martin LLC','',79.7,492.1,60,20),(12,'architect front-end convergence','Bryant-Vaughn','',593.23,564.97,96,33),(13,'revolutionize granular web-readiness','Smith, Smith and Meyers','',63.42,819.19,45,62),(14,'architect strategic convergence','Google LLC','',384.46,621.29,69,23),(15,'deliver frictionless niches','Lopez and Sons','',999.61,777.58,19,13),(16,'evolve open-source solutions','Roberts LLC','',885.59,612.2,52,93),(17,'seize bleeding-edge markets','Bonilla, Reed and Anderson','',956.96,713.38,25,32),(18,'innovate impactful eyeballs','Ruiz LLC','',146.92,313.6,22,35),(19,'drive vertical e-commerce','Spears, Faulkner and Snyder','',179.15,615.87,29,3),(20,'redefine B2B functionalities','Martin-Middleton','',870.9,699.16,47,9),(21,'redefine robust models','Williams Ltd','',572.64,210.77,15,40),(22,'unleash B2B functionalities','Smith-Crawford','',583.59,300.2,18,25),(23,'extend synergistic schemas','Bennett LLC','',709.58,424.67,54,28),(24,'maximize bleeding-edge convergence','Mcguire-Robinson','',726.54,934.78,53,46),(25,'matrix dynamic content','Price Inc','',237.17,968.99,45,16),(26,'evolve 24/7 models','Hancock, Bailey and Clark','',163.64,760.36,38,25),(27,'redefine cross-platform synergies','Cook, Jackson and Hoffman','',270.39,594.36,18,88),(28,'facilitate rich convergence','Smith-Swanson','',743.31,739.18,99,50),(29,'e-enable frictionless content','Chapman-Cook','',790.98,415.12,78,52),(30,'benchmark proactive technologies','Bell and Sons','',30.55,30.27,36,28),(31,'generate granular ROI','Zamora Group','',555.91,503.16,83,41),(32,'utilize granular supply-chains','Michael, Johnson and Dalton','',791.03,555.08,69,61),(33,'utilize robust vortals','Massey Group','',986.57,206,81,81),(34,'grow dynamic convergence','Perry PLC','',747.44,318.8,24,29),(35,'optimize 24/365 users','Stanley-Archer','',461.16,255.09,77,77),(36,'seize vertical partnerships','Humphrey Inc','',423.47,358.65,68,61),(37,'deploy value-added deliverables','Nguyen, Diaz and Harrison','',970.66,400.34,95,19),(38,'streamline viral interfaces','Patel Ltd','',547.09,75.24,13,54),(39,'generate out-of-the-box markets','Davis and Sons','',580.94,625.68,62,86),(40,'enable efficient e-commerce','Smith, White and Nichols','',493.93,226.98,57,64),(41,'grow revolutionary deliverables','Molina-Aguilar','',317.29,195.82,9,80),(42,'e-enable sticky eyeballs','Shaw Ltd','',422.75,685.59,85,58),(43,'synthesize B2B methodologies','Jackson, Khan and Wiley','',385.41,634.28,42,50),(44,'evolve back-end experiences','Bailey, Hardy and Lopez','',103.82,455.77,51,68),(45,'reinvent end-to-end portals','Medina, Hill and Lucas','',475.18,993.47,91,56),(46,'streamline global networks','Dickerson and Sons','',759.92,657.02,1,71),(47,'reinvent rich portals','Hess-Reyes','',298.86,511.42,44,65),(48,'disintermediate collaborative users','Barker Inc','',23.54,614.16,78,36),(49,'deploy B2B supply-chains','Padilla-Wilson','',29.5,659.82,80,9),(50,'engage granular communities','Nelson, Crosby and Rivera','',833.33,943.34,0,35),(51,'generate synergistic experiences','Wilson PLC','',479.44,33.49,27,41),(52,'expedite end-to-end channels','Taylor Group','',590.42,353.95,96,95),(53,'generate 24/365 users','Nelson, Harmon and Atkinson','',494.51,955.54,11,33),(54,'facilitate cross-platform initiatives','King, Greene and Nolan','',46.06,927.25,33,32),(55,'utilize open-source initiatives','Hines Ltd','',258.13,892.35,40,12),(56,'morph clicks-and-mortar methodologies','Perez, Hill and Hernandez','',865.88,943.63,21,76),(57,'productize global metrics','Maynard Inc','',234.34,861.43,39,98),(58,'unleash end-to-end niches','Miller Inc','',789.54,237.35,59,32),(59,'revolutionize leading-edge paradigms','Kramer-Walker','',656.81,341.86,99,6),(60,'empower distributed platforms','Nelson Inc','',769.52,673.03,39,65),(61,'innovate extensible systems','Henry-Hunt','',249.99,832.55,80,75),(62,'streamline real-time web-readiness','Miller, Cook and Ward','',951.41,156.26,94,20),(63,'embrace e-business supply-chains','Bowers-Arellano','',971.96,285.64,50,64),(64,'enable mission-critical infrastructures','Moreno, Wilson and Frank','',961.85,487.32,18,64),(65,'reinvent revolutionary action-items','Torres Ltd','',96.83,194.6,76,59),(66,'incentivize synergistic niches','Kim, Norton and Mendez','',902.89,346.23,41,0),(67,'enhance interactive channels','Smith, Mitchell and Peterson','',675.12,302.43,85,38),(68,'orchestrate dynamic supply-chains','Burke-Mckay','',579.31,942.2,50,7),(69,'re-contextualize ubiquitous e-markets','Oconnor Group','',448.39,345.18,72,46),(70,'reinvent magnetic portals','Klein-Williams','',703.67,156.83,83,61),(71,'implement 24/365 content','Nguyen-Cortez','',661.45,995.93,2,64),(72,'reinvent wireless eyeballs','Wallace-Jackson','',991.07,488.79,29,42),(73,'engage end-to-end experiences','Brown Group','',767.08,60.03,43,93),(74,'enhance mission-critical methodologies','Davis-Gallagher','',623.3,166.97,33,58),(75,'synthesize turn-key synergies','Brown-Roberts','',453.44,6.36,46,96),(76,'scale interactive schemas','Cortez-Moody','',686.02,499.66,67,9),(77,'redefine innovative e-tailers','Wheeler-Roberts','',595.41,318.54,97,76),(78,'deliver wireless vortals','Walker, Cook and Thompson','',962.73,911.55,60,72),(79,'integrate interactive e-commerce','Boyer-Thomas','',595.98,212.05,46,53),(80,'enable user-centric content','Wagner and Sons','',39.04,318.11,8,23),(81,'facilitate cross-media communities','Smith, Lam and Pitts','',641.76,82.67,3,41),(82,'reinvent open-source models','Miller PLC','',250.03,434.83,75,30),(83,'harness frictionless users','Hall and Sons','',902.94,160.22,82,32),(84,'syndicate out-of-the-box solutions','James, Lee and Cole','',466.54,649.34,57,74),(85,'drive e-business convergence','Banks and Sons','',70.31,431.98,88,92),(86,'whiteboard bricks-and-clicks networks','Wilson-Wu','',418.89,113.93,95,7),(87,'target killer relationships','Smith, Hodges and Parker','',41.53,415.12,41,97),(88,'engage integrated supply-chains','Novak, Wilkerson and Rodgers','',212.31,148.02,70,90),(89,'unleash efficient action-items','Raymond, Perkins and Johnson','',662.76,525.89,72,37),(90,'re-contextualize seamless functionalities','James PLC','',858.34,741.04,88,34),(91,'seize scalable applications','Henry Group','',496.6,272.3,12,42),(92,'facilitate revolutionary interfaces','Romero-Farley','',816.6,603.71,58,5),(93,'brand cross-media mindshare','Moore-Calderon','',227.96,439.27,86,68),(94,'streamline back-end users','Marshall, Johnson and Matthews','',667.22,852.16,82,90),(95,'seize clicks-and-mortar mindshare','Osborne Ltd','',485.37,908.75,24,29),(96,'strategize open-source methodologies','Villarreal-Christensen','',172.32,97.32,4,8),(97,'embrace extensible experiences','Mcgrath, Riley and Byrd','',865.51,262.2,90,96),(98,'transition extensible communities','Coleman Inc','',624.57,267.48,44,24),(99,'syndicate best-of-breed deliverables','Mejia, Bean and Phillips','',983.61,485.96,3,24),(100,'harness granular methodologies','Todd and Sons','',415.12,32.42,38,22),(101,'redefine cross-platform applications','Clements-Sanders','',142.62,657.94,3,4),(102,'unleash cross-platform mindshare','Roberts PLC','',833.3,974.55,37,2),(103,'iterate compelling bandwidth','King, Fleming and Washington','',982.17,416.19,70,100),(104,'leverage 24/7 functionalities','Russell and Sons','',233.67,135.97,45,82),(105,'enable out-of-the-box action-items','Bush-Campbell','',814.32,537.04,52,0),(106,'extend interactive bandwidth','Bradley, Davis and Garza','',14.27,520.83,39,36),(107,'syndicate B2C systems','Flynn, Brown and Cruz','',268.31,181.65,81,16),(108,'maximize out-of-the-box models','Hansen, Love and Martin','',804.13,471.15,4,29),(109,'synergize frictionless info-mediaries','Hurley, Garcia and Wilson','',410.15,190.39,67,29),(110,'empower efficient communities','Smith-Diaz','',230.54,346.2,14,48),(111,'empower robust paradigms','Stuart, Ward and Williams','',990.96,895.07,95,57),(112,'morph frictionless eyeballs','Torres, Ruiz and Bryant','',562.06,389.85,66,97),(113,'harness intuitive channels','Blackburn, Cooper and White','',911.51,159.39,36,70),(114,'leverage out-of-the-box e-tailers','Oconnell-Willis','',273.05,208.79,25,62),(115,'scale viral web services','Torres, Lam and Anderson','',719.94,471.28,49,41),(116,'unleash user-centric methodologies','Bowen-White','',501.95,580.94,59,35),(117,'engineer cross-platform bandwidth','Mcconnell-Rogers','',234.3,486.3,54,85),(118,'facilitate e-business niches','Ray Inc','',881.1,477.62,77,32),(119,'embrace seamless vortals','Lee, Mendoza and Montes','',26,401.15,44,61),(120,'monetize impactful e-commerce','Anderson-Wong','',524.92,304.4,71,16),(121,'benchmark viral solutions','Hart and Sons','',121.82,617.15,10,9),(122,'maximize next-generation infrastructures','Moore-Miller','',264.28,103.44,59,22),(123,'benchmark collaborative bandwidth','Gonzalez, Henry and Petersen','',643.19,609.06,39,55),(124,'synthesize rich convergence','Compton, Johnson and Sanders','',819.74,84.97,50,7),(125,'transform user-centric users','Horne-Rice','',664.27,500.73,8,61),(126,'architect mission-critical relationships','Stanley, Juarez and Humphrey','',32.78,511.74,11,10),(127,'harness strategic web services','Peters, Wilson and Hall','',458.36,680.22,17,87),(128,'brand strategic initiatives','Smith-Parker','',375.59,512.12,48,67),(129,'exploit e-business e-commerce','Duarte Ltd','',37.03,299.97,38,32),(130,'scale sticky paradigms','Roberts-Ali','',209.96,210.47,33,48),(131,'revolutionize dot-com functionalities','Cooper, Davis and Thompson','',196.86,67.2,68,75),(132,'transition B2C deliverables','Lopez Inc','',559.6,46.08,55,85),(133,'e-enable distributed platforms','Paul, Day and Dominguez','',688.57,510.42,16,95),(134,'transform next-generation niches','Anderson-Perez','',194.09,41.59,61,24),(135,'matrix transparent web-readiness','Robinson, Maldonado and Quinn','',566.97,987.4,30,12),(136,'productize virtual e-markets','Steele-Morales','',25.77,434.2,93,72),(137,'engineer value-added networks','Collins, Dudley and Nelson','',408.48,618.95,53,11),(138,'incubate strategic info-mediaries','Gutierrez, Rodriguez and Fox','',883.02,532.37,98,75),(139,'facilitate end-to-end bandwidth','Shaw Ltd','',45.12,107.16,36,29),(140,'maximize front-end markets','Henderson PLC','',865.88,411.58,3,37),(141,'re-contextualize clicks-and-mortar supply-chains','Williams PLC','',491.28,484.95,32,55),(142,'engage compelling eyeballs','Chambers-Martinez','',631.04,276,81,6),(143,'morph integrated deliverables','Mitchell PLC','',760.88,835.29,9,78),(144,'implement robust paradigms','Nelson, Hall and Williams','',274.27,658.2,63,22),(145,'re-intermediate distributed niches','Clark and Sons','',570.79,732.19,71,57),(146,'scale best-of-breed users','Rose, Miller and Sims','',574.18,659.41,42,75),(147,'transition compelling niches','Day and Sons','',762.66,214.18,28,14),(148,'generate web-enabled web-readiness','Woods Inc','',169.9,808.72,98,6),(149,'aggregate sticky e-commerce','Higgins, Swanson and Gallegos','',500.92,288.14,25,23),(150,'matrix enterprise channels','Landry PLC','',209.24,896.23,30,84),(151,'incentivize out-of-the-box markets','Walker, Martin and Duran','',79.53,716.66,24,99),(152,'harness value-added initiatives','Garza, Thompson and Miller','',256.89,335.49,44,2),(153,'orchestrate ubiquitous web services','Harper-Aguirre','',169.77,122.28,63,40),(154,'productize next-generation users','Parker-Caldwell','',98.98,501.83,25,86),(155,'grow enterprise synergies','Jimenez-Walsh','',111.21,472.22,87,33),(156,'target frictionless functionalities','Solis PLC','',764.01,249.04,66,58),(157,'architect frictionless niches','Howard-Robbins','',185.55,112.3,18,83),(158,'architect sticky solutions','Bell Group','',971.41,83.55,41,26),(159,'morph global eyeballs','Little, Cole and Cunningham','',756.03,12.45,8,32),(160,'implement holistic vortals','Allen-Brown','',164.9,785.29,91,71),(161,'integrate cutting-edge networks','Fernandez Group','',576.71,244.27,65,9),(162,'transition efficient functionalities','Brady, Phelps and Wade','',689.07,771.68,52,39),(163,'repurpose customized content','Wilson, Williams and Richardson','',328.92,811.89,97,24),(164,'innovate out-of-the-box partnerships','Burke, Warner and Ayala','',936.47,456.19,82,4),(165,'leverage bricks-and-clicks content','Shepard PLC','',944.06,608.81,100,56),(166,'synthesize compelling architectures','Martinez-Henry','',546.6,115.15,35,50),(167,'benchmark cross-platform relationships','Richardson, Harrington and Hampton','',970.06,977.52,84,93),(168,'re-intermediate impactful experiences','Hawkins-Wilson','',285.21,267.68,90,96),(169,'enable value-added channels','Smith Group','',423.18,273.11,77,71),(170,'morph integrated technologies','Hancock and Sons','',967.13,25.41,24,36),(171,'integrate B2C e-tailers','Harmon LLC','',100.99,871.23,79,39),(172,'redefine rich e-business','Smith-Cooke','',516.57,968.4,59,31),(173,'orchestrate holistic metrics','Davila Inc','',493.03,284.51,58,22),(174,'synergize bricks-and-clicks channels','Smith PLC','',674.38,487.11,94,20),(175,'synergize customized deliverables','Boyd, Carroll and Stewart','',851.54,63.79,11,26),(176,'leverage vertical architectures','Miller PLC','',956.68,257.87,63,82),(177,'enhance one-to-one solutions','Kennedy and Sons','',140.13,68.39,86,98),(178,'morph transparent e-markets','Gillespie-Lindsey','',465.79,735.96,86,37),(179,'aggregate impactful bandwidth','Lane Ltd','',436.44,773.71,59,46),(180,'transform open-source channels','Robinson Inc','',335.02,881.11,13,67),(181,'grow mission-critical e-commerce','Tucker, Wilson and Alvarez','',943.4,764.58,27,3),(182,'benchmark revolutionary e-markets','Cooke and Sons','',545.92,503.88,66,69),(183,'synergize ubiquitous metrics','Hendricks LLC','',523.72,700.85,30,52),(184,'aggregate bricks-and-clicks interfaces','Werner, Chavez and Davis','',409.79,295.21,39,100),(185,'embrace cutting-edge schemas','Steele Group','',540.97,940.27,46,32),(186,'mesh vertical e-markets','Cook, Barrera and Wiley','',635.01,485.02,13,22),(187,'brand best-of-breed mindshare','James LLC','',293.77,470.33,91,37),(188,'revolutionize one-to-one ROI','Thompson-Leblanc','',65.83,535.26,25,94),(189,'harness collaborative synergies','Mills, Rogers and Boyd','',337.01,384.57,92,50),(190,'benchmark leading-edge interfaces','Guzman Inc','',15.82,481.98,9,45),(191,'revolutionize revolutionary schemas','Price, Dickson and Li','',396.97,893.14,58,11),(192,'cultivate dynamic experiences','Bryant-Hansen','',164.25,38.34,20,5),(193,'strategize customized communities','Phillips PLC','',370.43,254.04,47,47),(194,'engage back-end schemas','Lawrence Inc','',103.14,97.9,91,84),(195,'deliver 24/7 niches','Stone, Walker and Carney','',899.25,615.2,48,97),(196,'utilize enterprise synergies','Davis, Miller and Brown','',892.46,656.97,39,87),(197,'redefine out-of-the-box deliverables','Cruz-Jimenez','',634.36,883.65,24,87),(198,'matrix compelling synergies','White, Campbell and Carlson','',326.33,98.02,68,58),(199,'morph virtual mindshare','Vazquez PLC','',257.16,154.18,9,44),(200,'benchmark customized synergies','Dawson-Hampton','',620.54,438.09,5,66),(201,'deploy cutting-edge platforms','Kim-Sheppard','',467.15,330.96,71,61),(202,'optimize sticky interfaces','Hernandez, Williamson and Hill','',350.66,100.07,47,58),(203,'engineer holistic initiatives','Henderson Inc','',461.57,451,20,65);
/*!40000 ALTER TABLE `Product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sales`
--

DROP TABLE IF EXISTS `Sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Sales` (
  `Product` mediumint NOT NULL,
  `Salesperson` mediumint NOT NULL,
  `Customer` mediumint NOT NULL,
  `Sales_Date` date NOT NULL,
  KEY `Product` (`Product`),
  KEY `Salesperson` (`Salesperson`),
  KEY `Customer` (`Customer`),
  CONSTRAINT `Sales_ibfk_1` FOREIGN KEY (`Product`) REFERENCES `Product` (`id`),
  CONSTRAINT `Sales_ibfk_2` FOREIGN KEY (`Salesperson`) REFERENCES `SalesPerson` (`id`),
  CONSTRAINT `Sales_ibfk_3` FOREIGN KEY (`Customer`) REFERENCES `Customer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sales`
--

LOCK TABLES `Sales` WRITE;
/*!40000 ALTER TABLE `Sales` DISABLE KEYS */;
INSERT INTO `Sales` VALUES (91,5,13,'2005-03-31'),(49,2,9,'2004-02-22'),(49,4,6,'2004-09-04'),(26,14,12,'2018-12-25'),(96,13,13,'1996-06-02'),(56,12,5,'1999-10-25'),(14,1,5,'1999-03-23'),(40,2,2,'2008-07-23'),(22,13,12,'2012-01-21'),(95,2,10,'2020-05-11'),(71,2,3,'2013-12-16'),(12,3,4,'2011-01-30'),(65,7,3,'1999-04-19'),(38,14,5,'1992-08-22'),(87,10,7,'2000-06-15'),(5,14,13,'2004-04-07'),(29,10,12,'2015-12-30'),(30,4,11,'1999-08-09'),(11,2,12,'2017-03-14'),(30,2,6,'1997-06-16'),(17,14,10,'2011-01-22'),(12,4,3,'1994-11-05'),(38,13,9,'2008-08-06'),(48,8,10,'2016-10-19'),(68,9,5,'1995-02-26'),(7,13,12,'2016-10-07'),(9,10,14,'1994-09-05'),(91,4,1,'2006-07-01'),(14,13,11,'2019-12-10'),(54,13,1,'2013-05-08'),(40,6,1,'2005-02-04'),(4,13,9,'2004-12-11'),(10,2,2,'2015-03-24'),(98,1,1,'1998-09-13'),(96,14,14,'2003-06-04'),(71,10,13,'2013-11-13'),(84,8,7,'2016-10-03'),(90,6,8,'2021-04-10'),(84,10,1,'2012-11-21'),(70,10,2,'2016-04-24'),(37,5,7,'1996-03-25'),(42,4,2,'2011-09-30'),(57,12,5,'2019-04-19'),(23,12,2,'2016-12-30'),(22,14,13,'2002-02-24'),(36,1,9,'2003-07-11'),(20,7,5,'2004-01-08'),(66,9,10,'2009-04-12'),(5,2,9,'2004-05-24'),(39,12,2,'1999-09-23'),(8,2,11,'1997-03-30'),(98,1,11,'2019-10-14'),(91,2,10,'2012-02-20'),(4,5,11,'2020-03-10'),(7,11,1,'1997-01-25'),(59,4,12,'2010-10-24'),(56,3,13,'1996-07-19'),(18,1,1,'1993-09-29'),(57,9,4,'1997-11-19'),(76,6,9,'1993-05-11'),(69,3,11,'2011-12-31'),(86,9,13,'1992-12-24'),(56,10,11,'2021-02-26'),(55,1,5,'2007-06-07'),(52,12,10,'1998-01-11'),(50,6,8,'2000-08-14'),(94,14,14,'2001-08-24'),(63,1,10,'2006-12-08'),(87,9,4,'1992-08-10'),(27,11,2,'2021-08-21'),(87,14,12,'2003-01-09'),(37,1,12,'2002-06-17'),(34,12,5,'1994-04-09'),(80,12,6,'2019-07-05'),(40,9,3,'2011-06-04'),(58,6,4,'1996-08-04'),(44,9,1,'2006-12-28'),(18,4,5,'2009-06-23'),(90,14,4,'2019-06-21'),(55,8,1,'2001-05-08'),(20,12,1,'1993-08-25'),(24,10,12,'2019-02-12'),(74,10,3,'2009-05-17'),(30,11,11,'1994-10-30'),(94,13,5,'2001-01-06'),(49,9,10,'2018-09-16'),(93,6,2,'1996-11-04'),(73,2,6,'2015-03-16'),(99,10,13,'2021-04-02'),(82,2,14,'1996-02-04'),(91,4,7,'2011-11-11'),(29,4,12,'2016-08-18'),(8,14,2,'2020-06-20'),(61,3,4,'1992-07-17'),(23,5,3,'2019-04-10'),(65,2,10,'2021-02-03'),(71,13,5,'2003-07-25'),(47,3,10,'2009-11-21'),(43,1,9,'2021-11-27'),(13,12,4,'2012-02-03'),(5,12,1,'2021-02-22'),(16,4,1,'2003-01-10'),(12,11,14,'2014-05-18'),(26,2,9,'2005-10-21'),(20,3,1,'2013-07-04'),(25,12,14,'2014-01-04'),(66,6,6,'2007-06-19'),(84,12,9,'2019-06-26'),(73,14,6,'2018-02-10'),(30,9,2,'2000-10-10'),(14,13,13,'2000-04-01'),(50,2,13,'1997-06-05'),(41,13,12,'1992-12-26'),(78,13,5,'2004-02-19'),(38,11,2,'2004-09-09'),(65,5,13,'2018-06-26'),(13,2,10,'2020-03-07'),(64,13,5,'2009-06-11'),(68,7,1,'2007-04-04'),(32,6,5,'2018-10-13'),(8,2,7,'2015-06-20'),(7,13,12,'2021-07-17'),(30,7,3,'1993-02-24'),(46,4,7,'2001-07-09'),(97,13,3,'2009-11-18'),(13,13,13,'2008-05-02'),(71,5,11,'2001-12-01'),(79,6,7,'2001-05-24'),(37,5,8,'2018-06-24'),(88,4,7,'2016-03-23'),(72,3,3,'2008-02-18'),(38,2,14,'2018-01-24'),(48,1,5,'2011-06-14'),(21,10,9,'2005-06-10'),(19,10,6,'2005-10-18'),(31,3,8,'1998-10-03'),(72,9,10,'2005-10-08'),(94,12,8,'2010-11-07'),(97,14,12,'1993-11-20'),(85,2,7,'1995-10-16'),(18,10,8,'2009-10-26'),(6,10,10,'2004-12-23'),(33,6,3,'1995-04-06'),(95,8,7,'2003-09-29'),(83,12,9,'1992-10-30'),(18,5,9,'2021-07-07'),(73,11,5,'1999-11-16'),(65,9,3,'2019-01-03'),(69,5,10,'1997-05-26'),(29,9,10,'2007-08-05'),(59,8,13,'2005-05-16'),(86,7,9,'2000-10-31'),(10,6,3,'2019-03-08'),(54,13,6,'2007-08-12'),(16,5,7,'2008-09-12'),(50,4,4,'1999-06-11'),(80,10,8,'1999-05-17'),(23,1,9,'2017-06-01'),(99,7,6,'1996-03-05'),(34,3,10,'2019-06-11'),(63,13,4,'1997-06-01'),(8,9,9,'2021-05-10'),(78,3,14,'1997-03-25'),(77,1,7,'2014-10-18'),(32,1,1,'2010-01-08'),(24,12,10,'2000-01-18'),(23,5,12,'2011-03-12'),(43,8,3,'2021-04-25'),(47,10,10,'2001-05-09'),(10,6,12,'2005-06-11'),(30,13,3,'2000-02-17'),(52,14,7,'2011-01-01'),(33,14,8,'2008-05-04'),(19,2,6,'1999-06-03'),(99,3,6,'1994-03-25'),(26,11,1,'1996-03-07'),(3,1,5,'2018-10-26'),(68,4,4,'1995-06-26'),(58,5,8,'2018-01-27'),(80,12,4,'2018-12-04'),(28,2,8,'2012-10-12'),(25,2,11,'2012-09-30'),(50,4,10,'1993-08-08'),(96,7,11,'2019-01-21'),(12,9,2,'2018-01-03'),(98,12,12,'2006-12-09'),(8,1,7,'2007-03-21'),(47,2,14,'1998-07-12'),(81,4,3,'2016-01-05'),(88,10,3,'1996-12-23'),(87,5,11,'2000-04-12'),(36,6,1,'1994-05-31'),(53,12,14,'2008-08-21'),(86,4,6,'2013-02-22'),(66,7,11,'2017-12-25'),(80,7,7,'2019-10-18'),(59,12,7,'2019-07-29'),(45,13,6,'1993-06-14'),(49,13,3,'1993-05-25'),(75,7,8,'2018-03-26'),(76,14,5,'1994-12-29'),(4,9,7,'1995-06-21'),(84,1,5,'2011-04-06'),(12,10,13,'2015-05-11'),(88,7,14,'1998-12-18'),(88,4,2,'2002-11-19'),(97,10,13,'2000-10-07'),(32,3,2,'2015-08-12'),(17,8,11,'2004-08-21'),(10,7,5,'2021-10-30'),(75,3,6,'2018-04-07'),(93,7,3,'2001-05-26'),(15,13,11,'2015-10-15'),(47,3,10,'2001-03-15'),(80,11,14,'2021-08-28'),(42,13,2,'2018-07-16'),(32,3,6,'2012-05-11'),(62,1,2,'2002-07-16'),(34,11,14,'1995-02-27'),(77,2,5,'2013-07-27'),(29,9,4,'2019-12-17'),(37,4,1,'2009-12-16'),(32,13,13,'2014-03-18'),(8,12,10,'2009-10-19'),(37,4,9,'2012-08-26'),(16,6,9,'2003-06-30'),(56,3,2,'2018-03-25'),(89,11,5,'1999-09-20'),(5,10,7,'2021-02-03'),(77,8,7,'1995-11-28'),(5,2,8,'2006-02-18'),(68,10,12,'2003-05-20'),(22,14,6,'2018-03-01'),(38,8,10,'2005-06-17'),(69,11,2,'2009-10-14'),(77,3,10,'1996-08-09'),(53,11,9,'2005-07-13'),(98,4,8,'2021-02-04'),(62,2,12,'2017-06-26'),(52,3,5,'2006-02-02');
/*!40000 ALTER TABLE `Sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SalesPerson`
--

DROP TABLE IF EXISTS `SalesPerson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SalesPerson` (
  `id` mediumint NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(250) NOT NULL,
  `Last_Name` varchar(250) NOT NULL,
  `Address` varchar(250) NOT NULL,
  `Phone` varchar(30) NOT NULL,
  `Start_Date` date NOT NULL,
  `Termination_Date` date DEFAULT NULL,
  `Manager` mediumint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Manager` (`Manager`),
  CONSTRAINT `SalesPerson_ibfk_1` FOREIGN KEY (`Manager`) REFERENCES `SalesPerson` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SalesPerson`
--

LOCK TABLES `SalesPerson` WRITE;
/*!40000 ALTER TABLE `SalesPerson` DISABLE KEYS */;
INSERT INTO `SalesPerson` VALUES (1,'John','Doe','8732 Larson Turnpike Suite 023\r\nNew Amberport, MN 75376','001-259-926-3310x8892','2019-04-30','2021-06-09',NULL),(2,'Dana','Golden','259 Kyle Harbor\nJasmineburgh, AL 38619','737-913-1599','2012-09-28','2021-08-08',NULL),(3,'Debra','Contreras','PSC 7189, Box 2389\nAPO AP 59964','(397)811-1605','2008-09-05',NULL,NULL),(4,'Kelly','Jimenez','831 Lee Inlet Suite 157\nNorth Rebecca, RI 17972','001-135-360-3065x3458','2014-05-31',NULL,NULL),(5,'Nancy','Beasley','9787 Rodriguez Locks\nGaryberg, MI 25809','126-631-3427x425','2015-12-04',NULL,NULL),(6,'Kathryn','Beck','400 Baker Grove\nJenningschester, OH 12170','(723)928-8925','2006-02-12','2015-01-20',NULL),(7,'Hannah','Rhodes','4112 Martinez Extensions Apt. 555\nTiffanyland, IA 02126','(615)903-0480','2003-04-13','2010-10-09',NULL),(8,'Julia','Trujillo','74763 Michelle Skyway\nVillaton, DE 78998','917.915.7266','2007-03-24','2012-07-08',NULL),(9,'Elizabeth','Lee','101 Brandon Brooks Apt. 170\nMatthewfurt, SD 17885','001-602-965-5909x57956','2012-07-19','2018-12-29',NULL),(10,'Jodi','Gilbert','7736 Taylor Path Apt. 988\nNorth Jamie, LA 83877','540-488-7435x25467','2013-07-05','2014-07-16',2),(11,'Antonio','Palmer','40023 Leah Meadow Suite 312\nPhilipview, NJ 44438','525.966.7744x524','1994-10-28',NULL,NULL),(12,'Andre','Edwards','0398 Alvarado Wall\nNew Douglasborough, HI 47582','(174)927-7240x09618','1999-12-19','2017-11-03',NULL),(13,'Danielle','Glover','577 Ronald Hill Apt. 748\nSouth James, MT 50573','+1-073-530-4034x23557','2014-04-30',NULL,11),(14,'Ashley','Rivera','06816 King Neck Apt. 879\nPort Carolstad, MS 94505','(834)295-4258','2000-08-30','2002-03-17',NULL),(15,'John','Ball','692 Ferrell Fords Suite 121\nLake Colleenberg, NY 78225','001-160-319-6752x7184','2017-10-23','2018-08-01',NULL);
/*!40000 ALTER TABLE `SalesPerson` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-22 11:15:13
