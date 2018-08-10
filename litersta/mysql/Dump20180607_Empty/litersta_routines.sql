-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: litersta
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping events for database 'litersta'
--

--
-- Dumping routines for database 'litersta'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_cleanwordfrequencies` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_cleanwordfrequencies`()
BEGIN
UPDATE litersta.wordfrequency SET word = REPLACE(word, ' ', '');
UPDATE litersta.wordfrequency SET word = REPLACE(word, "'", '');
UPDATE litersta.wordfrequency SET word = REPLACE(word, '"', '');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_datastor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_datastor`(
    IN p_datastor VARCHAR(45)
)
BEGIN
    if ( select exists (select 1 from datastor where p_datastor = datastor) ) THEN
     
        select 'Data Stor Exists !!';
     
    ELSE
     
        insert into datastor
        (
            datastor
        )
        values
        (
            p_datastor
        );
     
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_delete_wordfrequencies` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_delete_wordfrequencies`()
BEGIN
DELETE FROM litersta.wordfrequency where word like '%%';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_directory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_directory`(
    IN p_directory VARCHAR(4000)
)
BEGIN
        insert into directory
        (
            directory
        )
        values
        (
            p_directory
        );
     
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_exemplars` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_exemplars`(
    IN p_exemplars VARCHAR(450)
)
BEGIN
    #if ( select exists (select 1 from exemplars where p_exemplars = exemplars) ) THEN
     
        #select 'Exemplars Exist!!';
     
    #ELSE
     
        insert into exemplars
        (
            exemplars
        )
        values
        (
            p_exemplars
        );
     
    #END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getcategories` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getcategories`()
BEGIN
SELECT distinct a.category FROM litersta.category a, litersta.datastor b, (SELECT datastorselect FROM litersta.datastorselect ORDER BY datastorselect_id DESC LIMIT 1) c  where (a.datastor = b.datastor) and (c.datastorselect = b.datastor);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getcategoriesintegrity` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getcategoriesintegrity`()
BEGIN
SELECT distinct a.category FROM litersta.category a, litersta.datastor b, (SELECT datastorselect FROM litersta.datastorselectintegrity ORDER BY datastorselect_id DESC LIMIT 1) c, litersta.storlink d
 where (a.datastor = b.datastor) and (c.datastorselect = b.datastor) and (d.datastorselect = a.datastor) and (d.categorystorselect = a.category);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getcategoriesremove` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getcategoriesremove`()
BEGIN
SELECT distinct a.category FROM litersta.category a, litersta.datastor b, (SELECT datastorselect FROM litersta.datastorselectremove ORDER BY datastorselect_id DESC LIMIT 1) c, litersta.storlink d
 where (a.datastor = b.datastor) and (c.datastorselect = b.datastor) and (d.datastorselect = a.datastor) and (d.categorystorselect = a.category);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getcategoriesscoring` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getcategoriesscoring`()
BEGIN
SELECT distinct a.category FROM litersta.category a, litersta.datastor b, (SELECT datastorselect FROM litersta.datastorselectscoring ORDER BY datastorselect_id DESC LIMIT 1) c, litersta.storlink d 
where (a.datastor = b.datastor) and (c.datastorselect = b.datastor) and (d.datastorselect = a.datastor) and (d.categorystorselect = a.category);END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getcategoriessentiment` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getcategoriessentiment`()
BEGIN
SELECT distinct a.category FROM litersta.category a, litersta.datastor b, (SELECT datastorselect FROM litersta.datastorselectsentiment ORDER BY datastorselect_id DESC LIMIT 1) c, litersta.storlink d
 where (a.datastor = b.datastor) and (c.datastorselect = b.datastor) and (d.datastorselect = a.datastor) and (d.categorystorselect = a.category);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getcategorieswordfrequency` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getcategorieswordfrequency`()
BEGIN
SELECT distinct a.category FROM litersta.category a, litersta.datastor b, (SELECT datastorselect FROM litersta.datastorselectwordfrequency ORDER BY datastorselect_id DESC LIMIT 1) c, litersta.storlink d
 where (a.datastor = b.datastor) and (c.datastorselect = b.datastor) and (d.datastorselect = a.datastor) and (d.categorystorselect = a.category);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getdatastors` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getdatastors`()
