-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: dbtrello
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `attach`
--

DROP TABLE IF EXISTS `attach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attach` (
  `AttachID` int NOT NULL AUTO_INCREMENT,
  `TaskTaskID` int DEFAULT NULL,
  `Link` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `IsHide` int NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `CreatedBy` int NOT NULL,
  PRIMARY KEY (`AttachID`),
  KEY `FKAttach188360` (`TaskTaskID`),
  CONSTRAINT `FKAttach188360` FOREIGN KEY (`TaskTaskID`) REFERENCES `task` (`TaskID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attach`
--

LOCK TABLES `attach` WRITE;
/*!40000 ALTER TABLE `attach` DISABLE KEYS */;
/*!40000 ALTER TABLE `attach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board` (
  `BoardID` int NOT NULL AUTO_INCREMENT,
  `PermissionBoardPermissionBoardID` int DEFAULT NULL,
  `Title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `Image` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `CreatedBy` int NOT NULL,
  `IsHide` int NOT NULL,
  PRIMARY KEY (`BoardID`),
  KEY `FKBoard477536` (`PermissionBoardPermissionBoardID`),
  CONSTRAINT `FKBoard477536` FOREIGN KEY (`PermissionBoardPermissionBoardID`) REFERENCES `permissionboard` (`PermissionBoardID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorywtd`
--

DROP TABLE IF EXISTS `categorywtd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorywtd` (
  `CategoryWTDID` int NOT NULL AUTO_INCREMENT,
  `WorkToDoWorkToDoID` int DEFAULT NULL,
  `UserWorkToDoID` int DEFAULT NULL,
  `Title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `CreatedBy` int NOT NULL,
  `IsHide` int NOT NULL,
  `CategoryWTDCategoryWTDID` int DEFAULT NULL,
  PRIMARY KEY (`CategoryWTDID`),
  KEY `FKCategoryWT475192` (`WorkToDoWorkToDoID`),
  CONSTRAINT `FKCategoryWT475192` FOREIGN KEY (`WorkToDoWorkToDoID`) REFERENCES `worktodo` (`WorkToDoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorywtd`
--

LOCK TABLES `categorywtd` WRITE;
/*!40000 ALTER TABLE `categorywtd` DISABLE KEYS */;
/*!40000 ALTER TABLE `categorywtd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `CommentID` int NOT NULL AUTO_INCREMENT,
  `TaskTaskID` int DEFAULT NULL,
  `Content` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `IsHide` int NOT NULL,
  `UserUserID` int DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `CreatedBy` int NOT NULL,
  PRIMARY KEY (`CommentID`),
  KEY `FKComment115253` (`UserUserID`),
  KEY `FKComment711274` (`TaskTaskID`),
  CONSTRAINT `FKComment115253` FOREIGN KEY (`UserUserID`) REFERENCES `user` (`UserID`),
  CONSTRAINT `FKComment711274` FOREIGN KEY (`TaskTaskID`) REFERENCES `task` (`TaskID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dealine`
--

DROP TABLE IF EXISTS `dealine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dealine` (
  `DeadlineID` int NOT NULL AUTO_INCREMENT,
  `TaskTaskID` int DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `DueDate` date DEFAULT NULL,
  `IsHide` int NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `CreatedBy` int NOT NULL,
  `Complete` int NOT NULL,
  PRIMARY KEY (`DeadlineID`),
  KEY `FKDealine393272` (`TaskTaskID`),
  CONSTRAINT `FKDealine393272` FOREIGN KEY (`TaskTaskID`) REFERENCES `task` (`TaskID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dealine`
--

LOCK TABLES `dealine` WRITE;
/*!40000 ALTER TABLE `dealine` DISABLE KEYS */;
/*!40000 ALTER TABLE `dealine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `history` (
  `HistoryID` int NOT NULL AUTO_INCREMENT,
  `BoardBoardID` int DEFAULT NULL,
  `Content` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `CreatedBy` int NOT NULL,
  `IsHide` int NOT NULL,
  PRIMARY KEY (`HistoryID`),
  KEY `FKHistory644049` (`BoardBoardID`),
  CONSTRAINT `FKHistory644049` FOREIGN KEY (`BoardBoardID`) REFERENCES `board` (`BoardID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `label`
--

DROP TABLE IF EXISTS `label`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `label` (
  `LabelID` int NOT NULL AUTO_INCREMENT,
  `TaskTaskID` int DEFAULT NULL,
  `Color` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `CreatedBy` int NOT NULL,
  `IsHide` int NOT NULL,
  PRIMARY KEY (`LabelID`),
  KEY `FKLabel380675` (`TaskTaskID`),
  CONSTRAINT `FKLabel380675` FOREIGN KEY (`TaskTaskID`) REFERENCES `task` (`TaskID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `label`
--

LOCK TABLES `label` WRITE;
/*!40000 ALTER TABLE `label` DISABLE KEYS */;
/*!40000 ALTER TABLE `label` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissionboard`
--

DROP TABLE IF EXISTS `permissionboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissionboard` (
  `PermissionBoardID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `Description` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `IsHide` int NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `CreatedBy` int NOT NULL,
  PRIMARY KEY (`PermissionBoardID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissionboard`
--

LOCK TABLES `permissionboard` WRITE;
/*!40000 ALTER TABLE `permissionboard` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissionboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reactioncomment`
--

DROP TABLE IF EXISTS `reactioncomment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reactioncomment` (
  `ReactionCommentID` int NOT NULL AUTO_INCREMENT,
  `CommentCommentID` int DEFAULT NULL,
  `Image` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `Description` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `Name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `IsHide` int NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `CreatedBy` int NOT NULL,
  PRIMARY KEY (`ReactionCommentID`),
  KEY `FKReactionCo423473` (`CommentCommentID`),
  CONSTRAINT `FKReactionCo423473` FOREIGN KEY (`CommentCommentID`) REFERENCES `comment` (`CommentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reactioncomment`
--

LOCK TABLES `reactioncomment` WRITE;
/*!40000 ALTER TABLE `reactioncomment` DISABLE KEYS */;
/*!40000 ALTER TABLE `reactioncomment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task` (
  `TaskID` int NOT NULL AUTO_INCREMENT,
  `WorkListWorkListID` int DEFAULT NULL,
  `Title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `Image` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `Description` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `CreatedBy` int NOT NULL,
  `IsHide` int NOT NULL,
  `DisplayOrder` int NOT NULL,
  `Complete` int NOT NULL,
  PRIMARY KEY (`TaskID`),
  KEY `FKTask869445` (`WorkListWorkListID`),
  CONSTRAINT `FKTask869445` FOREIGN KEY (`WorkListWorkListID`) REFERENCES `worklist` (`WorkListID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `UserID` int NOT NULL AUTO_INCREMENT,
  `CommentCommentID` int DEFAULT NULL,
  `FullName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `Email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `Image` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `Username` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `Password` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `IsHide` int NOT NULL,
  `Status` int NOT NULL,
  `UserUserID` int DEFAULT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userboard`
--

DROP TABLE IF EXISTS `userboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userboard` (
  `UserTableID` int NOT NULL AUTO_INCREMENT,
  `UserUserID` int DEFAULT NULL,
  `BoardBoardID` int DEFAULT NULL,
  `Permission` int NOT NULL,
  `IsHide` int NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `CreatedBy` int NOT NULL,
  PRIMARY KEY (`UserTableID`),
  KEY `FKUserBoard613061` (`BoardBoardID`),
  KEY `FKUserBoard380153` (`UserUserID`),
  CONSTRAINT `FKUserBoard380153` FOREIGN KEY (`UserUserID`) REFERENCES `user` (`UserID`),
  CONSTRAINT `FKUserBoard613061` FOREIGN KEY (`BoardBoardID`) REFERENCES `board` (`BoardID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userboard`
--

LOCK TABLES `userboard` WRITE;
/*!40000 ALTER TABLE `userboard` DISABLE KEYS */;
/*!40000 ALTER TABLE `userboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usertask`
--

DROP TABLE IF EXISTS `usertask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usertask` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `TaskTaskID` int DEFAULT NULL,
  `UserUserID` int DEFAULT NULL,
  `CreadtedDate` date DEFAULT NULL,
  `CreatedBy` int NOT NULL,
  `IsHide` int NOT NULL,
  `Complete` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKUserTask188492` (`UserUserID`),
  KEY `FKUserTask361964` (`TaskTaskID`),
  CONSTRAINT `FKUserTask188492` FOREIGN KEY (`UserUserID`) REFERENCES `user` (`UserID`),
  CONSTRAINT `FKUserTask361964` FOREIGN KEY (`TaskTaskID`) REFERENCES `task` (`TaskID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usertask`
--

LOCK TABLES `usertask` WRITE;
/*!40000 ALTER TABLE `usertask` DISABLE KEYS */;
/*!40000 ALTER TABLE `usertask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userworktodo`
--

DROP TABLE IF EXISTS `userworktodo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userworktodo` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `UserUserID` int DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `CreatedBy` int NOT NULL,
  `IsHide` int NOT NULL,
  `Complete` int NOT NULL,
  `CategoryWTDCategoryWTDID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKUserWorkTo267439` (`UserUserID`),
  KEY `FKUserWorkTo229409` (`CategoryWTDCategoryWTDID`),
  CONSTRAINT `FKUserWorkTo229409` FOREIGN KEY (`CategoryWTDCategoryWTDID`) REFERENCES `categorywtd` (`CategoryWTDID`),
  CONSTRAINT `FKUserWorkTo267439` FOREIGN KEY (`UserUserID`) REFERENCES `user` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userworktodo`
--

LOCK TABLES `userworktodo` WRITE;
/*!40000 ALTER TABLE `userworktodo` DISABLE KEYS */;
/*!40000 ALTER TABLE `userworktodo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worklist`
--

DROP TABLE IF EXISTS `worklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `worklist` (
  `WorkListID` int NOT NULL AUTO_INCREMENT,
  `BoardBoardID` int DEFAULT NULL,
  `Title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `CreatedBy` int NOT NULL,
  `IsHide` int NOT NULL,
  `DisplayOrder` int NOT NULL,
  PRIMARY KEY (`WorkListID`),
  KEY `FKWorkList699951` (`BoardBoardID`),
  CONSTRAINT `FKWorkList699951` FOREIGN KEY (`BoardBoardID`) REFERENCES `board` (`BoardID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worklist`
--

LOCK TABLES `worklist` WRITE;
/*!40000 ALTER TABLE `worklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `worklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worktodo`
--

DROP TABLE IF EXISTS `worktodo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `worktodo` (
  `WorkToDoID` int NOT NULL AUTO_INCREMENT,
  `TaskTaskID` int DEFAULT NULL,
  `Title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `CreatedBy` int NOT NULL,
  `IsHide` int NOT NULL,
  `Complete` int NOT NULL,
  PRIMARY KEY (`WorkToDoID`),
  KEY `FKWorkToDo694528` (`TaskTaskID`),
  CONSTRAINT `FKWorkToDo694528` FOREIGN KEY (`TaskTaskID`) REFERENCES `task` (`TaskID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worktodo`
--

LOCK TABLES `worktodo` WRITE;
/*!40000 ALTER TABLE `worktodo` DISABLE KEYS */;
/*!40000 ALTER TABLE `worktodo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'dbtrello'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-13  9:34:29
