create table songs (
song_id serial primary key,
song_name varchar(30) not null,
genre varchar(30) default 'Not Specified',
price numeric(4,2) check(price >= 1.99),
release_date date constraint date_check 
                  check(release_date between '01-01-1950' 
				          and current_date)
)


select * from songs


insert into songs (song_name , price , release_date)
values ( 'SQL song', 0.99, '01-07-2022')


alter table songs
drop constraint songs_price_check;


alter table songs
add constraint songs_price_check check(price >=0.99)