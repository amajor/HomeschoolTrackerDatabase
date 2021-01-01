USE `homeschool`;
CREATE  OR REPLACE VIEW `view_user_tasks` AS
SELECT
        CONCAT(user_tasks.user_id, "_", user_tasks.task_id) AS "key",
        user_tasks.user_id AS "userId",
        user_tasks.task_id AS "taskId",
        user_name AS "studentName",
        subject_name AS "subject",
        lesson_number AS "lessonNumber",
        description AS "taskDescription",
        tags,
        status_prep AS "statusNeedsPrep",
        status_complete AS "statusIsComplete",
        status_grade AS "statusIsGraded",
        user_tasks.last_modified AS "lastModified"
      FROM homeschool.user_tasks
    JOIN homeschool.users
      ON user_tasks.user_id = users.user_id
    JOIN homeschool.lesson_tasks
      ON user_tasks.task_id = lesson_tasks.task_id
    JOIN homeschool.subject_lessons
      ON lesson_tasks.lesson_id = subject_lessons.lesson_id
    JOIN homeschool.subjects
      ON subjects.subject_id = subject_lessons.subject_id;
