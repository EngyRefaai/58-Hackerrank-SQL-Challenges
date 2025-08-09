WITH RECURSIVE triangle AS (
    SELECT 1 AS row_num, CAST(REPEAT('* ', 1) AS CHAR(1000)) AS stars
    UNION ALL
    SELECT row_num + 1, CAST(REPEAT('* ', row_num + 1) AS CHAR(1000))
    FROM triangle
    WHERE row_num < 20
)
SELECT stars 
FROM triangle;
