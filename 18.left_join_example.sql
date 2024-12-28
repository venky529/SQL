select * from aircrafts_data as a
left  join flights as f
on a.aircraft_code = f.aircraft_code 
where f.flight_id is null