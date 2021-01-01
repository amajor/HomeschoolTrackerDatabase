USE `homeschool`;
CREATE  OR REPLACE VIEW `view_user_subjects` AS
SELECT
		CONCAT(user_subjects.user_id, "_", user_subjects.subject_id) AS "key",
        user_subjects.user_id AS "userId",
        user_subjects.subject_id AS "subjectId",
        user_name AS "studentName",
        subject_name AS "subject",
        grade_level AS "gradeLevel",
        user_tasks_created AS "userTasksCreated"
      FROM user_subjects
    JOIN users
      ON users.user_id = user_subjects.user_id
    JOIN subjects
      ON subjects.subject_id = user_subjects.subject_id;;
