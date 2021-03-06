CREATE DATABASE IF NOT EXISTS `romenys`;

USE `romenys`;

CREATE TABLE `romenys`.`house` (
 `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
 `color` VARCHAR(45) NOT NULL DEFAULT '',
 `user` INTEGER UNSIGNED DEFAULT NULL,
 PRIMARY KEY(`id`),
 INDEX `FOREIGN_KEY`(`user`),
 CONSTRAINT `FK_house_user` FOREIGN KEY `FK_house_user` (`user`)
   REFERENCES `user` (`id`)
   ON DELETE CASCADE
   ON UPDATE CASCADE
)
ENGINE = InnoDB;