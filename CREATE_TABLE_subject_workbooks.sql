CREATE TABLE IF NOT EXISTS `homeschool`.`subject_workbooks` (
  `workbook_id` INT NOT NULL AUTO_INCREMENT,
  `subject_id` INT NOT NULL,
  `description` VARCHAR(255) NOT NULL,
  `abbreviation` VARCHAR(5) NULL,
  PRIMARY KEY (`workbook_id`),
  INDEX `subject_id_wrkbk_idx` (`subject_id` ASC) VISIBLE,
  CONSTRAINT `subject_id_workbooks`
    FOREIGN KEY (`subject_id`)
    REFERENCES `homeschool`.`subjects` (`subject_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);
