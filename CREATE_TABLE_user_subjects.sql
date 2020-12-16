CREATE TABLE `homeschool`.`user_subjects` (
  `user_id` INT NOT NULL,
  `subject_id` INT NOT NULL,
  `create_time` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `last_modified` TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_tasks_created` TIMESTAMP NULL,
  PRIMARY KEY (`user_id`, `subject_id`),
  INDEX `subject_id_users_idx` (`subject_id` ASC) VISIBLE,
  CONSTRAINT `user_id_subjects`
    FOREIGN KEY (`user_id`)
    REFERENCES `homeschool`.`users` (`user_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `subject_id_users`
    FOREIGN KEY (`subject_id`)
    REFERENCES `homeschool`.`subjects` (`subject_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);
