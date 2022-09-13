create database imdb;
use imdb;
--   created a new imdb database and using it

-- new table movie  
create table movie(
movie_id int not null auto_increment,
movie_name varchar(255) not null,
primary key(movie_id)
);

-- new table genre 
create table genre(
genre_id int not null auto_increment,
genre_type varchar(255) not null,
primary key(genre_id)
);

-- new table user 
create table users(
user_id int not null auto_increment,
user_name varchar(255) not null,
primary key(user_id)
);


-- new table actor 
create table actor(
actor_id int not null auto_increment,
actor_name varchar(255) not null,
primary key(actor_id)
);

-- new table  skills
create table skills(
skill_id int not null auto_increment,
skill_name varchar(255) not null,
primary key(skill_id)
);

-- new table roles
create table roles(
role_id int not null auto_increment,
role_name varchar(255) not null,
primary key(role_id)
);

-- inserting data
insert into movie (movie_name) values("bombay"),("roja"),("nayagan");
insert into users (user_name) values("user 1"),("user 2"),("user 3");
insert into genre (genre_type) values("action"),("romance"),("horror"),("drama");
insert into actor (actor_name) values("aravind swamy"),("manisha koirala"),("kamal hassan"),("saranya"),("delhi ganesh");
insert into skills (skill_name) values("acting"),("dancing"),("singing"),("direction"),("production");
insert into roles (role_name) values("shekar narayanan"),("saila bhanu"),("risi kumar"),("roja"),("velu"),("neela"),("iyer");

-- movie media table with movie_id/multiple movie media
create table movie_media(
movie_id int not null,
movie_media varchar(255) not null
);

-- movie genre table with movie id/genre type
create table movie_genre(
movie_id int not null,
genre_id int not null
);

-- movie review table with user_id/movie_id/review
create table movie_review(
user_id int not null,
movie_id int not null,
rating int not null
);

-- artist skill table with artist id/ multiple skill id 
create table actor_skill(
actor_id int not null,
skill_id int not null
);

-- inserting data into the movie media table 
insert into movie_media (movie_id,movie_media) 
values (1,"img_1"),(1,"video_1"),(2,"img_1"),(2,"video_1"),(3,"img_1"),(3,"video_1");

-- inserting data into the movie genre table
insert into movie_genre (movie_id,genre_id) 
values (1,2),(1,4),(2,2),(2,4),(3,1),(3,4);

-- inserting data into the movie review table
insert into movie_review (user_id,movie_id,rating) 
values (1,1,8.5),(1,2,8),(1,3,9),(2,1,8.2),(2,2,7.5),(2,3,8.7),(3,1,8),(3,2,7),(3,3,9);

-- inserting data into actor skill
insert into actor_skill (actor_id,skill_id) 
values (1,1),(2,1),(2,2),(3,1),(3,2),(3,3),(3,4),(3,5),(4,1),(5,1);

