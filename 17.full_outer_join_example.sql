select *
from boarding_passes as b
full outer join tickets as t
on b.ticket_no = t.ticket_no
where b.ticket_no is null
