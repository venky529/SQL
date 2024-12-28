create table director(
director_id SERIAL primary key,
director_account_name varchar(20) unique,
first_name varchar(50),
last_name varchar(50) DEFAULT 'Not Specified',
date_of_birth DATE,
address_id int REFERENCES address(address_id)
)