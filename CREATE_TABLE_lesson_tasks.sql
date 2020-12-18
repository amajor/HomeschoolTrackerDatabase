CREATE TABLE IF NOT EXISTS `homeschool`.`lesson_tasks` (
  `task_id` INT NOT NULL AUTO_INCREMENT,
  `lesson_id` INT NOT NULL,
  `workbook_id` INT NULL,
  `description` VARCHAR(255) NOT NULL,
  `assets` VARCHAR(255) NULL,
  `tags` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`task_id`),
  INDEX `lesson_id_tasks_idx` (`lesson_id` ASC) VISIBLE,
  INDEX `workbook_id_tasks_idx` (`workbook_id` ASC) VISIBLE,
  CONSTRAINT `lesson_id_tasks`
    FOREIGN KEY (`lesson_id`)
    REFERENCES `homeschool`.`subject_lessons` (`lesson_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `workbook_id_tasks`
    FOREIGN KEY (`workbook_id`)
    REFERENCES `homeschool`.`subject_workbooks` (`workbook_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);
