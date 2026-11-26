SELECT stdName, className, courseName, gradePeriod, has_grades_in.in_year, gradeVal
FROM student JOIN has_grades_in ON student.studentID = has_grades_in.studentID
			 JOIN course ON course.courseID = has_grades_in.courseID
             JOIN is_in_class ON is_in_class.studentID = student.studentID
             JOIN class ON class.classID = is_in_class.classID
WHERE gradeVal < 10 and has_grades_in.in_year = 2023 ;			