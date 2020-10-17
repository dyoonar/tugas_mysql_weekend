CREATE DATABASE `tugas_weekend`; 
SHOW DATABASES; 
USE `tugas_weekend`;
CREATE TABLE `tugas_weekend`.`netflix` (
 `show_id` INT(8) NOT NULL, 
 `type` VARCHAR(20), 
 `title` VARCHAR(100), 
 `director` VARCHAR(100), 
 `cast` TEXT, 
 `country` VARCHAR(100), 
 `date_added` VARCHAR(20), 
 `release_year` YEAR, 
 `rating` VARCHAR(10), 
 `duration` VARCHAR(20), 
 `listed_in` TEXT, 
 `description` TEXT, 
 PRIMARY KEY (`show_id`) ); 

LOAD DATA LOCAL INFILE 'Z:\\home\\linuxuser\\Documents\\Tugas\\netflix_title.csv' INTO TABLE `tugas_weekend`.`netflix` CHARACTER SET 'utf8' FIELDS ESCAPED BY '\\' TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n' IGNORE 1 LINES (`show_id`, `type`, `title`, `director`, `cast`, `country`, `date_added`, `release_year`, `rating`, `duration`, `listed_in`, `description`); 

SELECT * FROM netflix WHERE duration = '90 min';

SELECT * FROM netflix_titles WHERE country = 'Thailand';

SELECT * FROM netflix_titles WHERE release_year > 2015;
