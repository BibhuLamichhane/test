-- MySQL dump 10.13  Distrib 9.0.1, for macos15.1 (arm64)
--
-- Host: localhost    Database: payrollManagementDB
-- ------------------------------------------------------
-- Server version	9.0.1

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
-- Table structure for table `Attendance`
--

DROP TABLE IF EXISTS `Attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Attendance` (
  `LogID` int NOT NULL,
  `EmployeeID` int DEFAULT NULL,
  `CheckInTime` datetime DEFAULT NULL,
  `CheckOutTime` datetime DEFAULT NULL,
  PRIMARY KEY (`LogID`),
  KEY `EmployeeID` (`EmployeeID`),
  CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`EmployeeID`) REFERENCES `Employee` (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Attendance`
--

LOCK TABLES `Attendance` WRITE;
/*!40000 ALTER TABLE `Attendance` DISABLE KEYS */;
INSERT INTO `Attendance` VALUES (1,1001,'2024-01-01 08:00:00','2024-01-01 17:00:00'),(2,1002,'2024-01-01 08:15:00','2024-01-01 17:15:00'),(3,1003,'2024-01-01 08:30:00','2024-01-01 17:30:00'),(4,1004,'2024-01-01 09:00:00','2024-01-01 18:00:00'),(5,1005,'2024-01-01 07:45:00','2024-01-01 16:45:00'),(6,1006,'2024-01-01 08:00:00','2024-01-01 17:00:00'),(7,1007,'2024-01-01 08:30:00','2024-01-01 17:30:00'),(8,1008,'2024-01-01 09:15:00','2024-01-01 18:15:00'),(9,1009,'2024-01-01 07:30:00','2024-01-01 16:30:00'),(10,1010,'2024-01-01 08:45:00','2024-01-01 17:45:00'),(11,1011,'2024-01-01 08:00:00','2024-01-01 17:00:00'),(12,1012,'2024-01-01 08:30:00','2024-01-01 17:30:00'),(13,1013,'2024-01-01 09:00:00','2024-01-01 18:00:00'),(14,1014,'2024-01-01 08:15:00','2024-01-01 17:15:00'),(15,1015,'2024-01-01 07:45:00','2024-01-01 16:45:00');
/*!40000 ALTER TABLE `Attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AuditLog`
--

DROP TABLE IF EXISTS `AuditLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AuditLog` (
  `LogID` int NOT NULL AUTO_INCREMENT,
  `Action` varchar(50) DEFAULT NULL,
  `EmployeeID` int DEFAULT NULL,
  `LogTime` datetime DEFAULT NULL,
  PRIMARY KEY (`LogID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AuditLog`
--

LOCK TABLES `AuditLog` WRITE;
/*!40000 ALTER TABLE `AuditLog` DISABLE KEYS */;
/*!40000 ALTER TABLE `AuditLog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Deduction`
--

DROP TABLE IF EXISTS `Deduction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Deduction` (
  `DeductionID` int NOT NULL,
  `DeductionName` varchar(100) DEFAULT NULL,
  `PayCut` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`DeductionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Deduction`
--

LOCK TABLES `Deduction` WRITE;
/*!40000 ALTER TABLE `Deduction` DISABLE KEYS */;
INSERT INTO `Deduction` VALUES (1,'Social Security Tax',200.00),(2,'Health Insurance',150.00),(3,'Federal Tax',500.00),(4,'State Tax',100.00),(5,'Medicare',75.00),(6,'401K Contribution',300.00),(7,'Dental Insurance',50.00),(8,'Union Dues',25.00),(9,'Vision Insurance',30.00),(10,'Life Insurance',40.00),(11,'Disability Insurance',60.00),(12,'Student Loan',250.00),(13,'Garnishment',100.00),(14,'Child Support',200.00),(15,'Charity Donation',80.00);
/*!40000 ALTER TABLE `Deduction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Department`
--

DROP TABLE IF EXISTS `Department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Department` (
  `DepartmentID` int NOT NULL,
  `DepartmentName` varchar(50) DEFAULT NULL,
  `ManagerID` int DEFAULT NULL,
  PRIMARY KEY (`DepartmentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Department`
--

LOCK TABLES `Department` WRITE;
/*!40000 ALTER TABLE `Department` DISABLE KEYS */;
INSERT INTO `Department` VALUES (1,'Human Resources',101),(2,'Finance',102),(3,'Engineering',103),(4,'Marketing',104),(5,'Sales',105),(6,'IT',106),(7,'Customer Service',107),(8,'Logistics',108),(9,'Legal',109),(10,'Research and Development',110),(11,'Procurement',111),(12,'Quality Assurance',112),(13,'Administration',113),(14,'Training',114),(15,'Health and Safety',115);
/*!40000 ALTER TABLE `Department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employee`
--

DROP TABLE IF EXISTS `Employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Employee` (
  `EmployeeID` int NOT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `JobID` int DEFAULT NULL,
  `PayrollID` int DEFAULT NULL,
  `HireDate` date DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`),
  KEY `JobID` (`JobID`),
  KEY `idx_employee_lastname` (`LastName`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`JobID`) REFERENCES `Job` (`JobID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employee`
--

LOCK TABLES `Employee` WRITE;
/*!40000 ALTER TABLE `Employee` DISABLE KEYS */;
INSERT INTO `Employee` VALUES (1001,'John','Doe','1985-05-15','john.doe@example.com','555-1234','123 Main St, Chicago, IL, 60601',1,2001,'2020-01-01'),(1002,'Jane','Smith','1990-08-25','jane.smith@example.com','555-5678','456 Elm St, Chicago, IL, 60602',2,2002,'2019-02-01'),(1003,'Alice','Johnson','1987-03-10','alice.johnson@example.com','555-9876','789 Oak St, Chicago, IL, 60603',3,2003,'2018-03-01'),(1004,'Bob','Brown','1995-12-20','bob.brown@example.com','555-6543','321 Pine St, Chicago, IL, 60604',4,2004,'2021-04-01'),(1005,'Mary','Davis','1982-11-30','mary.davis@example.com','555-1111','555 Cedar St, Chicago, IL, 60605',5,2005,'2022-05-01'),(1006,'James','Miller','1991-09-15','james.miller@example.com','555-2222','678 Spruce St, Chicago, IL, 60606',6,2006,'2023-06-01'),(1007,'Patricia','Wilson','1992-02-20','patricia.wilson@example.com','555-3333','890 Birch St, Chicago, IL, 60607',7,2007,'2022-07-01'),(1008,'Michael','Taylor','1989-07-25','michael.taylor@example.com','555-4444','234 Maple St, Chicago, IL, 60608',8,2008,'2021-08-01'),(1009,'Linda','Anderson','1983-04-10','linda.anderson@example.com','555-5555','567 Walnut St, Chicago, IL, 60609',9,2009,'2020-09-01'),(1010,'David','Thomas','1993-06-15','david.thomas@example.com','555-6666','890 Willow St, Chicago, IL, 60610',10,2010,'2019-10-01'),(1011,'Sarah','Moore','1984-08-25','sarah.moore@example.com','555-7777','123 Beech St, Chicago, IL, 60611',11,2011,'2018-11-01'),(1012,'William','Jackson','1981-10-10','william.jackson@example.com','555-8888','456 Ash St, Chicago, IL, 60612',12,2012,'2017-12-01'),(1013,'Karen','White','1990-01-15','karen.white@example.com','555-9999','789 Cherry St, Chicago, IL, 60613',13,2013,'2016-01-01'),(1014,'Charles','Harris','1988-05-20','charles.harris@example.com','555-1010','321 Peach St, Chicago, IL, 60614',14,2014,'2015-02-01'),(1015,'Elizabeth','Martin','1994-03-30','elizabeth.martin@example.com','555-1112','555 Apple St, Chicago, IL, 60615',15,2015,'2014-03-01');
/*!40000 ALTER TABLE `Employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Employee_AuditLog` AFTER INSERT ON `employee` FOR EACH ROW BEGIN
    INSERT INTO AuditLog (Action, EmployeeID, LogTime)
    VALUES ('Employee Inserted', NEW.EmployeeID, NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `EmployeeDeductions`
--

DROP TABLE IF EXISTS `EmployeeDeductions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EmployeeDeductions` (
  `DeductionID` int NOT NULL,
  `DeductionDate` date DEFAULT NULL,
  `EmployeeID` int DEFAULT NULL,
  `DepartmentID` int DEFAULT NULL,
  PRIMARY KEY (`DeductionID`),
  KEY `EmployeeID` (`EmployeeID`),
  KEY `DepartmentID` (`DepartmentID`),
  CONSTRAINT `employeedeductions_ibfk_1` FOREIGN KEY (`EmployeeID`) REFERENCES `Employee` (`EmployeeID`),
  CONSTRAINT `employeedeductions_ibfk_2` FOREIGN KEY (`DepartmentID`) REFERENCES `Department` (`DepartmentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EmployeeDeductions`
--

LOCK TABLES `EmployeeDeductions` WRITE;
/*!40000 ALTER TABLE `EmployeeDeductions` DISABLE KEYS */;
INSERT INTO `EmployeeDeductions` VALUES (1,'2024-01-31',1001,NULL),(2,'2024-01-31',1002,NULL),(3,'2024-01-31',1003,NULL),(4,'2024-01-31',1004,NULL),(5,'2024-01-31',1005,NULL),(6,'2024-01-31',1006,NULL),(7,'2024-01-31',1007,NULL),(8,'2024-01-31',1008,NULL),(9,'2024-01-31',1009,NULL),(10,'2024-01-31',1010,NULL),(11,'2024-01-31',1011,NULL),(12,'2024-01-31',1012,NULL),(13,'2024-01-31',1013,NULL),(14,'2024-01-31',1014,NULL),(15,'2024-01-31',1015,NULL);
/*!40000 ALTER TABLE `EmployeeDeductions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `employeejobview`
--

DROP TABLE IF EXISTS `employeejobview`;
/*!50001 DROP VIEW IF EXISTS `employeejobview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `employeejobview` AS SELECT 
 1 AS `EmployeeID`,
 1 AS `FirstName`,
 1 AS `LastName`,
 1 AS `JobTitle`,
 1 AS `DepartmentName`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `EmployeeVacation`
--

DROP TABLE IF EXISTS `EmployeeVacation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EmployeeVacation` (
  `EmployeeID` int NOT NULL,
  `LeaveID` int NOT NULL,
  `ApprovingManager` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`,`LeaveID`),
  KEY `LeaveID` (`LeaveID`),
  CONSTRAINT `employeevacation_ibfk_1` FOREIGN KEY (`EmployeeID`) REFERENCES `Employee` (`EmployeeID`),
  CONSTRAINT `employeevacation_ibfk_2` FOREIGN KEY (`LeaveID`) REFERENCES `Leaves` (`LeaveID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EmployeeVacation`
--

LOCK TABLES `EmployeeVacation` WRITE;
/*!40000 ALTER TABLE `EmployeeVacation` DISABLE KEYS */;
INSERT INTO `EmployeeVacation` VALUES (1001,1,'Manager 1'),(1002,2,'Manager 2'),(1003,3,'Manager 3'),(1004,4,'Manager 4'),(1005,5,'Manager 5'),(1006,6,'Manager 6'),(1007,7,'Manager 7'),(1008,8,'Manager 8'),(1009,9,'Manager 9'),(1010,10,'Manager 10'),(1011,11,'Manager 11'),(1012,12,'Manager 12'),(1013,13,'Manager 13'),(1014,14,'Manager 14'),(1015,15,'Manager 15');
/*!40000 ALTER TABLE `EmployeeVacation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Job`
--

DROP TABLE IF EXISTS `Job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Job` (
  `JobID` int NOT NULL,
  `DepartmentID` int DEFAULT NULL,
  `JobTitle` varchar(50) DEFAULT NULL,
  `BaseSalary` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`JobID`),
  KEY `idx_job_department` (`DepartmentID`),
  CONSTRAINT `job_ibfk_1` FOREIGN KEY (`DepartmentID`) REFERENCES `Department` (`DepartmentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Job`
--

LOCK TABLES `Job` WRITE;
/*!40000 ALTER TABLE `Job` DISABLE KEYS */;
INSERT INTO `Job` VALUES (1,1,'HR Manager',70000.00),(2,2,'Finance Analyst',65000.00),(3,3,'Software Engineer',85000.00),(4,4,'Marketing Specialist',60000.00),(5,5,'Sales Representative',55000.00),(6,6,'IT Support',50000.00),(7,7,'Customer Service Agent',45000.00),(8,8,'Logistics Coordinator',48000.00),(9,9,'Legal Advisor',90000.00),(10,10,'R&D Engineer',95000.00),(11,11,'Procurement Officer',53000.00),(12,12,'Quality Inspector',47000.00),(13,13,'Admin Assistant',42000.00),(14,14,'Training Coordinator',58000.00),(15,15,'Health & Safety Officer',62000.00);
/*!40000 ALTER TABLE `Job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Leaves`
--

DROP TABLE IF EXISTS `Leaves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Leaves` (
  `LeaveID` int NOT NULL,
  `Reason` varchar(200) DEFAULT NULL,
  `PaidStatus` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`LeaveID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Leaves`
--

LOCK TABLES `Leaves` WRITE;
/*!40000 ALTER TABLE `Leaves` DISABLE KEYS */;
INSERT INTO `Leaves` VALUES (1,'Sick Leave','PAID'),(2,'Vacation','PAID'),(3,'Family Emergency','PAID'),(4,'Medical Leave','PAID'),(5,'Maternity Leave','PAID'),(6,'Paternity Leave','PAID'),(7,'Bereavement','PAID'),(8,'Unpaid Personal Leave','UNPAID'),(9,'Public Holiday','PAID'),(10,'Educational Leave','PAID'),(11,'Jury Duty','PAID'),(12,'Military Service','PAID'),(13,'Sabbatical Leave','PAID'),(14,'Volunteer Work','UNPAID'),(15,'Study Leave','PAID');
/*!40000 ALTER TABLE `Leaves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Overtime`
--

DROP TABLE IF EXISTS `Overtime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Overtime` (
  `OvertimeID` int NOT NULL,
  `EmployeeID` int DEFAULT NULL,
  `OvertimeHours` int DEFAULT NULL,
  `OvertimeRate` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`OvertimeID`),
  KEY `EmployeeID` (`EmployeeID`),
  CONSTRAINT `overtime_ibfk_1` FOREIGN KEY (`EmployeeID`) REFERENCES `Employee` (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Overtime`
--

LOCK TABLES `Overtime` WRITE;
/*!40000 ALTER TABLE `Overtime` DISABLE KEYS */;
INSERT INTO `Overtime` VALUES (1,1001,5,30.00),(2,1002,4,32.00),(3,1003,6,28.00),(4,1004,3,35.00),(5,1005,2,25.00),(6,1006,7,33.00),(7,1007,8,29.00),(8,1008,4,30.00),(9,1009,5,31.00),(10,1010,3,34.00),(11,1011,2,27.00),(12,1012,6,32.00),(13,1013,4,28.00),(14,1014,7,36.00),(15,1015,5,29.00);
/*!40000 ALTER TABLE `Overtime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Payroll`
--

DROP TABLE IF EXISTS `Payroll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Payroll` (
  `PayrollID` int NOT NULL,
  `EmployeeID` int DEFAULT NULL,
  `PayDate` date DEFAULT NULL,
  `BasicSalary` decimal(10,2) DEFAULT NULL,
  `GrossSalary` decimal(10,2) DEFAULT NULL,
  `NetSalary` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`PayrollID`),
  KEY `EmployeeID` (`EmployeeID`),
  CONSTRAINT `payroll_ibfk_1` FOREIGN KEY (`EmployeeID`) REFERENCES `Employee` (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Payroll`
--

LOCK TABLES `Payroll` WRITE;
/*!40000 ALTER TABLE `Payroll` DISABLE KEYS */;
INSERT INTO `Payroll` VALUES (2001,1001,'2024-01-31',70000.00,75000.00,68000.00),(2002,1002,'2024-01-31',65000.00,70000.00,64000.00),(2003,1003,'2024-01-31',85000.00,90000.00,83000.00),(2004,1004,'2024-01-31',60000.00,65000.00,59000.00),(2005,1005,'2024-01-31',55000.00,60000.00,54000.00),(2006,1006,'2024-01-31',50000.00,55000.00,49000.00),(2007,1007,'2024-01-31',45000.00,50000.00,44000.00),(2008,1008,'2024-01-31',48000.00,53000.00,47000.00),(2009,1009,'2024-01-31',90000.00,95000.00,89000.00),(2010,1010,'2024-01-31',95000.00,100000.00,94000.00),(2011,1011,'2024-01-31',53000.00,58000.00,52000.00),(2012,1012,'2024-01-31',47000.00,52000.00,46000.00),(2013,1013,'2024-01-31',42000.00,47000.00,41000.00),(2014,1014,'2024-01-31',58000.00,63000.00,57000.00),(2015,1015,'2024-01-31',62000.00,67000.00,61000.00);
/*!40000 ALTER TABLE `Payroll` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `employeejobview`
--

/*!50001 DROP VIEW IF EXISTS `employeejobview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `employeejobview` AS select `e`.`EmployeeID` AS `EmployeeID`,`e`.`FirstName` AS `FirstName`,`e`.`LastName` AS `LastName`,`j`.`JobTitle` AS `JobTitle`,`d`.`DepartmentName` AS `DepartmentName` from ((`employee` `e` join `job` `j` on((`e`.`JobID` = `j`.`JobID`))) join `department` `d` on((`j`.`DepartmentID` = `d`.`DepartmentID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-10 14:20:49
