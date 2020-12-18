#!/bin/bash

DB='homeschool'

# Build our Schema
echo "Creating SCHEMA named '$DB'"
echo "CREATE SCHEMA IF NOT EXISTS $DB" | mysql --defaults-file=config.txt;

# Build our 'subjects' table
echo "Creating TABLE named 'subjects'..."
mysql --defaults-file=config.txt "$DB" < "CREATE_TABLE_subjects.sql"

# Populate our subjects table
echo "  Populating 'subjects'..."
mysql --defaults-file=config.txt "$DB" < "INSERT_INTO_subjects.sql"

# Build our 'subject_lessons' table
echo "Creating TABLE named 'subjects'..."
mysql --defaults-file=config.txt "$DB" < "CREATE_TABLE_subject_lessons.sql"

# Populate our subject_lessons table
echo "  Populating 'subject_lessons'..."
source ./INSERT_INTO_subject_lessons.sh

# Build our 'subject_workbooks' table
echo "Creating TABLE named 'subject_workbooks'..."
mysql --defaults-file=config.txt "$DB" < "CREATE_TABLE_subject_workbooks.sql"

# Populate our subject_workbooks table
echo "  Populating 'subject_workbooks'..."
mysql --defaults-file=config.txt "$DB" < "INSERT_INTO_subject_workbooks.sql"

# Build our 'lesson_tasks' table
echo "Creating TABLE named 'lesson_tasks'..."
mysql --defaults-file=config.txt "$DB" < "CREATE_TABLE_lesson_tasks.sql"

# Populate our lesson_tasks table
# echo "  Populating 'lesson_tasks'..."

# Build our 'status_codes' table
echo "Creating TABLE named 'status_codes'..."
mysql --defaults-file=config.txt "$DB" < "CREATE_TABLE_status_codes.sql"

# Build our 'users' table
echo "Creating TABLE named 'users'..."
mysql --defaults-file=config.txt "$DB" < "CREATE_TABLE_users.sql"

# Populate our users table
echo "  Populating 'users'..."
mysql --defaults-file=config.txt "$DB" < "INSERT_INTO_users.sql"

# Build our 'user_subjects' table
echo "Creating TABLE named 'user_subjects'..."
mysql --defaults-file=config.txt "$DB" < "CREATE_TABLE_user_subjects.sql"

# Populate our user_subjects table
echo "  Populating 'user_subjects'..."
mysql --defaults-file=config.txt "$DB" < "INSERT_INTO_user_subjects.sql"

# Build our 'user_tasks' table
echo "Creating TABLE named 'user_tasks'..."
mysql --defaults-file=config.txt "$DB" < "CREATE_TABLE_user_tasks.sql"

# Populate our user_tasks table
# echo "  Populating 'user_tasks'..."