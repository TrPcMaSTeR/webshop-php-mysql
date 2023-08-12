--
-- create users table
--
CREATE TABLE IF NOT EXISTS `users` (
    `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `username` varchar(255) DEFAULT NULL,
    `fullname` varchar(255) DEFAULT NULL,
    `usertype` int(11) DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `id` (`id`)
);

--
-- add example user
--
INSERT INTO `users` (`id`, `username`, `fullname`, `usertype`)
VALUES (1, 'Webuser', 'Web User', 0);