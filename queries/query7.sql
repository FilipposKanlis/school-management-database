SELECT stdName, parentID, className
FROM student JOIN is_in_class ON student.studentID = is_in_class.studentID	
			 JOIN class ON class.classID = is_in_class.classID
WHERE parentID IS NULL ;