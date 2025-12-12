-- Write your SQL query here
select distinct(r.name)
from checkins c join reindeer r on ( c.reindeer_id == r.id )
where r.name not in
(
select r.name
from checkins c join reindeer r on ( c.reindeer_id == r.id )
where checkin_date == '2025-12-01'
) ; 
