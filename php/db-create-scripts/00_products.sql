--
-- Create table for products
--
CREATE TABLE IF NOT EXISTS `products` (
    `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` varchar(255) DEFAULT NULL,
    `description` text DEFAULT NULL,
    `price` decimal(10, 2) DEFAULT NULL,
    `image_url` text DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `id` (`id`)
);
--
-- insert example products
--
INSERT INTO `products` (
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
    ),
    (
        'DELL XPS 15 Laptop',
        '-11th Gen Intel® Core™ i7-11800H processor\n-Windows 10 Home\n-GeForce RTX™ 3050 Laptop GPU 4GB GDDR6\n-NVIDIA® GeForce RTX™ Studio Laptop',
        1500.00,
        'https://i.dell.com/is/image/DellContent/content/dam/ss2/product-images/page/uber/prod-390550-notebook-precision-16-5680-lf-1023x842.png?fmt=png-alpha&wid=1023&hei=842'
    ),
    (
        'Lenovo ThinkPad X1 Carbon',
        '-11th Gen Intel® Core™ i5-1135G7 processor\n-Windows 10 Pro\n-Intel® Iris® Xe Graphics\n-14" FHD (1920 x 1080) IPS, low power, anti-glare, 400 nits',
        1400.00,
        'https://p2-ofp.static.pub/fes/cms/2022/03/16/te0f46qyrb1r0uh9tvu2ofhiwdxwwn224817.png'
    ),
    (
        'HP Spectre x360 Convertible Laptop',
        '-11th Gen Intel® Core™ i7-1165G7 processor\n-Windows 10 Home 64\n-Intel® Iris® Xe Graphics\n-13.3" diagonal FHD IPS micro-edge WLED-backlit multitouch, edge-to-edge glass, Intel® Evo™ platform',
        1300.00,
        'https://ssl-product-images.www8-hp.com/digmedialib/prodimg/lowres/c08509869.png'
    ),
    (
        'Apple MacBook Pro',
        '-Apple M1 chip with 8-core CPU and 8-core GPU\n-13.3-inch Retina display with True Tone\n-8GB unified memory\n-256GB SSD storage',
        1700.00,
        'https://i.kinja-img.com/gawker-media/image/upload/c_fit,f_auto,g_center,q_60,w_1315/43a294583ca2d5cdacf50dc2eb325e57.jpg'
    ),
    (
        'Razer Blade 15 Gaming Laptop',
        '-10th Gen Intel® Core™ i7-10750H processor\n-Windows 10 Home\n-NVIDIA® GeForce RTX™ 3060 Laptop GPU\n-Full HD 144Hz, 100% sRGB, 4.9mm bezel',
        1600.00,
        'https://m.media-amazon.com/images/I/61MxE93f37L._AC_SL1500_.jpg'
    );