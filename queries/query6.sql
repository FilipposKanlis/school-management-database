SELECT stdName, courseName,testType, testDate, score
FROM student JOIN has_scores_in_test ON student.studentID = has_scores_in_test.studentID
			 JOIN course ON course.courseID = has_scores_in_test.courseID
WHERE score < 10 and has_scores_in_test.testDate > '2023-09-01' and has_scores_in_test.testDate < '2024-06-30';			