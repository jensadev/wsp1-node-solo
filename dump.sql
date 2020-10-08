-- MySQL dump 10.13  Distrib 8.0.21, for Linux (x86_64)
--
-- Host: localhost    Database: soloadventure
-- ------------------------------------------------------
-- Server version	8.0.21-0ubuntu0.20.04.4

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
-- Table structure for table `combat`
--

DROP TABLE IF EXISTS `combat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `combat` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ratio` int unsigned DEFAULT NULL,
  `random` int unsigned DEFAULT NULL,
  `enemy` int unsigned DEFAULT NULL,
  `hero` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=231 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `combat`
--

LOCK TABLES `combat` WRITE;
/*!40000 ALTER TABLE `combat` DISABLE KEYS */;
INSERT INTO `combat` VALUES (1,1,1,2,1),(2,1,2,2,1),(3,1,3,2,10),(4,1,4,2,10),(5,1,5,3,9),(6,1,6,4,8),(7,1,7,5,7),(8,1,8,6,6),(9,1,9,7,5),(10,1,10,8,2),(11,2,1,2,1),(12,2,2,2,10),(13,2,3,2,9),(14,2,4,3,9),(15,2,5,4,8),(16,2,6,5,8),(17,2,7,6,7),(18,2,8,7,6),(19,2,9,8,5),(20,2,10,9,2),(21,3,1,2,1),(22,3,2,2,10),(23,3,3,2,9),(24,3,4,3,9),(25,3,5,4,8),(26,3,6,5,8),(27,3,7,6,7),(28,3,8,7,6),(29,3,9,8,5),(30,3,10,9,2),(31,4,1,2,10),(32,4,2,2,9),(33,4,3,3,8),(34,4,4,4,8),(35,4,5,5,7),(36,4,6,6,7),(37,4,7,7,6),(38,4,8,8,5),(39,4,9,9,4),(40,4,10,10,2),(41,5,1,2,10),(42,5,2,2,9),(43,5,3,3,8),(44,5,4,4,8),(45,5,5,5,7),(46,5,6,6,7),(47,5,7,7,6),(48,5,8,8,5),(49,5,9,9,4),(50,5,10,10,2),(51,6,1,2,8),(52,6,2,3,8),(53,6,3,4,7),(54,6,4,5,7),(55,6,5,6,6),(56,6,6,7,6),(57,6,7,8,5),(58,6,8,9,4),(59,6,9,10,2),(60,6,10,11,2),(61,7,1,2,8),(62,7,2,3,8),(63,7,3,4,7),(64,7,4,5,7),(65,7,5,6,6),(66,7,6,7,6),(67,7,7,8,5),(68,7,8,9,4),(69,7,9,10,2),(70,7,10,11,2),(71,8,1,3,8),(72,8,2,4,7),(73,8,3,5,7),(74,8,4,6,6),(75,8,5,7,6),(76,8,6,8,5),(77,8,7,9,4),(78,8,8,10,3),(79,8,9,11,2),(80,8,10,12,2),(81,9,1,3,8),(82,9,2,4,7),(83,9,3,5,7),(84,9,4,6,6),(85,9,5,7,6),(86,9,6,8,5),(87,9,7,9,4),(88,9,8,10,3),(89,9,9,11,2),(90,9,10,12,2),(91,10,1,4,7),(92,10,2,5,7),(93,10,3,6,6),(94,10,4,7,6),(95,10,5,8,5),(96,10,6,9,4),(97,10,7,10,4),(98,10,8,11,3),(99,10,9,12,2),(100,10,10,13,2),(101,11,1,4,7),(102,11,2,5,7),(103,11,3,6,6),(104,11,4,7,6),(105,11,5,8,5),(106,11,6,9,4),(107,11,7,10,4),(108,11,8,11,3),(109,11,9,12,2),(110,11,10,13,2),(111,12,1,5,7),(112,12,2,6,6),(113,12,3,7,6),(114,12,4,8,5),(115,12,5,9,4),(116,12,6,10,4),(117,12,7,11,3),(118,12,8,12,2),(119,12,9,13,2),(120,12,10,14,2),(121,13,1,6,7),(122,13,2,7,6),(123,13,3,8,5),(124,13,4,9,5),(125,13,5,10,4),(126,13,6,11,4),(127,13,7,12,3),(128,13,8,13,2),(129,13,9,14,2),(130,13,10,16,2),(131,14,1,6,7),(132,14,2,7,6),(133,14,3,8,5),(134,14,4,9,5),(135,14,5,10,4),(136,14,6,11,4),(137,14,7,12,3),(138,14,8,13,2),(139,14,9,14,2),(140,14,10,16,2),(141,15,1,7,6),(142,15,2,8,5),(143,15,3,9,5),(144,15,4,10,4),(145,15,5,11,4),(146,15,6,12,4),(147,15,7,13,3),(148,15,8,14,2),(149,15,9,16,2),(150,15,10,18,2),(151,16,1,7,6),(152,16,2,8,5),(153,16,3,9,5),(154,16,4,10,4),(155,16,5,11,4),(156,16,6,12,4),(157,16,7,13,3),(158,16,8,14,2),(159,16,9,16,2),(160,16,10,18,2),(161,17,1,8,6),(162,17,2,9,5),(163,17,3,10,5),(164,17,4,11,4),(165,17,5,12,4),(166,17,6,13,3),(167,17,7,14,2),(168,17,8,16,2),(169,17,9,18,2),(170,17,10,20,2),(171,18,1,8,6),(172,18,2,9,5),(173,18,3,10,5),(174,18,4,11,4),(175,18,5,12,4),(176,18,6,13,3),(177,18,7,14,2),(178,18,8,16,2),(179,18,9,18,2),(180,18,10,20,2),(181,19,1,9,6),(182,19,2,10,5),(183,19,3,11,4),(184,19,4,12,4),(185,19,5,13,4),(186,19,6,14,3),(187,19,7,16,2),(188,19,8,18,2),(189,19,9,20,2),(190,19,10,1,2),(191,20,1,9,6),(192,20,2,10,5),(193,20,3,11,4),(194,20,4,12,4),(195,20,5,13,4),(196,20,6,14,3),(197,20,7,16,2),(198,20,8,18,2),(199,20,9,20,2),(200,20,10,1,2),(201,21,1,10,5),(202,21,2,11,5),(203,21,3,12,4),(204,21,4,13,4),(205,21,5,14,4),(206,21,6,16,3),(207,21,7,18,2),(208,21,8,20,2),(209,21,9,1,2),(210,21,10,1,2),(211,22,1,10,5),(212,22,2,11,5),(213,22,3,12,4),(214,22,4,13,4),(215,22,5,14,4),(216,22,6,16,3),(217,22,7,18,2),(218,22,8,20,2),(219,22,9,1,2),(220,22,10,1,2),(221,23,1,11,5),(222,23,2,12,4),(223,23,3,13,4),(224,23,4,14,4),(225,23,5,16,3),(226,23,6,18,3),(227,23,7,20,2),(228,23,8,1,2),(229,23,9,1,2),(230,23,10,1,2);
/*!40000 ALTER TABLE `combat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `combat_numbers`
--

DROP TABLE IF EXISTS `combat_numbers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `combat_numbers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `value` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `combat_numbers`
--

LOCK TABLES `combat_numbers` WRITE;
/*!40000 ALTER TABLE `combat_numbers` DISABLE KEYS */;
INSERT INTO `combat_numbers` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10);
/*!40000 ALTER TABLE `combat_numbers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `combat_ratio`
--

DROP TABLE IF EXISTS `combat_ratio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `combat_ratio` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `value` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `combat_ratio`
--

LOCK TABLES `combat_ratio` WRITE;
/*!40000 ALTER TABLE `combat_ratio` DISABLE KEYS */;
INSERT INTO `combat_ratio` VALUES (1,-11),(2,-10),(3,-9),(4,-8),(5,-7),(6,-6),(7,-5),(8,-4),(9,-3),(10,-2),(11,-1),(12,0),(13,1),(14,2),(15,3),(16,4),(17,5),(18,6),(19,7),(20,8),(21,9),(22,10),(23,11);
/*!40000 ALTER TABLE `combat_ratio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `combat_results`
--

DROP TABLE IF EXISTS `combat_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `combat_results` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `endurance` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `combat_results`
--

LOCK TABLES `combat_results` WRITE;
/*!40000 ALTER TABLE `combat_results` DISABLE KEYS */;
INSERT INTO `combat_results` VALUES (1,'D'),(2,'0'),(3,'1'),(4,'2'),(5,'3'),(6,'4'),(7,'5'),(8,'6'),(9,'7'),(10,'8'),(11,'9'),(12,'10'),(13,'11'),(14,'12'),(15,'13'),(16,'14'),(17,'15'),(18,'16'),(19,'17'),(20,'18');
/*!40000 ALTER TABLE `combat_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encounters`
--

DROP TABLE IF EXISTS `encounters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `encounters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encounters`
--

LOCK TABLES `encounters` WRITE;
/*!40000 ALTER TABLE `encounters` DISABLE KEYS */;
/*!40000 ALTER TABLE `encounters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `links`
--

DROP TABLE IF EXISTS `links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `links` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `story_id` bigint unsigned DEFAULT NULL,
  `target_id` bigint unsigned DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `links`
--

LOCK TABLES `links` WRITE;
/*!40000 ALTER TABLE `links` DISABLE KEYS */;
INSERT INTO `links` VALUES (1,1,2,'Du väljer att hjälpa din far.'),(2,1,17,'Det är inte värt mödan att hjälpa gubben, han kan väl ta hand om sina egna skulder.'),(3,2,4,'Du väljer att smyga efter din bror ut i skogen.'),(4,2,5,'Du väntar på gården.'),(5,5,6,'Gå vidare.'),(6,6,7,'Följer efter din storebror.'),(7,6,12,'Stannar på gården.'),(8,7,8,'Ligger kvar.'),(9,7,12,'Flyr hemåt.'),(10,8,9,'Åla dig fram så du hör trollet.'),(11,8,11,'Ligga kvar.'),(12,9,11,'Du ligger kvar och gömmer dig.'),(13,9,10,'Du kliver fram.'),(14,10,18,'Om striden pågår i fler än tre rundor.'),(15,11,13,'Den tredje dagen.'),(16,13,14,'Du säger inget.'),(17,14,15,'Ber du henne om en ordentligt matsäck?\r\n\r\n'),(18,14,16,'Eller ber du henne önska dig lycka till?'),(19,15,16,'Notera osten i din väska och fortsätt.'),(20,16,10,'Försöker du argumentera med trollet?'),(21,16,19,'Har du en ost i din väska och vill använda den?'),(22,19,20,'Du väljer att skona trollet.'),(23,19,21,'Efter det trollet har gjort kan du omöjligen skona det.'),(24,20,23,'Du följer med trollet hem.'),(25,20,22,'Hem till trollet, nej tack.'),(26,22,21,'Trollet anfaller.'),(27,23,24,'Du försöker lyfta hinkarna.'),(28,23,25,'Du säger...'),(29,24,21,'Trollet anfaller.'),(30,25,26,'Föreslå att äta ikapp med trollet.'),(31,25,33,'Avvakta och se vad trollet gör.'),(32,26,27,'Ni sätter er till bords.'),(33,27,28,'Skär hål i väskan.'),(34,27,33,'Avvakta och se vad trollet gör.'),(35,28,29,'Efter en stund lägger trollet bort skeden.'),(36,29,30,'»Du skall äta», svarar du.'),(37,29,33,'Avvakta och se vad trollet gör.'),(38,30,31,'Vad gör trollet...'),(39,31,32,'Med väskan full vänder du hemåt.'),(40,33,21,'Trollet anfaller.'),(41,21,34,'Om du besegrar trollet.'),(42,21,18,'Om du förlorar striden.'),(43,34,32,'Med väskan full vänder du hemåt.');
/*!40000 ALTER TABLE `links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `story`
--

DROP TABLE IF EXISTS `story`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `story` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `body` text,
  `enemy` int DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `story`
--

LOCK TABLES `story` WRITE;
/*!40000 ALTER TABLE `story` DISABLE KEYS */;
INSERT INTO `story` VALUES (1,'Det var en gång en bonde som hade tre söner. Bonden var skuldsatt och gammal och svag, men ingen av sönerna ville hjälpa sin far. Till gården hörde en stor skog. Bonden ville att sönerna skulle fälla träd i den och på det sättet försöka betala av något på skulden..\r\n\r\nBonden är din far.\r\n\r\nVill du hjälpa din pappa?',NULL),(2,'Efter många övertalningsförsök fick han dig och dina två äldre bröder att ställa upp. \r\n\r\nFörst gick den äldste ut i skogen med sin yxa på axeln.',NULL),(4,'Du följer efter din storebror ut i skogen och gömmer dig bakom ett träd. Där ser du.\r\n\r\nNär storebror hade kommit in i skogen och börjat hugga på en gammal skäggig gran kom ett stort, tjockt troll fram till honom.\r\n\r\n»Om du hugger i min skog, så slår jag ihjäl dig», sa trollet.\r\n\r\nDå pojken hörde det kastade han yxan ifrån sig och sprang hem så fort han kunde. \r\n\r\nDu följer efter.',NULL),(5,'På gården så ser du din bror komma tillbaka från skogen.\r\n\r\nHan är alldeles andfådd och berättar skräckslagen vad som hänt honom. Pappa blir arg på honom.',NULL),(6,'»Vilket harhjärta du är!», sa fadern. »Trollen skrämde aldrig mig när jag var ung och högg träd i skogen.»\r\n\r\nFöljande dag gav den näst äldsta sonen sig av till skogen.\r\n\r\nVad gör du?',NULL),(7,'Du följer efter din bror och siktar på att gömma dig bakom trädet igen. Plötsligt snubblar du till och ramlar pladask på magen.',NULL),(8,'Du ligger kvar i mossan, tyst som en mus.\r\n\r\nDu ser hur historien upprepar sig. När din bror har gjort några hugg i en gran kommer trollet fram till honom.\r\n\r\nDu är utanför hörhåll.',NULL),(9,'Du kommer närmare, men ditt ålande är inte direkt tyst.\r\n\r\nDu hör trollet säga.\r\n\r\n»Om du hugger i min skog, så slår jag ihjäl dig.»\r\n\r\nGossen vågade knappt se på trollet utan kastade yxan ifrån sig och sprang så fort han kunde därifrån. \r\n\r\nDu ser hur trollet spanar efter din bror, sedan säger han.\r\n\r\n»Du kan komma fram nu, vad vill du min skog?.»',NULL),(10,'Du kliver fram och tittar på trollet. Med darrande röst svarar du att du visst behöver hugga ned träden i trollets skog för att betala din pappas skuld.\r\n\r\nTrollet anfaller. Strid.\r\n\r\nOm striden pågår i fler än tre rundor.',30),(11,'Du ligger kvar i flera timmar innan du smyger hem.\r\n\r\nVäl hemma får du höra att pappa skällde ut din bror precis som dagen innan.',NULL),(12,'På gården så ser du din bror komma tillbaka från skogen.\r\n\r\nPrecis som med din äldste bror, så blir pappa ursinnig och påpekar att det aldrig hade varit några läskiga påhittade troll som skrämdes i skogen då han var ung.',NULL),(13,'Tredje dagen är det tillslut din tur att försöka.\r\n\r\n»Ja du», säger dina äldre bröderna, »du kommer säkert göra bra ifrån dig. Du som aldrig varit utanför dörren!»\r\n\r\n',NULL),(14,'Sedan vänder du dig till din mor.',NULL),(15,'Din mor ger dig en stor och präktig ost som ännu inte är riktigt färdig. Den är vattnig och alldeles mjuk. Hela din väska fylls upp av osten.',NULL),(16,'Sedan ger du dig av.\r\n\r\nNär du kommit ut i skogen börjar du hugga på en gran i väntan på trollet.\r\n\r\nMycket riktigt så dyker det snart upp. Du känner dess läbbiga andedräkt när det säger.\r\n\r\n»Om du hugger i min skog, så slår jag ihjäl dig.»',NULL),(17,'Din fruktansvärda ohjälpsamhet förstör din familj. \r\n\r\nSagan slutar här.',NULL),(18,'Trollet är dig övermäktigt och din saga slutar här',NULL),(19,'Snabb som en blixt springer du bort till din väska och lyfter upp osten. Sedan klämmer du till den så att vasslan skvätter.\r\n\r\nSedan säger du till trollet »Håller inte du tyst», »så skall jag klämma dig, så som jag klämmer vattnet ur den här vita stenen!»\r\n\r\n»Nej, kära, skona mig», ber trollet, »jag skall hjälpa dig att hugga träd.»',NULL),(20,'På det villkoret skonar du trollet. Trollet var duktigt på att hugga. Tillsammans så fäller ni många stammar denna dag. \r\n\r\nFramemot kvällen så säger trollet.\r\n\r\n»Nu kan du följa med mig hem, det är närmare till mig än till dig.»',NULL),(21,'Ve och fasa det blir strid med trollet.',20),(22,'Du säger något om att du inte törs sova borta och ger dig av. Men trollet ser inte avvisandet med blida ögon.',NULL),(23,'Du tycker att det låter som ett bra erbjudande och följer med. Väl hemma i trollets berg börjar trollet göra upp eld i spisen. Du går efter efter vatten till grötgrytan. \r\n\r\nDär står två järnhinkar, stora och tunga.',NULL),(24,'Du kan inte rubba hinkarna ur fläcken. Trollet förstår din bluff.',NULL),(25,'»Det är inte värt att ta med sig de här fingerborgarna. Jag ska gå efter hela brunnen, jag.»\r\n\r\n»Nej, kära, snälla», svarar då trollet, »jag kan inte vara utan brunnen. Gör upp elden, du, så skall jag gå efter vatten.»\r\n\r\nDå trollet kommer tillbaka med vattnet kokade de tillsammans en väldig gryta med gröt över elden.',NULL),(26,'»Hör på», säger du, »Ska vi ät ikapp?» »Det kan vi göra», svarar trollet, övertygad om att han ska vinna.',NULL),(27,'Utan att trollet ser så sätter du din väska på magen under skjortan. Och när du äter så öser du mer i väskan än vad du stoppar i munnen. Tillslut så börjar väskan bli full, vad gör du?',NULL),(28,'Du tar upp din täljkniv och skär ett hål i väskan så att gröten rinner ut. Trollet tittar på dig, men säger inget. ',NULL),(29,'»Nej, nu orkar inte jag mer», säger trollet.',NULL),(30,'Du fortsätter, »jag är knappast halvmätt ännu. Gör du som jag gjorde: skär ett hål på magen, så äter du så mycket du vill.»',NULL),(31,'»Men det gör väl väldigt ont?» undrar  trollet\r\n\r\n»Å, ingenting att tala om», svarar du.\r\n\r\nOtroligt nog så gör trollet som du säger, och det kan man väl förstå, att trollet tog död på sig själv. \r\n\r\nExalterad över att det fungerar söker du igenom trollets berg. Du finner stora mängder silver och guld.',NULL),(32,'Tack vare trollets rikedom kan din far betala sina skulder. \r\n\r\nSnipp snapp snut så var sagan slut.',NULL),(33,'Trollet tittar finurligt på dig medans du funderar på ditt nästa drag, sedan säger det.\r\n\r\n»Jag förstår nog vad du försöker göra»',NULL),(34,'Exalterad över din seger söker du igenom trollets berg. Du finner stora mängder silver och guld.',NULL);
/*!40000 ALTER TABLE `story` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-08 16:02:33
