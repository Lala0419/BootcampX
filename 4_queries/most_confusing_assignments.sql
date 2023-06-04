/*
We need to know which assignments are causing the most assistance requests.

Instruction
List each assignment with the total number of assistance requests with it.

Select the assignment's id, day, chapter, name and the total assistances.
Order by total assistances in order of most to least.
*/

SELECT assignments.id as id, assignments.day as day, assignments.chapter as chapter, assignments.name as name, count(assistance_requests.*) as total_assistances
FROM assignments
JOIN assistance_requests ON assignment_id = assignments.id
GROUP BY assignments.id
ORDER BY total_assistances DESC
