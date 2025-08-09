SELECT X,Y
FROM (
    SELECT t.X,t.Y
    FROM Functions t INNER JOIN
    functions t2
    ON t.X = t2.Y
    AND t.Y = t2.X
    AND t.X< t.Y
    UNION
    SELECT X,Y
    FROM Functions
    GROUP BY X,Y
    HAVING COUNT(*)>1
)t1
ORDER BY X;
