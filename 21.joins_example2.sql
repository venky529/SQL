select seat_no, round(avg(amount),2) from boarding_passes b
inner join ticket_flights t
on b.ticket_no = t.ticket_no
and b.flight_id = t.flight_id
group by seat_no
order by 2 desc