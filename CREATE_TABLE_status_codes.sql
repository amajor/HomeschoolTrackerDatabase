CREATE TABLE IF NOT EXISTS `homeschool`.`status_codes` (
  `status_id` INT NOT NULL,
  `description` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`status_id`)
);

INSERT INTO `homeschool`.`status_codes` (
  `status_id`,
  `description`
)
VALUES
  (0, 'Not Done'),
  (1, 'Done'),
  (2, 'In Progress'),
  (3, 'Raised Question');
