SELECT stdName, courseName,testType, score, testDate
FROM student JOIN has_scores_in_test ON student.studentID = has_scores_in_test.studentID
			 JOIN course ON course.courseID = has_scores_in_test.courseID
WHERE testDate > '2023-09-01' AND testDate < '2024-06-30' AND courseName LIKE '%Ιστορ%';