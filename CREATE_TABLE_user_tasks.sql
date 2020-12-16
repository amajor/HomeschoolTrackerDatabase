CREATE TABLE `homeschool`.`user_tasks` (
  `user_id` INT NOT NULL,
  `task_id` INT NOT NULL,
  `status_prep` INT NOT NULL DEFAULT 0,
  `status_complete` INT NOT NULL DEFAULT 0,
  `status_grade` INT NOT NULL DEFAULT 0,
  `grade_letter` VARCHAR(2) NULL,
  `create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_modified` TIMESTAMP NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`, `task_id`),
  INDEX `task_id_lessons_idx` (`task_id` ASC) VISIBLE,
  INDEX `status_prep_idx` (`status_prep` ASC) VISIBLE,
  INDEX `status_complete_idx` (`status_complete` ASC) VISIBLE,
  INDEX `status_grade_idx` (`status_grade` ASC) VISIBLE,
  CONSTRAINT `user_id_users`
    FOREIGN KEY (`user_id`)
    REFERENCES `homeschool`.`users` (`user_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `task_id_lessons`
    FOREIGN KEY (`task_id`)
    REFERENCES `homeschool`.`lesson_tasks` (`task_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `status_prep`
    FOREIGN KEY (`status_prep`)
    REFERENCES `homeschool`.`status_codes` (`status_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `status_complete`
    FOREIGN KEY (`status_complete`)
    REFERENCES `homeschool`.`status_codes` (`status_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `status_grade`
    FOREIGN KEY (`status_grade`)
    REFERENCES `homeschool`.`status_codes` (`status_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE);
