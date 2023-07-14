-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: substation_facility
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `expression`
--

DROP TABLE IF EXISTS `expression`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expression` (
  `number` int NOT NULL,
  `Facility_Name` varchar(20) NOT NULL,
  `abbreviation` varchar(45) DEFAULT NULL,
  `name_kor` varchar(50) DEFAULT NULL,
  `mea_kor` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`Facility_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expression`
--

LOCK TABLES `expression` WRITE;
/*!40000 ALTER TABLE `expression` DISABLE KEYS */;
INSERT INTO `expression` VALUES (1,'A','ammeter','전류계','전류 계측기'),(2,'ACB','air_circuit_breaker','기중차단기','공기가 절연역할을 담당하는 차단하는 차단기'),(3,'ALTS','automatic_load_transfer_switch','자동부하전환개폐기','한전 전원을 이중으로 사용하다가 정전시 예비 선로로 절체되는 개폐기'),(4,'AS','ammeter_change_over_switch','전류용 절환 개폐기','1대의 전류계로 3상 각 전류를 측정할 수 있는 전환 개폐기'),(5,'ASS','automatic_section_switch','자동고장구분 개폐기','지락사고의 사고 파급 범위를 사고발생 수용가로 국한시키기 위해 개발된 개폐기'),(6,'ATS','automatic_Transfer_switch','비상전원절체개폐기','정전시 예비전력으로 절체되는 개폐기'),(7,'CB(OCB)','circuit_breaker','차단기(유입차단기)','부하 전류 개폐 및 고장(사고) 전류 차단'),(8,'CH','cable_head','케이블헤드','가공전선과 케이블 단말 접속(지중전선로 의미를 가짐. 재산 분계점과 책임 분계점의 경계를 이룬다.'),(9,'COS','cut_out_switches','고압개폐기','변압기 및 주요기기의 1차측에 사용하며 단락이나 지락 사고 또는 과부하에 의한 과전류로부터 기기를 보호'),(10,'CT','current_transformer','계기용 변류기','대전류를 소전류로 변성하여 계기 및 계전기에 전원 공급'),(11,'CTT','current_test_terminal','CT 시험 단자','수배전반에 설치된 계전기를 테스트하기 위한 시험단자'),(12,'DC','discharge_coil','방전코일','콘텐서를 회로로부터 분리시 잔류전하는 쉽게 방전되지 않기 때문에 코일이나 저항을 통해 방전시킴'),(13,'DCR','differential_current_relay','전류 차동 계전기',NULL),(14,'DCS','distributed_control_system','분산 제어 시스템',NULL),(15,'DGR','directional_ground_relay','방향 지락 계전기','과전류 지락 계전기에 방향성을 준 차단기'),(16,'DM(MDM)','maximum_demand_meter)','최대 수요전력계','최대수요전력량(peak)를 측정하는 전력측정기기'),(17,'DOCR(DSR)','directional_short_circuit_relay','방향 과전류 계전기(단락 방향 계전기)','어느 일정한 방향으로 일정값 이상의 단락 전류가 흘렀을 때 동작하는 차단기'),(18,'DS','disconnecting_s/w','단로기','무부하 전로개폐, 회로의 접속변경(무부하시 회로 개방)'),(19,'DZR','directive_distance_relay','방향 거리 계전기','거리 계전기에 방향성을 부여한 차단기(주로 방향단락 계전기의 대용으로 사용된다)'),(20,'GPT','ground_potential_transformer','접지형 계기용 변압기','지락(GR)사고시 영상전압 검출'),(21,'GR','ground_relay','지락(접지) 계전기','지락 사고시 지락 전류에 의해 동작'),(22,'INT_S/W','interrupter_switch','인터럽트 스위치','과부하시 단락전류를 자동으로 개폐할 수 없고 수동조작만 가능(3000KVA이하에서 ASS 대신 사용)'),(23,'LA','lightning_arrester','피뢰기','이상전압(뇌전류)을 대지로 방전하고 속류 차단'),(24,'MOF','metering_out_fit','계기용 변성기','전력량을 적산하기 위해 PT와 CT를 하나의 탱크(함)에 내장한 것'),(25,'OCGR','over_current_ground_relay','과전류 지락 계전기','과전류 계전기의 동작 전류를 특별히 작게 한것으로 지락 고장 보호용으로 사용'),(26,'OCR','over_current_relay','과전류 계전기','과전류에 의해 동작하는 차단기'),(27,'ONFA','oil_natural_air_forced','유입 풍냉식',NULL),(28,'ONOA','oil_natural_open_air','유입 자냉식',NULL),(29,'OPR','open_phase_relay','결상 계전기','3상 중 1상 단선 사고시 동작'),(30,'OS','oil_switch','유입개폐기','전로 개폐를 기름(절연유) 속에서 하는 스위치'),(31,'OVGR','over_voltage_ground_relay','지락 과전압 계전기','다회선 비접지 회로의 지락 보호용으로 사용하는 차단기(GPT와 한세트)'),(32,'OVR','over_voltage_relay','과전압 계전기','과전압에 동작하는 차단기'),(33,'PF','power_fusw','전력퓨즈','회로 및 기기의 단락 보호용 설비'),(34,'PT','potential_transformer','계기용 변압기','고전압을 저전압 110V로 변성하여 계기 및 계전기에 전원 공급'),(35,'RDF','ratio_differential_current_relay','비율 차동 계전기','변압기 내부 고장시 양쪽 전류차에 의해서 동작하는 차단기'),(36,'S','switch','개폐기','개폐기'),(37,'SC','static_condenser','전력용콘덴서','진상의 무효전력을 공급하여 부하의 역률 개선'),(38,'SGR','selective_ground_relay','선택 지락 계전기','지락 고장시 고장 회선 만을 선택 차단할 수 있도록 선택 단락 계전기의 동작 전류를 특별히 작게 한것.'),(39,'SR','series_reactor','직렬 리액터','제5고조파 제거하여 파형개선'),(40,'SSR','selective_short_circuit_relay','선택 단락 계전기','한쪽의 1회선에 단락 사고가 발생시 2중 방향동작 계전기를 사용해 고장 회선을 선택 차단하는 계전기'),(41,'TC','trip_coil','트립코일','보호계전기 신호에 의해 차단기 개로, 차단기를 트립시키기 위한 여자코일'),(42,'THR','thermal_relay','열동 계전기','바이메탈의 열효과에 의해 작동하는 계전기로 모토를 보호하기 위해 쓰인다'),(43,'TR','transformer','교류 변압기','교류전압 및 전류의 크기를 변환하기 위해 사용되는 정지기기'),(44,'UVR','under_voltage_relay','부족 전압 계전기','저전압에 동작하는 차단기'),(45,'V','voltmeter','전압계','전압 계측기'),(46,'VAR','var_meter_watt','무효전력계','계통 내에서 소비되는 무효전력을 측정하는 기기'),(47,'VARH','var_meter_watt_hour','무효전력량계','계통 내에서 소비되는 무효전력량을 측정하는 기기'),(48,'VS','voltmeter_change_over_switch','전압계용 전환 계폐기','1대의 전압계로 3상 각 전압을 측정할 수 있는 전환 개폐기'),(49,'WH','watt_hour_meter','적산전력량계','부하에서 소비하는 전기 에너지의 시간적 사용량을 측정하는 장치'),(50,'ZCT','zero_phase_current_transformer','영상변류기','지락(GR)사고시 영상전류 검출'),(51,'ZR','distance_potential_relay','거리 계전기','계전기가 설치된 위치로부터 고장점 까지의 전기적 거리에 비례하여 한시 동작하는 차단기');
/*!40000 ALTER TABLE `expression` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-15  1:27:52
