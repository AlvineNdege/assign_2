CREATE TABLE users(
	id serial primary key,
	name varchar,
	email varchar not null unique,
	is_active boolean default true
);


select 
from users

insert into users(name,email)
values('Alice','alice@gmail.com');

select
from users