DROP DATABASE IF EXISTS `delivery_system`;

CREATE DATABASE `delivery_system`;

USE `delivery_system`;

-- YELLOW
CREATE TABLE `customer`(
`customer_id` INTEGER NOT NULL,
`name` VARCHAR(65) NOT NULL,
`phone_number` CHAR(10)  CHECK (length(`phone_number`)= 10),
CONSTRAINT `pk_key_customar` PRIMARY KEY(`customer_id`)
)ENGINE = 'Innodb' AUTO_INCREMENT = 1, DEFAULT CHARSET 'latin1';

CREATE TABLE `order`(
`order_id` INTEGER NOT NULL,
`delivery_method` BOOLEAN,
`quantity` INTEGER NOT NULL CHECK(`quantity` > 0),
`address_id` INTEGER NOT NULL,
`payment_id` INTEGER NOT NULL,
CONSTRAINT `pk_key_order` PRIMARY KEY(`order_id`)
)ENGINE = 'Innodb' AUTO_INCREMENT = 1, DEFAULT CHARSET 'latin1';

CREATE TABLE `delivery_address`(
`address_id` INTEGER NOT NULL,
`address` VARCHAR(80) NOT NULL,
CONSTRAINT `pk_key_delivery_address` PRIMARY KEY(`address_id`)
)ENGINE = 'Innodb' AUTO_INCREMENT = 1, DEFAULT CHARSET 'latin1';

CREATE TABLE `track_shipments`(
`tracking_id` INTEGER NOT NULL,
`order_placed` BOOLEAN DEFAULT 0 NOT NULL,
`displaced`BOOLEAN DEFAULT 0 NOT NULL,
`shipped` BOOLEAN DEFAULT 0 NOT NULL,
`out_for_delivery` BOOLEAN DEFAULT 0 NOT NULL,
`delivered` BOOLEAN DEFAULT 0 NOT NULL,
`order_id` BOOLEAN DEFAULT 0 NOT NULL,
CONSTRAINT `pk_key_order` PRIMARY KEY(`order_id`)
)ENGINE = 'Innodb' AUTO_INCREMENT = 1, DEFAULT CHARSET 'latin1';

CREATE TABLE `payment`(
`payment_id` INTEGER NOT NULL,
`payment_type` VARCHAR(30) NOT NULL,
`name` VARCHAR(65) NOT NULL,
`billing_address` VARCHAR(80) NOT NULL,
`amount` DOUBLE NOT NULL CHECK (`amount` >= 0.0),
CONSTRAINT `pk_key_payment` PRIMARY KEY(`payment_id`)
)ENGINE = 'Innodb' AUTO_INCREMENT = 1, DEFAULT CHARSET 'latin1';


-- GREEN
CREATE TABLE `orders_products`(
`product_id` INTEGER NOT NULL,
`order_id` INTEGER NOT NULL,
CONSTRAINT `pk_key_orders_products_product_id` PRIMARY KEY(`product_id`,`order_id`)
)ENGINE = 'Innodb' AUTO_INCREMENT = 1, DEFAULT CHARSET 'latin1';


-- BLUE
CREATE TABLE `products`(
`product_id` INTEGER NOT NULL,
`product_name` VARCHAR(65) NOT NULL
)ENGINE = 'Innodb' AUTO_INCREMENT = 1, DEFAULT CHARSET 'latin1';

CREATE TABLE `category`(
`product_id` INTEGER NOT NULL,
`order_id` VARCHAR(65) NOT NULL,
`phone_number` CHAR(10)  CHECK (length(`phone_number`)= 10),
CONSTRAINT `pk_key_customar` PRIMARY KEY(`product_id`)
)ENGINE = 'Innodb' AUTO_INCREMENT = 1, DEFAULT CHARSET 'latin1';

CREATE TABLE `products_supplier`(
`product_id` INTEGER NOT NULL,
`supplier_id` INTEGER NOT NULL,
CONSTRAINT `pk_key_products_supplier_product_id` PRIMARY KEY(`product_id`,`supplier_id`)
)ENGINE = 'Innodb' AUTO_INCREMENT = 1, DEFAULT CHARSET 'latin1';

CREATE TABLE `supplier`(
`supplier_id` INTEGER NOT NULL,
`supplier_name` VARCHAR(65) NOT NULL,
CONSTRAINT `pk_key_supplier` PRIMARY KEY(`supplier_id`)
)ENGINE = 'Innodb' AUTO_INCREMENT = 1, DEFAULT CHARSET 'latin1';

CREATE TABLE `product_images`(
`image_id` INTEGER NOT NULL,
`url` VARCHAR(80) NOT NULL,
`image` BLOB,
`product_id` INTEGER NOT NULL,
CONSTRAINT `pk_key_product_images` PRIMARY KEY(`image_id`)
)ENGINE = 'Innodb' AUTO_INCREMENT = 1, DEFAULT CHARSET 'latin1';




