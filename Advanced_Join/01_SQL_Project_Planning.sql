with ANS as
(
    select Start_Date, row_number() over() as id
    from Projects
    where Start_Date not in (select End_Date from Projects)
),
E as
(
    select End_date, row_number() over() as id
    from Projects 
    where End_date not in (select Start_Date from Projects)
)
select ANS.Start_Date, E.End_Date 
from E join ANS on E.id=ANS.id
order by datediff(ANS.Start_Date, E.End_Date) DESC, ANS.Start_Date ASC
;
