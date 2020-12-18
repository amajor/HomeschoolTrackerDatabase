-- Subjects assigned to a user
SELECT
    user_name,
    subject_name,
    grade_level,
    user_tasks_created
  FROM homeschool.user_subjects
JOIN homeschool.users
  ON users.user_id = user_subjects.user_id
JOIN homeschool.subjects
  ON subjects.subject_id = user_subjects.subject_id;