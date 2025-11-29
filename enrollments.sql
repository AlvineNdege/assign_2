CREATE TABLE enrollments(
	id serial primary key,
	user_id int not null,
	course_id int not null,
	enrolled_date date,
	completed boolean default false,


	constraint fk_user
	foreign key(user_id)references users(id)
	on delete cascade,

	constraint fk_course
	foreign key(course_id) references courses(id)
	on delete cascade
);


select from enrollments

alter table enrollments
add constraint unique_user_course unique (user_id,course_id)

insert into enrollments(user_id,course_id,enrolled_date)
values(1,1,current_date);


select users.name,courses.title,enrollments.enrolled_date
from enrollments
join users on users.id=enrollments.user_id
join courses on courses.id=enrollments.course_id;