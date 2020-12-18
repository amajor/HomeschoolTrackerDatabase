-- Add Ewan's Tasks
INSERT INTO `homeschool`.`user_tasks` (`user_id`,`task_id`, `last_modified`)
SELECT
    user_id,
    task_id,
    CURRENT_TIMESTAMP
  FROM homeschool.user_subjects
JOIN homeschool.subject_lessons
  ON user_subjects.subject_id = subject_lessons.subject_id
JOIN homeschool.lesson_tasks
  ON subject_lessons.lesson_id = lesson_tasks.lesson_id
WHERE user_id = 1; -- Ewan

UPDATE `homeschool`.`user_subjects`
SET `user_tasks_created` = CURRENT_TIMESTAMP
  WHERE `user_id` = 1;

-- Add Gwynnie's tasks
INSERT INTO `homeschool`.`user_tasks` (`user_id`,`task_id`, `last_modified`)
SELECT
    user_id,
    task_id,
    CURRENT_TIMESTAMP
  FROM homeschool.user_subjects
JOIN homeschool.subject_lessons
  ON user_subjects.subject_id = subject_lessons.subject_id
JOIN homeschool.lesson_tasks
  ON subject_lessons.lesson_id = lesson_tasks.lesson_id
WHERE user_id = 2; -- Gwynnie

UPDATE `homeschool`.`user_subjects`
SET `user_tasks_created` = CURRENT_TIMESTAMP
  WHERE `user_id` = 2;

