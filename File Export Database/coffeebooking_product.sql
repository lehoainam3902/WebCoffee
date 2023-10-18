-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: coffeebooking
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `thumbnail` varchar(500) DEFAULT NULL,
  `description` longtext,
  `category_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Cà phê đá',20000,0,'capheda.png','Cà phê sữa đá pha theo phong cách Việt Nam gồm cà phê rang xay được pha phin, 1 hoặc hai phần sữa tùy theo khẩu vị của người uống.',1,'2023-10-14 00:00:00','2023-10-14 00:00:00'),(2,'Cappuccino',35000,0,'cappuccino.jpg',' Trong các quán cà phê ở Ý, Barista thường dùng khuôn hay dùng thìa và bằng cách khuấy điệu nghệ trong lúc rắc bột để tạo thành các hình nghệ thuật.',1,'2023-10-14 00:00:00','2023-10-14 00:00:00'),(3,'Latte',45000,0,'latte.jpg','Latte là một loại thức uống có nguồn gốc từ nước Ý.  Một loại đồ uống kết hợp giữa espresso và sữa là sự kết hợp giữa espresso và sữa đánh (khuấy).',1,'2023-10-14 00:00:00','2023-10-14 00:00:00'),(4,'Phin sữa đá',35000,0,'phinsuada.jpg','Cà phê được pha từ Phin truyền thống, hoà cùng sữa đặc sánh và thêm vào chút đá tạo nên ly Phin Sữa Đá – Đậm Đà Chất Phin.',1,'2023-10-14 00:00:00','2023-10-14 00:00:00'),(5,'Cà phê muối',25000,0,'caphemuoi.png','Cà phê muối có nguyên liệu chính là cà phê, sữa và muối ăn tinh. Cà phê muối mang đậm hương vị của Huế.',1,'2023-10-14 00:00:00','2023-10-14 00:00:00'),(6,'Bạc xỉu',35000,0,'bacxiu.jpg','Bạc xỉu là một loại đồ uống được làm từ cà phê có pha sữa nhưng phần sữa sẽ nhiều hơn so với phần cà phê. ',1,'2023-10-14 00:00:00','2023-10-14 00:00:00'),(7,'Cà phê cốt dừa',50000,0,'caphecotdua.jpg','Vị béo ngậy của cốt dừa xen lẫn vị đắng đặc trưng của cà phê tạo thành một món đồ uống hấp dẫn và độc đáo.',1,'2023-10-14 00:00:00','2023-10-14 00:00:00'),(8,'Mocha',45000,0,'mocha.png','Cà phê Mocha là cà phê được tạo ra từ cà phê espresso và sữa nóng, có thêm bột hoặc nước sốt socola.',1,'2023-10-14 00:00:00','2023-10-14 00:00:00'),(9,'Espresso',50000,0,'espresso.jpg','Espresso là thức uống có sử dụng  phương pháp rang và pha chế cà phê có nguồn gốc từ Ý.',1,'2023-10-14 00:00:00','2023-10-14 00:00:00'),(10,'Trà Nhài',30000,0,'tranhai.jpg','Trà nhài là một loại trà ướp bằng hương hoa lài Trà lài là loại trà ướp hương nổi tiếng nhất ở Trung Quốc.',2,'2023-10-14 00:00:00','2023-10-14 00:00:00'),(11,'Trà Ô-long',40000,0,'traolong.jpg','Trà ô long là loại trà phổ biến tại Việt Nam và có mùi thơm nhẹ nhàng, nước xanh vàng, vị dịu nhẹ dễ uống.',2,'2023-10-14 00:00:00','2023-10-14 00:00:00'),(12,'Trà cam quế',45000,0,'tracam.jpg','Trà cam quế có vị chua nhè nhẹ của cam vàng, một chút cay tê từ quế, hoà quyện trong vị ngọt thanh của mật ong.',2,'2023-10-14 00:00:00','2023-10-14 00:00:00'),(13,'Trà quất mật ong',45000,0,'traquatmatong.jpg','Trà quất mật ong không chỉ ngon mà còn giàu vitamin C. Thức uống này giúp tăng cường sức đề kháng và làm sạch gan.',2,'2023-10-14 00:00:00','2023-10-14 00:00:00'),(14,'Trà đào cam sả',40000,0,'tradaocamsa.jpg','Vị thanh ngọt của đào, dịu của Cam Vàng,trà đen tươi, sả chính là điểm sáng làm nên sức hấp dẫn của thức uống này.',2,'2023-10-14 00:00:00','2023-10-14 00:00:00'),(15,'Trà hạt sen',45000,0,'trahatsen.jpg','Trà hạt sen là thức uống thanh mát, nhẹ nhàng  phù hợp cho cả buổi sáng và chiều tối.',2,'2023-10-14 00:00:00','2023-10-14 00:00:00'),(16,'Matcha',50000,0,'matcha.jpg','Matcha có tác dụng tốt với thể chất và tinh thần, kích thích làm tỉnh táo và giảm căng thẳng. ',2,'2023-10-14 00:00:00','2023-10-14 00:00:00'),(17,'Trà đen ',35000,0,'traden.jpg','Trà đen từ lâu đã trở thành thức uống quen thuộc đem lại sức khỏe đối với người dân Việt Nam.',2,'2023-10-14 00:00:00','2023-10-14 00:00:00'),(18,'Trà chanh',20000,0,'trachanh.jpg','Trà chanh là sự kết hợp cân bằng giữa vị thanh chát dịu của trà cùng vị chua của chanh.',2,'2023-10-14 00:00:00','2023-10-14 00:00:00'),(19,'Hướng dương',25000,0,'huongduong.jpg','Hạt hướng dương thích hợp khi đi kèm với các loại đồ uống của quán.',3,'2023-10-14 00:00:00','2023-10-14 00:00:00'),(20,'Bánh Chiffon',25000,0,'banhchiffon.jpg','Bánh ngọt gồm 3 vị bao gồm: cacao, cà phê, vani.',3,'2023-10-14 00:00:00','2023-10-14 00:00:00'),(21,'Bánh cuộn trà xanh',35000,0,'banhcuontraxanh.jpg','Thành phần: Trứng gà, kem sữa, bột mỳ, đường, mật ong, bột trà xanh (1%), rượu rum.  ',3,'2023-10-14 00:00:00','2023-10-14 00:00:00'),(22,'Bánh cuộn socola',25000,0,'banhcuonsocola.jpg','Thành phần: Trứng gà, đường, bột mỳ, bột ca cao (2,5%), bơ, bột làm bánh Tartar, mật ong, siro đường, rượu rum.   ',3,'2023-10-14 00:00:00','2023-10-14 00:00:00'),(23,'Mousse chanh leo',30000,0,'moussechanhleo.jpg','Thành phần: Kem sữa, kem thực vật, đường, phô mai kem, nước, trứng gà, chanh leo (4,5%), chất tạo đông gelatine, bột mỳ.',3,'2023-10-14 00:00:00','2023-10-14 00:00:00'),(24,'Mousse matcha',30000,0,'moussematcha.jpg','Thành phần: Kem sữa, kem thực vật, sữa tươi, đường, trứng gà,  sô cô la trắng, bột mỳ, bột trà xanh (1%). ',3,'2023-10-14 00:00:00','2023-10-14 00:00:00'),(25,'Bánh sừng bò',15000,0,'banhsungbo.jpg','Bánh sừng bò của cửa hàng gồm thành phần: Bột mỳ, men, muối, đường, trứng, sữa bột, bơ, nước.',3,'2023-10-14 00:00:00','2023-10-14 00:00:00'),(26,'Bánh Tiramisu',35000,0,'banhtiramisu.jpg','Thành phần: Phô mai kem, bột hạnh nhân, cà phê, rượu Kahlua, bơ, kem tươi, cacao, bánh quy, đường.',3,'2023-10-14 00:00:00','2023-10-14 00:00:00'),(27,'Bánh Red Velvet',50000,0,'banhredvelvet.jpg','Bánh Red Velvet bao gồm thành phần: Bơ, đường, trứng, bột mì, bột nở, cacao, phô mai kem, chanh tươi, màu thực phẩm.',3,'2023-10-14 00:00:00','2023-10-14 00:00:00');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-15  0:00:54
