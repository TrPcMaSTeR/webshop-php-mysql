--
-- Create table for products
--
CREATE TABLE IF NOT EXISTS `products` (
    `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` varchar(255) DEFAULT NULL,
    `description` text DEFAULT NULL,
    `price` decimal(10, 2) DEFAULT NULL,
    `image_url` text DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `id` (`id`)
);
--
-- insert 3 example products
--
INSERT INTO `products` (
        `id`,
        `name`,
        `description`,
        `price`,
        `image_url`
    )
VALUES (
        'MSI GTX 4060 Gaming Laptop',
        '-13th Gen Intel® Core™ i9-13900H processor\n-Windows 11 Home / Windows 11 Pro (MSI recommends Windows 11 Pro for business.)\n-Up to latest GeForce RTX™ 4070 Laptop GPU 8GB GDDR6\n-NVIDIA® GeForce RTX™ Studio Laptop',
        1200.00,
        'https://asset.msi.com/resize/image/global/product/product_1684823628ee9fd2fb935bf0ae4268b22b1e19d75c.png62405b38c58fe0f07fcef2367d8a9ba1/1024.png'
    ),
    (
        'ACER GTX 3060 Gaming Laptop',
        '-12th Gen Intel® Core™ i9-12500H processor\n-Windows 11 Pro \n-Up to latest GeForce RTX™ 3060 Laptop GPU 8GB GDDR6\n-NVIDIA® GeForce RTX™ Studio Laptop',
        1000.00,
        'https://images.acer.com/is/image/acer/Nitro_5_AGW_KSP08-3?$responsive$'
    ),
    (
        'ASUS ROG 2080 Gaming Laptop',
        '-11th Gen Intel® Core™ i5-11200H processor\n-Windows 10 Pro \n-Up to latest GeForce RTX™ 2080 Laptop GPU 6GB GDDR6\n-NVIDIA® GeForce RTX™ Studio Laptop',
        900.00,
        'https://media.ldlc.com/r374/ld/products/00/06/01/54/LD0006015432_0006015445.jpg'
    );