BEGIN
SELECT datastor FROM litersta.datastor;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_newcategory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_newcategory`(
    IN p_category VARCHAR(45)
)
BEGIN
insert into category (category,datastor) values (p_category,(SELECT datastorselect FROM litersta.datastorselect ORDER BY datastorselect_id DESC LIMIT 1));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_removecategory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_removecategory`()
BEGIN
DELETE from litersta.category where category = (SELECT categorystorselect FROM litersta.categorystorselectremove ORDER BY categorystorselect_id DESC LIMIT 1);
DELETE from litersta.storlink where categorystorselect = (SELECT categorystorselect FROM litersta.categorystorselectremove ORDER BY categorystorselect_id DESC LIMIT 1);
DELETE FROM litersta.categorystorselectremove ORDER BY categorystorselect_id DESC LIMIT 1;
DELETE from litersta.categorystorselectintegrity where categorystorselect = (SELECT categorystorselect FROM litersta.categorystorselectremove ORDER BY categorystorselect_id DESC LIMIT 1);
DELETE from litersta.categorystorselectscoring where categorystorselect = (SELECT categorystorselect FROM litersta.categorystorselectremove ORDER BY categorystorselect_id DESC LIMIT 1);
DELETE from litersta.categorystorselectsentiment where categorystorselect = (SELECT categorystorselect FROM litersta.categorystorselectremove ORDER BY categorystorselect_id DESC LIMIT 1);
DELETE from litersta.categorystorselectwordfrequency where categorystorselect = (SELECT categorystorselect FROM litersta.categorystorselectremove ORDER BY categorystorselect_id DESC LIMIT 1);
delete from litersta.storlinkintegrity where datastorselect = (SELECT datastorselect FROM litersta.datastorselectintegrity ORDER BY datastorselect_id DESC LIMIT 1) AND categorystorselect = (SELECT categorystorselect FROM litersta.categorystorselectintegrity ORDER BY categorystorselect_id DESC LIMIT 1);
delete from litersta.storlinkintegritylinked where datastorselect = (SELECT datastorselect FROM litersta.datastorselectintegrity ORDER BY datastorselect_id DESC LIMIT 1) AND categorystorselect = (SELECT categorystorselect FROM litersta.categorystorselectintegrity ORDER BY categorystorselect_id DESC LIMIT 1);
delete from litersta.storlinkremove where datastorselect = (SELECT datastorselect FROM litersta.datastorselectintegrity ORDER BY datastorselect_id DESC LIMIT 1) AND categorystorselect = (SELECT categorystorselect FROM litersta.categorystorselectintegrity ORDER BY categorystorselect_id DESC LIMIT 1);
delete from litersta.storlinkremovelinked where datastorselect = (SELECT datastorselect FROM litersta.datastorselectintegrity ORDER BY datastorselect_id DESC LIMIT 1) AND categorystorselect = (SELECT categorystorselect FROM litersta.categorystorselectintegrity ORDER BY categorystorselect_id DESC LIMIT 1);
delete from litersta.storlinkscoring where datastorselect = (SELECT datastorselect FROM litersta.datastorselectintegrity ORDER BY datastorselect_id DESC LIMIT 1) AND categorystorselect = (SELECT categorystorselect FROM litersta.categorystorselectintegrity ORDER BY categorystorselect_id DESC LIMIT 1);
delete from litersta.storlinkscoringlinked where datastorselect = (SELECT datastorselect FROM litersta.datastorselectintegrity ORDER BY datastorselect_id DESC LIMIT 1) AND categorystorselect = (SELECT categorystorselect FROM litersta.categorystorselectintegrity ORDER BY categorystorselect_id DESC LIMIT 1);
delete from litersta.storlinksentiment where datastorselect = (SELECT datastorselect FROM litersta.datastorselectintegrity ORDER BY datastorselect_id DESC LIMIT 1) AND categorystorselect = (SELECT categorystorselect FROM litersta.categorystorselectintegrity ORDER BY categorystorselect_id DESC LIMIT 1);
delete from litersta.storlinksentimentlinked where datastorselect = (SELECT datastorselect FROM litersta.datastorselectintegrity ORDER BY datastorselect_id DESC LIMIT 1) AND categorystorselect = (SELECT categorystorselect FROM litersta.categorystorselectintegrity ORDER BY categorystorselect_id DESC LIMIT 1);
delete from litersta.storlinkwordfrequency where datastorselect = (SELECT datastorselect FROM litersta.datastorselectintegrity ORDER BY datastorselect_id DESC LIMIT 1) AND categorystorselect = (SELECT categorystorselect FROM litersta.categorystorselectintegrity ORDER BY categorystorselect_id DESC LIMIT 1);
delete from litersta.storlinkwordfrequencylinked where datastorselect = (SELECT datastorselect FROM litersta.datastorselectintegrity ORDER BY datastorselect_id DESC LIMIT 1) AND categorystorselect = (SELECT categorystorselect FROM litersta.categorystorselectintegrity ORDER BY categorystorselect_id DESC LIMIT 1);
delete from litersta.storlinkwordfrequencylinked where datastorselect = (SELECT datastorselect FROM litersta.datastorselectintegrity ORDER BY datastorselect_id DESC LIMIT 1) AND categorystorselect = (SELECT categorystorselect FROM litersta.categorystorselectintegrity ORDER BY categorystorselect_id DESC LIMIT 1);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_removedatastor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_removedatastor`()
BEGIN
DELETE from litersta.datastor where datastor = (SELECT datastorselect FROM litersta.datastorselectremove ORDER BY datastorselect_id DESC LIMIT 1);
DELETE from litersta.storlink where datastorselect = (SELECT datastorselect FROM litersta.datastorselectremove ORDER BY datastorselect_id DESC LIMIT 1);
DELETE FROM litersta.datastorselectremove ORDER BY datastorselect_id DESC LIMIT 1;
DELETE from litersta.datastorselect where datastorselect = (SELECT datastorselect FROM litersta.datastorselectremove ORDER BY datastorselect_id DESC LIMIT 1);
DELETE from litersta.datastorselectintegrity where datastorselect = (SELECT datastorselect FROM litersta.datastorselectremove ORDER BY datastorselect_id DESC LIMIT 1);
DELETE from litersta.datastorselectremove where datastorselect = (SELECT datastorselect FROM litersta.datastorselectremove ORDER BY datastorselect_id DESC LIMIT 1);
DELETE from litersta.datastorselectscoring where datastorselect = (SELECT datastorselect FROM litersta.datastorselectremove ORDER BY datastorselect_id DESC LIMIT 1);
DELETE from litersta.datastorselectsentiment where datastorselect = (SELECT datastorselect FROM litersta.datastorselectremove ORDER BY datastorselect_id DESC LIMIT 1);
DELETE from litersta.datastorselectwordfrequency where datastorselect = (SELECT datastorselect FROM litersta.datastorselectremove ORDER BY datastorselect_id DESC LIMIT 1);
DELETE from litersta.storlinkintegrity where datastorselect = (SELECT datastorselect FROM litersta.datastorselectremove ORDER BY datastorselect_id DESC LIMIT 1);
DELETE from litersta.storlinkintegritylinked where datastorselect = (SELECT datastorselect FROM litersta.datastorselectremove ORDER BY datastorselect_id DESC LIMIT 1);
DELETE from litersta.storlinkremove where datastorselect = (SELECT datastorselect FROM litersta.datastorselectremove ORDER BY datastorselect_id DESC LIMIT 1);
DELETE from litersta.storlinkremovelinked where datastorselect = (SELECT datastorselect FROM litersta.datastorselectremove ORDER BY datastorselect_id DESC LIMIT 1);
DELETE from litersta.storlinkscoring where datastorselect = (SELECT datastorselect FROM litersta.datastorselectremove ORDER BY datastorselect_id DESC LIMIT 1);
DELETE from litersta.storlinkscoringlinked where datastorselect = (SELECT datastorselect FROM litersta.datastorselectremove ORDER BY datastorselect_id DESC LIMIT 1);
DELETE from litersta.storlinksentiment where datastorselect = (SELECT datastorselect FROM litersta.datastorselectremove ORDER BY datastorselect_id DESC LIMIT 1);
DELETE from litersta.storlinksentimentlinked where datastorselect = (SELECT datastorselect FROM litersta.datastorselectremove ORDER BY datastorselect_id DESC LIMIT 1);
DELETE from litersta.storlinkwordfrequency where datastorselect = (SELECT datastorselect FROM litersta.datastorselectremove ORDER BY datastorselect_id DESC LIMIT 1);
DELETE from litersta.storlinkwordfrequencylinked where datastorselect = (SELECT datastorselect FROM litersta.datastorselectremove ORDER BY datastorselect_id DESC LIMIT 1);
DELETE from litersta.storlinkwordfrequencylinked where datastorselect = (SELECT datastorselect FROM litersta.datastorselectremove ORDER BY datastorselect_id DESC LIMIT 1);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_scores` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_scores`()
BEGIN
SELECT * FROM litersta.scores where Score <> 0 order by Score desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_sentiment` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_sentiment`()
BEGIN
select Document, Sentiment, count(Sentiment) Sentiment_Counts from litersta.sentiment group by Document, Sentiment;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_session` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_session`()
BEGIN
     
        insert into session
        (
            session
        )
        values
        (
            'session'
        );
     
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_storlink` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_storlink`()
BEGIN
     
INSERT INTO litersta.storlink (directory,datastorselect,categorystorselect) VALUES ((SELECT directory FROM litersta.directory ORDER BY directory_id DESC LIMIT 1),(SELECT datastorselect FROM litersta.datastorselect ORDER BY datastorselect_id DESC LIMIT 1),(SELECT categorystorselect FROM litersta.categorystorselect ORDER BY categorystorselect_id DESC LIMIT 1));
     
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_storlinkintegrity` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_storlinkintegrity`()
BEGIN
     
INSERT INTO litersta.storlinkintegrity (datastorselect,categorystorselect) VALUES ((SELECT datastorselect FROM litersta.datastorselectintegrity ORDER BY datastorselect_id DESC LIMIT 1),(SELECT categorystorselect FROM litersta.categorystorselectintegrity ORDER BY categorystorselect_id DESC LIMIT 1));     
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_storlinkintegritylinked` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_storlinkintegritylinked`()
BEGIN
     
Insert into litersta.storlinkintegritylinked (datastorselect, categorystorselect,directory) Select distinct a.datastorselect, a.categorystorselect, b.directory from (SELECT * FROM litersta.storlinkintegrity ORDER BY storlink_id DESC LIMIT 1) a, litersta.storlink b where 
(a.datastorselect = b.datastorselect) and (a.categorystorselect = b.categorystorselect);END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_storlinkremove` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_storlinkremove`()
BEGIN
     
INSERT INTO litersta.storlinkremove (datastorselect,categorystorselect) VALUES ((SELECT datastorselect FROM litersta.datastorselectremove ORDER BY datastorselect_id DESC LIMIT 1),(SELECT categorystorselect FROM litersta.categorystorselectremove ORDER BY categorystorselect_id DESC LIMIT 1));     
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_storlinkremovelinked` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_storlinkremovelinked`()
BEGIN
     
Insert into litersta.storlinkremovelinked (datastorselect, categorystorselect,directory) Select distinct a.datastorselect, a.categorystorselect, b.directory from (SELECT * FROM litersta.storlinkremove ORDER BY storlink_id DESC LIMIT 1) a, litersta.storlink b where 
(a.datastorselect = b.datastorselect) and (a.categorystorselect = b.categorystorselect);END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_storlinkscoring` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_storlinkscoring`()
BEGIN
     
INSERT INTO litersta.storlinkscoring (exemplars,datastorselect,categorystorselect) VALUES ((SELECT exemplars FROM litersta.exemplars ORDER BY exemplars_id DESC LIMIT 1),(SELECT datastorselect FROM litersta.datastorselectscoring ORDER BY datastorselect_id DESC LIMIT 1),(SELECT categorystorselect FROM litersta.categorystorselectscoring ORDER BY categorystorselect_id DESC LIMIT 1));     
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_storlinkscoringlinked` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_storlinkscoringlinked`()
BEGIN
     
Insert into litersta.storlinkscoringlinked (exemplars, datastorselect, categorystorselect,directory) Select distinct a.exemplars, a.datastorselect, a.categorystorselect, b.directory from (SELECT * FROM litersta.storlinkscoring ORDER BY storlink_id DESC LIMIT 1) a, litersta.storlink b where 
(a.datastorselect = b.datastorselect) and (a.categorystorselect = b.categorystorselect);END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_storlinksentiment` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_storlinksentiment`()
BEGIN
     
INSERT INTO litersta.storlinksentiment (datastorselect,categorystorselect) VALUES ((SELECT datastorselect FROM litersta.datastorselectsentiment ORDER BY datastorselect_id DESC LIMIT 1),(SELECT categorystorselect FROM litersta.categorystorselectsentiment ORDER BY categorystorselect_id DESC LIMIT 1));     
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_storlinksentimentlinked` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_storlinksentimentlinked`()
BEGIN
     
Insert into litersta.storlinksentimentlinked (datastorselect, categorystorselect,directory) Select distinct a.datastorselect, a.categorystorselect, b.directory from (SELECT * FROM litersta.storlinksentiment ORDER BY storlink_id DESC LIMIT 1) a, litersta.storlink b where 
(a.datastorselect = b.datastorselect) and (a.categorystorselect = b.categorystorselect);END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_storlinkwordfrequency` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_storlinkwordfrequency`()
BEGIN
     
INSERT INTO litersta.storlinkwordfrequency (datastorselect,categorystorselect) VALUES ((SELECT datastorselect FROM litersta.datastorselectwordfrequency ORDER BY datastorselect_id DESC LIMIT 1),(SELECT categorystorselect FROM litersta.categorystorselectwordfrequency ORDER BY categorystorselect_id DESC LIMIT 1));     
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_storlinkwordfrequencylinked` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_storlinkwordfrequencylinked`()
BEGIN
     
Insert into litersta.storlinkwordfrequencylinked (datastorselect, categorystorselect,directory) Select distinct a.datastorselect, a.categorystorselect, b.directory from (SELECT * FROM litersta.storlinkwordfrequency ORDER BY storlink_id DESC LIMIT 1) a, litersta.storlink b where 
(a.datastorselect = b.datastorselect) and (a.categorystorselect = b.categorystorselect);END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_top_5k_wordfrequncies` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_top_5k_wordfrequncies`()
BEGIN
SELECT word, SUM(frequency) occurence FROM litersta.wordfrequency Group By word order by occurence desc LIMIT 5000;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-07 21:54:32
