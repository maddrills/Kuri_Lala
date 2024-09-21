USE `delivery_system`;

SET SQL_SAFE_UPDATES = 0;

INSERT INTO `customer`(`name`,`phone_number`) VALUES ('Joseph Kurilala', '1234567891');
INSERT INTO `customer`(`name`,`phone_number`) VALUES ('Violet Wick', '9086410268');
INSERT INTO `customer`(`name`,`phone_number`) VALUES ('George Nolan', '9341725638');
INSERT INTO `customer`(`name`,`phone_number`) VALUES ('Ezio Auditore', '8097634517');
INSERT INTO `customer`(`name`,`phone_number`) VALUES ('Arno Dorian', '8856123567');

SELECT * FROM `customer`;


INSERT INTO `delivery_address`(`address`) VALUES ('4443-E Church East');
INSERT INTO `delivery_address`(`address`) VALUES ('221 - B London');
INSERT INTO `delivery_address`(`address`) VALUES ('suite 776 - Texas');

SELECT * FROM `delivery _address`;


INSERT INTO `payment`(`payment_type`,`name`,`billing_address`,`amount`) VALUES ('UPI', 'Joseph', 'e-444 / 10 church road',4232);
INSERT INTO `payment`(`payment_type`,`name`,`billing_address`,`amount`) VALUES ('Online Banking', 'George', 'e-224 / 10 church road',5534);
INSERT INTO `payment`(`payment_type`,`name`,`billing_address`,`amount`) VALUES ('Card', 'Violet', 'e-111 / 10 church road',7658);

SELECT * FROM `payment`;

DELETE FROM `order`;
INSERT INTO `order`(`delivery_method`,`quantity`,`address_id`,`payment_id`,`customer_id`) VALUES (0, 5, 2, 1, 1);
INSERT INTO `order`(`delivery_method`,`quantity`,`address_id`,`payment_id`,`customer_id`) VALUES (1, 15, null, 1, 1);
INSERT INTO `order`(`delivery_method`,`quantity`,`address_id`,`payment_id`,`customer_id`) VALUES (1, 5, null, 1, 2);
INSERT INTO `order`(`delivery_method`,`quantity`,`address_id`,`payment_id`,`customer_id`) VALUES (0, 11, 1, 1, 2);
INSERT INTO `order`(`delivery_method`,`quantity`,`address_id`,`payment_id`,`customer_id`) VALUES (0, 4, 1, 1, 2);

SELECT * FROM `order`;

INSERT INTO `products`(`product_name`) VALUES ('Toy Car');
INSERT INTO `products`(`product_name`) VALUES ('Phone');
INSERT INTO `products`(`product_name`) VALUES ('Laptop');
INSERT INTO `products`(`product_name`) VALUES ('Burger');

INSERT INTO `supplier`(`supplier_name`) VALUES ('Target');
INSERT INTO `supplier`(`supplier_name`) VALUES ('ATNT');
INSERT INTO `supplier`(`supplier_name`) VALUES ("mcdonald's");
INSERT INTO `supplier`(`supplier_name`) VALUES ('ASUS');

INSERT INTO `products_supplier`(`product_id`,`supplier_id`) VALUES (1,4);
INSERT INTO `products_supplier`(`product_id`,`supplier_id`) VALUES (2,3);
INSERT INTO `products_supplier`(`product_id`,`supplier_id`) VALUES (2,2);
INSERT INTO `products_supplier`(`product_id`,`supplier_id`) VALUES (2,1);


-- Find all order_ID s placed by a specific customer (e.g., CustomerId = 10):
SELECT `order_id` FROM `order` AS `o`
LEFT JOIN `customer` AS `c` ON  `o`.`customer_id` = `c`.`customer_id`
WHERE `c`.`customer_id` = 2;

SELECT * FROM `order` AS `o`
LEFT JOIN `customer` AS `c` ON  `o`.`customer_id` = `c`.`customer_id`
WHERE `c`.`customer_id` = 2;

-- Find all supplier details for a specific product (e.g., ProductId = 10):
SELECT * FROM `supplier` AS `su`
LEFT JOIN `products_supplier` AS `ps`ON `ps`.`supplier_id` = `su`.`supplier_id`
LEFT JOIN `products` AS `p`ON `p`.`product_id` = `ps`.`product_id`;









