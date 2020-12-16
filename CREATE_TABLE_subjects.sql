CREATE TABLE `homeschool`.`subjects` (
  `subject_id` INT NOT NULL AUTO_INCREMENT,
  `subject_name` VARCHAR(255) NOT NULL,
  `grade_level` VARCHAR(2) NOT NULL,
  PRIMARY KEY (`subject_id`),
  UNIQUE INDEX `subject_id_UNIQUE` (`subject_id` ASC) VISIBLE
);
