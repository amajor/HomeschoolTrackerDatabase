CREATE TABLE `homeschool`.`subject_lessons` (
  `lesson_id` INT NOT NULL AUTO_INCREMENT,
  `lesson_number` VARCHAR(3) NOT NULL,
  `subject_id` INT NOT NULL,
  PRIMARY KEY (`lesson_id`),
  INDEX `subject_id_idx` (`subject_id` ASC) VISIBLE,
  CONSTRAINT `subject_id_lessons`
    FOREIGN KEY (`subject_id`)
    REFERENCES `homeschool`.`subjects` (`subject_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);
