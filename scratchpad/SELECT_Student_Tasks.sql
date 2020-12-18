-- List of all tasks with user name and task information
SELECT
    user_name AS "Student Name",
    subject_name AS "Subject",
    lesson_number AS "Lesson #",
    description AS "Task Description",
    tags,
    status_prep AS "Needs Prep?",
    status_complete AS "Is Complete?",
    status_grade AS "Is Graded?"
  FROM homeschool.user_tasks
JOIN homeschool.users
  ON user_tasks.user_id = users.user_id
JOIN homeschool.lesson_tasks
  ON user_tasks.task_id = lesson_tasks.task_id
JOIN homeschool.subject_lessons
  ON lesson_tasks.lesson_id = subject_lessons.lesson_id
JOIN homeschool.subjects
  ON subjects.subject_id = subject_lessons.subject_id
