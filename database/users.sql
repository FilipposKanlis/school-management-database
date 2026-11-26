#Dimiourgia admin o opoios tha exei plhrh dikaiwmata sthn diaxeirisi tis vasis kai tis dimiourgias xristwn.
CREATE USER 'sadmin'@'localhost' IDENTIFIED BY 'YOUR_ADMIN_PASSWORD';
GRANT ALL PRIVILEGES ON school.* TO 'sadmin'@'localhost';

# Paradeigma dimiourgias xristi kathigiti me dikaiwmata mono eisagwgis stis vathmologies, tis apousies kai stous vathmous eksetasis.
CREATE USER 'teacher1'@'localhost' IDENTIFIED BY 'YOUR_TEACHER_PASSWORD';
CREATE USER 'teacher1'@'%' IDENTIFIED BY 'YOUR_TEACHER_PASSWORD';
GRANT SELECT, INSERT ON school.has_grades_in TO 'teacher1'@'localhost';
GRANT SELECT, INSERT ON school.has_grades_in TO 'teacher1'@'%';
GRANT SELECT, INSERT ON school.was_absence_in_course TO 'teacher1'@'localhost';
GRANT SELECT, INSERT ON school.was_absence_in_course TO 'teacher1'@'%';
GRANT SELECT, INSERT ON school.has_scores_in_test TO 'teacher1'@'localhost';
GRANT SELECT, INSERT ON school.has_scores_in_test TO 'teacher1'@'%';

#Dimiourgia xristi dieuthinti me dikaiwmata eisagwghs, update kai diagrafis.
CREATE USER 'principal'@'localhost' IDENTIFIED BY 'YOUR_PRINCIPAL_PASSWORD';
CREATE USER 'principal'@'%' IDENTIFIED BY 'YOUR_PRINCIPAL_PASSWORD';
GRANT SELECT, INSERT, UPDATE, DELETE ON school.* TO 'principal'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON school.* TO 'principal'@'%';