--
-- create users table
--
CREATE TABLE IF NOT EXISTS `users` (
    `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `username` varchar(255) DEFAULT NULL,
    `fullname` varchar(255) DEFAULT NULL,
    `password` varchar(255) DEFAULT NULL,
    `usertype` varchar(255) DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `id` (`id`)
);
--
-- add example user
--
INSERT INTO `users` (
        `username`,
        `fullname`,
        `password`,
        `usertype`
    )
VALUES ('Webuser', 'Web User', "Lab2021", "admin");