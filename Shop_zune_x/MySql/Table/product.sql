CREATE TABLE `shop_zune_x`.`products` (
                                          `product_id` INT NOT NULL AUTO_INCREMENT,
                                          `product_name` VARCHAR(45) NOT NULL,
                                          `product_code` VARCHAR(45) NOT NULL,
                                          `product_status` VARCHAR(100) NOT NULL,
                                          `product_price` DOUBLE NOT NULL,
                                          `product_size` VARCHAR(10) NOT NULL,
                                          `product_quantity` int NOT NULL,
                                          `product_create_At` datetime NOT NULL,
                                          `product_updatedAt` datetime DEFAULT NULL,
                                          `product_urlImage` VARCHAR(255) NOT NULL,
                                          PRIMARY KEY (`product_id`),
                                          UNIQUE INDEX `product_name_UNIQUE` (`product_name` ASC) VISIBLE,
                                          UNIQUE INDEX `product_code_UNIQUE` (`product_code` ASC) VISIBLE);
