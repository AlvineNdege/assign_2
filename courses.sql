CREATE TABLE courses(
	id serial primary key,
	user_id int not null,
	title varchar not null,
	description text,
	is_open boolean default true
);


select
from courses

insert into courses(title,description)
values('python','introduction to python');

select
from courses

	