1}user
2)Movie_details
3)Theatre_details
4)Booking_details



----------movie----------
create table Movie(movie_name varchar(20)not null,
Movie_id number,
movie_type varchar2(30)not null,
Movie_ratings number,
price number,
Movie_Duration number,
Director varchar2(40),
Music_Director varchar2(30),
Hero_name varchar2(40),
constraint movie_id primary key(movie_id));

insert into Movie values('maanaadu',12,'action',4,2,'venkatprabhu','yuvansankar','simbu' );
insert into Movie values('spiderman',20,'action',5,150,'sam Raimi','Danny Elfman','Spider' );


drop table Movie;

alter table Movie drop column price;


------theatre information------
create sequence theatre_id start WITH 500 increment by 1;
create table theatre(theatre_name varchar(30),
    movie_id number,
    theatre_id number  Default theatre_id.nextval,
    number_seats number,
    theatre_address varchar2(40) not null,
    theatre_rating number,
    constraint theatre_uq unique(theatre_name,theatre_id),
    constraint movie_id_fk foreign key (movie_id) references Movie (movie_id),
    constraint theatre_id primary key (theatre_id));
    alter table theatre drop constraint theatre_id;
    
insert into theatre values('Vetri Threatre',20,80,'Chrompet',4); 

18-12-21 01:00:00.000000000 AM    
drop table theatre  CASCADE CONSTRAINTS;
desc theatre;
select * from theatre;
alter table theatre add price  number not null;
alter table theatre add  movie_date_time TIMESTAMP not null;
TRUNCATE TABLE THEATRE;

update 
--------user details-------------
create sequence user_id start WITH 1 increment by 1;
create table user_details(user_name varchar2(30) not null ,  
user_id int Default user_id.nextval,
gender varchar(20) not null,
email_id varchar2(30) not null,
mobile_num number not null,
e_password VARCHAR2(18) not null,
Wallet number,
user_role varchar2(8) default 'user');
insert into user_details (user_name,gender,email_id,mobile_num,e_password,wallet,user_role) values('Sachin','m','sachinraj6878@gmail.com',6381333299,'sachin@089',2000,'admin');
drop table user_details cascade constraints;
constraint user_uq unique(email_id,mobile_num),
constraint user_pk primary key(user_id));
alter table user_details add Wallet number;
desc user_details;
drop table user_details;
select * from user_details;
delete from user_details;
alter table 
\
select * from user_details where email_id='suriya68@gmail.com' and e_password='sachin@08';
commit;

--------------------Admin--------------------
create table admin (email_id varchar2(30) not null,
password varchar(20) not null);


insert into admin values('sachinraj6878@gmail.com','sachin@6878');

select * from admin;
drop table admin;
-------booking details------------
create sequence booking_id start WITH 1000 increment by 2;
create table booking_detail( booking_id number Default booking_id.nextval,
user_id number not null,
theatre_id  number,
No_seats number not null,
Total_amount number,
booking_status varchar2(50)not null,

movie_name varchar(20));
 
constraint user_id_fk foreign key(user_id) references user_details(user_id),
constraint theatre_id_pk primary key(theatre_id),
constraint theatre_id_fk foreign key(theatre_id) references theatre(theatre_id));


alter table booking_detail add constraint user_id_fk foreign key(user_id)  references user_details(user_id);
alter table booking_detail add constraint theatre_id_pk primary key(theatre_id);
alter table booking_detail add constraint theatre_id_fk foreign key(theatre_id) references theatre(theatre_id);

desc booking_detail;
alter table booking_detail drop constraint theatre_id_pk;

desc booking_detail;
drop table booking_detail;
select * from booking_detail;
select * from theatre;
select *from Movie;
select * from user_details;
commit;
select * from booking_detail where booking_id=1043;
drop table booking_detail  CASCADE CONSTRAINTS;

-------------------------------------------------------------

update user_details
set wallet = 2000;
commit;

select * from booking_detail;
insert into user_details(user_name,gender,email_id,mobile_num,e_password) values ('karthik','m','karthik@gmail.com',8870623149,'Karthik@6477');


alter table user_details modify wallet Number default 2000;
select *from movie;
update theatre set images='https://play-lh.googleusercontent.com/auSY1dI4zjd9KeBl24zbz5rHdcOZPuURYxiwnaK6n4PeRXwqatHZbMfpX7d4FF99GvI'where theatre_id=540;
update movie set images='https://www.thenewsminute.com/sites/default/files/styles/news_detail/public/Maanadu_Silambarasan_150121_1200_DN.jpg?itok=giFuYD4B';
update movie set images='https://www.tollywood.net/wp-content/uploads/2021/12/Allu-Arjun-Pushpa-trailer-launch-event-in-Chennai-tomorrow.jpg' where movie_id=16;
update movie set images='https://c4.wallpaperflare.com/wallpaper/1002/898/527/spider-man-the-amazing-spider-man-2-electro-marvel-comics-wallpaper-preview.jpg'where movie_id=20;
update theatre set theatre_name='Vetri Cinemas' where movie_id=16;
alter table movie add images varchar2(1500);
alter table theatre add images varchar2(1500);
update theatre set images='https://lh3.googleusercontent.com/proxy/s5_OGVvtU8BQ8niowUm_y0Bgsd8R6t6j_5w6hVZxvAFds2OWX-0-tNhnu8szFGEHT3zR6f2sUc7iGpRNFxbSBCEoI3XjIPgc-dutKJCCbY3Y1kft0keRLSuFZEirjSH25w';
update theatre set images='https://image3.mouthshut.com/images/imagesp/925664984s.jpg' where theatre_id=520 ;
update theatre set images='https://lh3.googleusercontent.com/proxy/8jKYGMdmwxUgA4-JGuRoVjmOFu115PUh9WnsIRpvSrezj_kFp9soQnTcO1eZPZWPAAnKVg-8SbWDqtbbeE5v2iIic6cI1A2p3iJC' where theatre_id=502 ;



alter table movie drop column images;
update movie
set movielink = '20'
where movie_id in 20;

select * from theatre;
commit;