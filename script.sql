create database if not exists users;

	use users;

	drop table if exists user;
	drop table if exists post;
	drop table if exists comment;

	create table user(
		id int(11) not null auto_increment,
		username varchar(20) not null,
		email varchar(20) not null,
		password varchar(25),
		state char(2) not null,
		zip char(5),
		city varchar(20),
		primary key (id)
		);

	create table post(
		id int(11) not null auto_increment,
		date_created datetime default current_timestamp;,
		content varchar(255) not null,
		userId int(11),
		foreign key (userId) references customers(id),
		primary key (id)
		);

	create table comment(
		id int(11) not null auto_increment,
		date_created datetime default current_timestamp;,
		content varchar(50) not null,
		userId int(11),
		postId int(11),
		foreign key (userId) references user(id),
		foreign key (postId) references post(id)

	);
