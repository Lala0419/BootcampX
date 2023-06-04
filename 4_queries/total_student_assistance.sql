/*
Select the student's name and the total assistance requests.
Since this query needs to work with any specific student name, use 'Elliot Dickinson' for the student's name here.
*/

SELECT students.name as student_name, count(assistance_requests.*) as total_assistance_requests
FROM students
JOIN assistance_requests ON student_id = students.id
WHERE students.name = 'Elliot Dickinson'
GROUP BY students.name