/*
Select the teacher's name and the total assistance requests.
Since this query needs to work with any specific teacher name, use 'Waylon Boehm' for the teacher's name here
*/

SELECT teachers.name as teacher_name, count(assistance_requests.*) as total_assistance
FROM teachers
JOIN assistance_requests ON teachers.id = teacher_id
WHERE teachers.name = 'Waylon Boehm' 
GROUP BY teachers.name