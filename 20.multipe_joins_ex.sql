select t.ticket_no,passenger_name, tf.flight_id , scheduled_departure 
from tickets t
inner join ticket_flights tf
on t.ticket_no = tf.ticket_no
inner join flights f
on f.flight_id = tf.flight_id