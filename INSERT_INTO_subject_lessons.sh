#!/bin/bash

DB='homeschool'
TABLE='subject_lessons'

# Insert lessons 1-170 for every subject (currently there are 20 subjects)
for subject_id in {1..20}
do
    echo "    Adding lessons for subject_id $subject_id..."
    for lesson_number in {66..70}
    do
        echo "INSERT INTO $DB.$TABLE (lesson_number,subject_id) VALUES ('$lesson_number',$subject_id);" | mysql --defaults-file=config.txt;
    done
done