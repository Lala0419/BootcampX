/*
Select the students name and average time from assignment submissions.
Order the results from greatest duration to least greatest duration.
A student will have a null end_date if they are currently enrolled
*/

SELECT students.name as student_name, avg(assignment_submissions.duration) as average_assignment_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE end_date is NULL
GROUP BY student_name
ORDER BY average_assignment_duration DESC
