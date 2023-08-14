--
-- Create the orders table
--
CREATE TABLE `orders` (
    id int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    productId int(10) UNSIGNED NOT NULL,
    userId int(10) UNSIGNED NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `id` (`id`),
    FOREIGN KEY (productId) REFERENCES products(id),
    FOREIGN KEY (userId) REFERENCES users(id)
);