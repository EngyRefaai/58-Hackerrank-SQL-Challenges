WITH RECURSIVE triangle(row_num, stars) AS (
    SELECT 20, REPEAT('* ', 20)
    UNION ALL
    SELECT row_num - 1, REPEAT('* ', row_num - 1)
    FROM triangle
    WHERE row_num > 1
)
SELECT stars
FROM triangle;
