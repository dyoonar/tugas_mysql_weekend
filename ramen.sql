CREATE DATABASE IF NOT EXISTS `tugas_weekend`;
USE `tugas_weekend`;
CREATE TABLE `ramen_ratings` ( 
`review` INT(5) NOT NULL, 
`brand` VARCHAR(100), 
`variety` VARCHAR(100), 
`style` VARCHAR(10), 
`country` VARCHAR(50), 
`star` FLOAT, 
`top_ten` VARCHAR(10), 
PRIMARY KEY (`Review`) 
); 
LOAD DATA LOCAL INFILE '/singo/ramen-ratings.csv' INTO TABLE `tugas_weekend`.`ramen` CHARACTER SET 'utf8' FIELDS TERMINATED BY ',' ENCLOSED BY '"' IGNORE 1 LINES (`review`, `brand`, `variety`, `style`, `country`, `star`, `top_ten`); 

SELECT * FROM ramen WHERE star >= 4;

SELECT * FROM ramen WHERE Country = 'Japan';

SELECT review, brand, UPPER(variety), style, country, star, top_ten FROM ramen;
