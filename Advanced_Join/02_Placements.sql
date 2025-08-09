SELECT Students.Name
FROM Students
JOIN  Friends F ON F.ID = Students.ID
JOIN Packages P ON P.ID = Students.ID
JOIN Packages P1 ON P1.ID = F.Friend_ID
WHERE P1.Salary > P.Salary
ORDER BY P1.Salary ;
