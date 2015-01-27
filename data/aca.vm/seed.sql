CREATE TABLE IF NOT EXISTS `aca_user` (
  `user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `shipping_address_id` int(10) unsigned DEFAULT NULL,
  `billing_address_id` int(10) unsigned DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

truncate aca_user;

INSERT INTO `aca_user` (`user_id`, `name`, `username`, `password`, `shipping_address_id`, `billing_address_id`, `last_login`)
VALUES
	(1,'Pha Row','pha','row',1,1,'2014-10-30 20:38:32'),
	(2,'Skid Row','skid','row',2,3,'2014-10-30 20:39:02'),
	(3,'Scare K. Row','scare','row',5,5,'2014-10-30 20:39:32');

CREATE TABLE IF NOT EXISTS `aca_product` (
  `product_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `price` decimal(11,2) DEFAULT NULL,
  `date_added` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

truncate aca_product;

INSERT INTO `aca_product` (`product_id`, `name`, `description`, `image`, `category`, `price`, `date_added`)
VALUES
	(1,'Tibetan Painting','Reproduced here are exquisite paintings of the historical Buddha, bodhisattvas, historical and mythological figures, protectors of the Buddhist law, tutelary deities, as well as rare bardo paintings, black background scrolls, and mandalas. The selection of these sacred paintings which date from the late twelfth to the early twentieth centuries, was made on the basis of their stylistic or iconographic rarity—and their sheer beauty. Very few reproductions of these masterpieces have been published before.','http://ecx.images-amazon.com/images/I/51YS791RQHL.jpg','Books',53.93,'2014-10-30 20:41:38'),
	(2,'Pale Blue Dot: A Vision of the Human Future in Space','In Cosmos, the late astronomer Carl Sagan cast his gaze over the magnificent mystery of the Universe and made it accessible to millions of people around the world. Now in this stunning sequel, Carl Sagan completes his revolutionary journey through space and time.\n\nFuture generations will look back on our epoch as the time when the human race finally broke into a radically new frontier--space. In Pale Blue Dot Sagan traces the spellbinding history of our launch into the cosmos and assesses the future that looms before us as we move out into our own solar system and on to distant galaxies beyond. The exploration and eventual settlement of other worlds is neither a fantasy nor luxury, insists Sagan, but rather a necessary condition for the survival of the human race.\n\n\"TAKES READERS FAR BEYOND Cosmos . . . Sagan sees humanity\'s future in the stars.\"\n--Chicago Tribune','http://ecx.images-amazon.com/images/I/518xPlisLzL.jpg','Books',9.95,'2014-10-30 20:43:12'),
	(3,'The Complete Book of Sushi','The Complete Book of Sushi is the definitive collection of traditional, contemporary and innovative recipes for lovers of this Japanese cuisine. Fresh and delicious, sushi is one of the healthiest foods you can eat, as it\'s low in fat and high in essential vitamins and minerals. Aesthetically pleasing, sushi is also surprisingly simple to make. This practical book will show you how to create beautiful and elegant sushi dishes with ease.\n\nFeaturing a wide variety of recipes for:\nPlanning and preparing a sushi meal\nSushi rolls\nNigiri-sushi\nMolded sushi\nHand-Rolled sushi\nVegetarian sushi\nChirashi-sushi\nWrapped sushi\nSushi rice in fried tofu bags\nSushi in a bowl\nNew sushi\nDrinks, sauces and side dishes','http://ecx.images-amazon.com/images/I/71v02Tdg3NL.jpg','Books',19.86,'2014-10-30 20:44:42'),
	(4,'Apple MacBook Pro MGXA2LL/A 15.4-Inch Laptop with Retina Display','2.2 GHz Quad-Core Intel Core i7 Processor (Turbo Boost up to 3.4 GHz, 6 MB shared L3 cache)\n16 GB 1600 MHz DDR3L RAM; 256 GB PCIe-based Flash Storage\n15.4-inch IPS Retina Display, 2880-by-1800 resolution\nIntel Iris Pro Graphics\nOS X Mavericks, Up to 8 Hours of Battery Life\n','http://ecx.images-amazon.com/images/I/81q3rm8EjhL._SL1500_.jpg','Tech',1899.23,'2014-10-30 20:48:48'),
	(5,'Apple MacBook Air MD711LL/B 11.6-Inch Laptop','1.4 GHz Dual-Core Intel Core i5 (Turbo Boost up to 2.7GHz) with 3MB shared L3 cache\n4 GB of 1600 MHz LPDDR3 onboard memory\n128 GB PCIe-based flash storage\n11.6-inch LED-backlit glossy widescreen display; Intel HD Graphics 5000\nOS X Mavericks; Up to 9 hours of battery life\n','http://ecx.images-amazon.com/images/I/71pqjnfzgkL._SL1500_.jpg','Tech',839.00,'2014-10-30 20:50:29');

CREATE TABLE IF NOT EXISTS `aca_order_product` (
  `order_product_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) unsigned DEFAULT NULL,
  `product_id` int(11) unsigned DEFAULT NULL,
  `quantity` int(5) unsigned DEFAULT NULL,
  `price` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`order_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `aca_order` (
  `order_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned DEFAULT NULL,
  `order_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `aca_address` (
  `address_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `street` varchar(255) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `zip` int(5) DEFAULT NULL,
  `date_added` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

truncate aca_address;

INSERT INTO `aca_address` (`address_id`, `street`, `city`, `state`, `zip`, `date_added`)
VALUES
	(1,'123 Main Street','Austin','TX',78744,'2014-10-30 20:34:49'),
	(2,'456 Kane Street','Austin','TX',73442,'2014-10-30 20:35:08'),
	(3,'1600 Pleasant Valley','Austin','TX',78756,'2014-10-30 20:35:55'),
	(5,'1100 Congress','Austin','TX',78234,'2014-10-30 20:39:18')