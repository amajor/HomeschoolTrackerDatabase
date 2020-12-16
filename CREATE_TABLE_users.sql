CREATE TABLE `homeschool`.`users` (
  `user_id` INT NOT NULL AUTO_INCREMENT,
  `user_name` VARCHAR(16) NOT NULL,
  `user_role` VARCHAR(45) NOT NULL DEFAULT 'student',
  `email` VARCHAR(255) NULL,
  `password` VARCHAR(32) NOT NULL,
  `last_modified` DATETIME ON UPDATE CURRENT_TIMESTAMP,
  `create_time` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  UNIQUE INDEX `user_id_UNIQUE` (`user_id` ASC) VISIBLE
);
