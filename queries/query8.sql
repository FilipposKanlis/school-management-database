SELECT stdName
FROM student
WHERE studentID NOT IN (SELECT studentID FROM is_in_class WHERE in_year = 2023);