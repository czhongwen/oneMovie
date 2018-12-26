create table index_table
(
     pic varchar2(30) not null,
     moive_name varchar(20)  not null,
     moive_comment varchar2(100) not null,
     moive_address varchar2(20) not null
)

create table admin_table
(
       admin_id number primary key,
       admin_account varchar2(20) not null,
       admin_password varchar2(20) not null,
       admin_phone char(11) not null
)

create table tv_table 
(
       tv_id varchar2(30) primary key,
       tv_name varchar(20) not null,
       tv_pic varchar(20) not null,
       tv_comment varchar(100) not null 
)

create table tv_detail_table
(
      tv_number number not null,
      tv_address varchar2(20) not null,
      tv_id varchar2(30) not null,
      constraint tv_detail_table foreign key (tv_id) references tv_table(tv_id)
)

create table moive_type_table
(
       type_id number primary key,
       type_name varchar2(15) not null
)

create table moive_country_table
(
       country_id number primary key,
       country_name varchar2(15) not null
)

create table moive_table
(
       moive_id varchar(30) primary key,
       moive_pic varchar(20) not null,
       moive_addrss varchar(30) not null,
       moive_name varchar(20) not null,
       moive_describe varchar(100) not null,
       moive_play number not null,
       moive_score number not null,
       country_id number not null,
       type_id number not null,
       constraint moive_type_table foreign key (type_id) references moive_type_table(type_id),
       constraint moive_country_table foreign key (country_id) references moive_country_table(country_id)
)

create table user_table
(
       user_id number primary key,
       user_account varchar2(20) not null,
       user_password varchar2(20) not null,
       user_name varchar2(15) not null,
       user_email varchar2(20) not null,
       user_phone char(11) not null,
       user_vip number not null
)

create table preivew_table
(
       preivew_id varchar2(30) primary key,
       preivew_comment varchar2(100) not null,
       preivew_pic varchar2(20) not null,
       preivew_name varchar2(20) not null,
       show_time varchar2(20) not null,
       load_time date
)


create table film_review_table
(
       comment_info varchar2(100) not null,
       comment_date date not null,
       moive_id varchar(30) not null,
       tv_id varchar(30) not null,
       preivew_id varchar(30) not null,
       user_id number not null,
       constraint preivew_table foreign key (preivew_id) references preivew_table(preivew_id),
       constraint moive_table foreign key (moive_id) references moive_table(moive_id),
       constraint tv_table foreign key (tv_id) references tv_table(tv_id),
       constraint user_table foreign key (user_id) references user_table(user_id)
)
