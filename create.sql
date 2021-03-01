create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
create table user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table user add constraint USER_UK unique (username)
alter table pitch_booking add constraint FKecm1sl8hctmslwswghehm919k foreign key (user_id) references user (user_id)
alter table pitch_booking add constraint FKooqaqxqrthd491ju8kkgeatps foreign key (role_id) references role (role_id)
alter table user add constraint FKn82ha3ccdebhokx3a8fgdqeyy foreign key (role_id) references role (role_id)
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, user_id bigint not null, pitch_id bigint not null, primary key (user_id, pitch_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
create table user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table user add constraint USER_UK unique (username)
alter table pitch_booking add constraint FKecm1sl8hctmslwswghehm919k foreign key (user_id) references user (user_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table user add constraint FKn82ha3ccdebhokx3a8fgdqeyy foreign key (role_id) references role (role_id)
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_id bigint not null, user_id bigint not null, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, primary key (pitch_id, user_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
create table user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table user add constraint USER_UK unique (username)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKecm1sl8hctmslwswghehm919k foreign key (user_id) references user (user_id)
alter table user add constraint FKn82ha3ccdebhokx3a8fgdqeyy foreign key (role_id) references role (role_id)
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_id bigint not null, user_id bigint not null, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, primary key (pitch_id, user_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
create table user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table user add constraint USER_UK unique (username)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKecm1sl8hctmslwswghehm919k foreign key (user_id) references user (user_id)
alter table user add constraint FKn82ha3ccdebhokx3a8fgdqeyy foreign key (role_id) references role (role_id)
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_id bigint not null, user_id bigint not null, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, primary key (pitch_id, user_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
create table user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table user add constraint USER_UK unique (username)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKecm1sl8hctmslwswghehm919k foreign key (user_id) references user (user_id)
alter table user add constraint FKn82ha3ccdebhokx3a8fgdqeyy foreign key (role_id) references role (role_id)
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_id bigint not null, user_id bigint not null, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, primary key (pitch_id, user_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
create table user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table user add constraint USER_UK unique (username)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKecm1sl8hctmslwswghehm919k foreign key (user_id) references user (user_id)
alter table user add constraint FKn82ha3ccdebhokx3a8fgdqeyy foreign key (role_id) references role (role_id)
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_id bigint not null, user_id bigint not null, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, primary key (pitch_id, user_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
create table user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table user add constraint USER_UK unique (username)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKecm1sl8hctmslwswghehm919k foreign key (user_id) references user (user_id)
alter table user add constraint FKn82ha3ccdebhokx3a8fgdqeyy foreign key (role_id) references role (role_id)
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_id bigint not null, user_id bigint not null, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, primary key (pitch_id, user_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
create table user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table user add constraint USER_UK unique (username)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKecm1sl8hctmslwswghehm919k foreign key (user_id) references user (user_id)
alter table user add constraint FKn82ha3ccdebhokx3a8fgdqeyy foreign key (role_id) references role (role_id)
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_id bigint not null, user_id bigint not null, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, primary key (pitch_id, user_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
create table user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table user add constraint USER_UK unique (username)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKecm1sl8hctmslwswghehm919k foreign key (user_id) references user (user_id)
alter table user add constraint FKn82ha3ccdebhokx3a8fgdqeyy foreign key (role_id) references role (role_id)
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_id bigint not null, user_id bigint not null, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, primary key (pitch_id, user_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
create table user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table user add constraint USER_UK unique (username)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKecm1sl8hctmslwswghehm919k foreign key (user_id) references user (user_id)
alter table user add constraint FKn82ha3ccdebhokx3a8fgdqeyy foreign key (role_id) references role (role_id)
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_id bigint not null, user_id bigint not null, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, primary key (pitch_id, user_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
create table user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table user add constraint USER_UK unique (username)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKecm1sl8hctmslwswghehm919k foreign key (user_id) references user (user_id)
alter table user add constraint FKn82ha3ccdebhokx3a8fgdqeyy foreign key (role_id) references role (role_id)
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_id bigint not null, user_id bigint not null, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, primary key (pitch_id, user_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
create table user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table user add constraint USER_UK unique (username)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKecm1sl8hctmslwswghehm919k foreign key (user_id) references user (user_id)
alter table user add constraint FKn82ha3ccdebhokx3a8fgdqeyy foreign key (role_id) references role (role_id)
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_id bigint not null, user_id bigint not null, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, primary key (pitch_id, user_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
create table user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table user add constraint USER_UK unique (username)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKecm1sl8hctmslwswghehm919k foreign key (user_id) references user (user_id)
alter table user add constraint FKn82ha3ccdebhokx3a8fgdqeyy foreign key (role_id) references role (role_id)
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_id bigint not null, user_id bigint not null, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, primary key (pitch_id, user_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
create table user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table user add constraint USER_UK unique (username)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKecm1sl8hctmslwswghehm919k foreign key (user_id) references user (user_id)
alter table user add constraint FKn82ha3ccdebhokx3a8fgdqeyy foreign key (role_id) references role (role_id)
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_id bigint not null, user_id bigint not null, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, primary key (pitch_id, user_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
create table user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table user add constraint USER_UK unique (username)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKecm1sl8hctmslwswghehm919k foreign key (user_id) references user (user_id)
alter table user add constraint FKn82ha3ccdebhokx3a8fgdqeyy foreign key (role_id) references role (role_id)
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_id bigint not null, user_id bigint not null, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, primary key (pitch_id, user_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
create table user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table user add constraint USER_UK unique (username)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKecm1sl8hctmslwswghehm919k foreign key (user_id) references user (user_id)
alter table user add constraint FKn82ha3ccdebhokx3a8fgdqeyy foreign key (role_id) references role (role_id)
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_id bigint not null, user_id bigint not null, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, primary key (pitch_id, user_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
create table user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table user add constraint USER_UK unique (username)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKecm1sl8hctmslwswghehm919k foreign key (user_id) references user (user_id)
alter table user add constraint FKn82ha3ccdebhokx3a8fgdqeyy foreign key (role_id) references role (role_id)
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_id bigint not null, user_id bigint not null, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, primary key (pitch_id, user_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
create table user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table user add constraint USER_UK unique (username)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKecm1sl8hctmslwswghehm919k foreign key (user_id) references user (user_id)
alter table user add constraint FKn82ha3ccdebhokx3a8fgdqeyy foreign key (role_id) references role (role_id)
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_id bigint not null, user_id bigint not null, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, primary key (pitch_id, user_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
create table user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table user add constraint USER_UK unique (username)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKecm1sl8hctmslwswghehm919k foreign key (user_id) references user (user_id)
alter table user add constraint FKn82ha3ccdebhokx3a8fgdqeyy foreign key (role_id) references role (role_id)
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_id bigint not null, user_id bigint not null, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, primary key (pitch_id, user_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
create table user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table user add constraint USER_UK unique (username)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKecm1sl8hctmslwswghehm919k foreign key (user_id) references user (user_id)
alter table user add constraint FKn82ha3ccdebhokx3a8fgdqeyy foreign key (role_id) references role (role_id)
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_id bigint not null, user_id bigint not null, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, primary key (pitch_id, user_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
create table user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table user add constraint USER_UK unique (username)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKecm1sl8hctmslwswghehm919k foreign key (user_id) references user (user_id)
alter table user add constraint FKn82ha3ccdebhokx3a8fgdqeyy foreign key (role_id) references role (role_id)
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_id bigint not null, user_id bigint not null, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, primary key (pitch_id, user_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
create table user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table user add constraint USER_UK unique (username)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKecm1sl8hctmslwswghehm919k foreign key (user_id) references user (user_id)
alter table user add constraint FKn82ha3ccdebhokx3a8fgdqeyy foreign key (role_id) references role (role_id)
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_id bigint not null, user_id bigint not null, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, primary key (pitch_id, user_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
create table user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table user add constraint USER_UK unique (username)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKecm1sl8hctmslwswghehm919k foreign key (user_id) references user (user_id)
alter table user add constraint FKn82ha3ccdebhokx3a8fgdqeyy foreign key (role_id) references role (role_id)
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_id bigint not null, user_id bigint not null, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, primary key (pitch_id, user_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
create table user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table user add constraint USER_UK unique (username)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKecm1sl8hctmslwswghehm919k foreign key (user_id) references user (user_id)
alter table user add constraint FKn82ha3ccdebhokx3a8fgdqeyy foreign key (role_id) references role (role_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_id bigint not null, user_id bigint not null, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, primary key (pitch_id, user_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_id bigint not null, user_id bigint not null, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, primary key (pitch_id, user_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_id bigint not null, user_id bigint not null, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, primary key (pitch_id, user_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_id bigint not null, user_id bigint not null, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, primary key (pitch_id, user_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_id bigint not null, user_id bigint not null, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, primary key (pitch_id, user_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_id bigint not null, user_id bigint not null, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, primary key (pitch_id, user_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_id bigint not null, user_id bigint not null, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, primary key (pitch_id, user_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_id bigint not null, user_id bigint not null, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, primary key (pitch_id, user_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_id bigint not null, user_id bigint not null, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, primary key (pitch_id, user_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_id bigint not null, user_id bigint not null, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, primary key (pitch_id, user_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_id bigint not null, user_id bigint not null, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, primary key (pitch_id, user_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_id bigint not null, user_id bigint not null, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, primary key (pitch_id, user_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_id bigint not null, user_id bigint not null, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, primary key (pitch_id, user_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_id bigint not null, user_id bigint not null, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, primary key (pitch_id, user_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_id bigint not null, user_id bigint not null, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, primary key (pitch_id, user_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_id bigint not null, user_id bigint not null, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, primary key (pitch_id, user_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_id bigint not null, user_id bigint not null, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, primary key (pitch_id, user_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_id bigint not null, user_id bigint not null, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, primary key (pitch_id, user_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_id bigint not null, user_id bigint not null, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, primary key (pitch_id, user_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_id bigint not null, user_id bigint not null, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, primary key (pitch_id, user_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_id bigint not null, user_id bigint not null, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, primary key (pitch_id, user_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_id bigint not null, user_id bigint not null, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, primary key (pitch_id, user_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_id bigint not null, user_id bigint not null, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, primary key (pitch_id, user_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_id bigint not null, user_id bigint not null, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, primary key (pitch_id, user_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_id bigint not null, user_id bigint not null, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, primary key (pitch_id, user_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_id bigint not null, user_id bigint not null, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, primary key (pitch_id, user_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_id bigint not null, user_id bigint not null, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, primary key (pitch_id, user_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_id bigint not null, user_id bigint not null, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, primary key (pitch_id, user_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_booking_id bigint not null auto_increment, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, pitch_id bigint not null, user_id bigint not null, primary key (pitch_booking_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_booking_id bigint not null auto_increment, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, pitch_id bigint not null, user_id bigint not null, primary key (pitch_booking_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_booking_id bigint not null auto_increment, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, pitch_id bigint not null, user_id bigint not null, primary key (pitch_booking_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_booking_id bigint not null auto_increment, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, pitch_id bigint not null, user_id bigint not null, primary key (pitch_booking_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_booking_id bigint not null auto_increment, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, pitch_id bigint not null, user_id bigint not null, primary key (pitch_booking_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_booking_id bigint not null auto_increment, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, pitch_id bigint not null, user_id bigint not null, primary key (pitch_booking_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_booking_id bigint not null auto_increment, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, pitch_id bigint not null, user_id bigint not null, primary key (pitch_booking_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, price double precision not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_booking_id bigint not null auto_increment, note varchar(255) not null, pitch_no integer not null, price double precision not null, time_finish datetime not null, time_start datetime not null, pitch_id bigint not null, user_id bigint not null, primary key (pitch_booking_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, cost double precision not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_booking_id bigint not null auto_increment, note varchar(255) not null, price double precision not null, time_finish datetime not null, time_start datetime not null, pitch_id bigint not null, user_id bigint not null, primary key (pitch_booking_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, cost double precision not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_booking_id bigint not null auto_increment, note varchar(255) not null, price double precision not null, time_finish datetime not null, time_start datetime not null, pitch_id bigint not null, user_id bigint not null, primary key (pitch_booking_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, cost double precision not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_booking_id bigint not null auto_increment, note varchar(255) not null, price double precision not null, time_finish datetime not null, time_start datetime not null, pitch_id bigint not null, user_id bigint not null, primary key (pitch_booking_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, cost double precision not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_booking_id bigint not null auto_increment, note varchar(255) not null, price double precision not null, time_finish datetime not null, time_start datetime not null, pitch_id bigint not null, user_id bigint not null, primary key (pitch_booking_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, cost double precision not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_booking_id bigint not null auto_increment, note varchar(255) not null, price double precision not null, time_finish datetime not null, time_start datetime not null, pitch_id bigint not null, user_id bigint not null, primary key (pitch_booking_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, cost double precision not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_booking_id bigint not null auto_increment, date datetime, note varchar(255) not null, price double precision not null, time integer not null, time_finish datetime not null, time_start datetime not null, pitch_id bigint not null, user_id bigint not null, primary key (pitch_booking_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, cost double precision not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_booking_id bigint not null auto_increment, date datetime, note varchar(255) not null, price double precision not null, time_key integer not null, time_finish datetime not null, time_start datetime not null, pitch_id bigint not null, user_id bigint not null, primary key (pitch_booking_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, cost double precision not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_booking_id bigint not null auto_increment, date datetime, note varchar(255) not null, price double precision not null, time_key integer not null, time_finish datetime not null, time_start datetime not null, pitch_id bigint not null, user_id bigint not null, primary key (pitch_booking_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, cost double precision not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_booking_id bigint not null auto_increment, date datetime, note varchar(255) not null, price double precision not null, time_key integer not null, time_finish datetime not null, time_start datetime not null, pitch_id bigint not null, user_id bigint not null, primary key (pitch_booking_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, cost double precision not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_booking_id bigint not null auto_increment, date datetime, note varchar(255) not null, price double precision not null, time_key integer not null, time_finish datetime not null, time_start datetime not null, pitch_id bigint not null, user_id bigint not null, primary key (pitch_booking_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, cost double precision not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_booking_id bigint not null auto_increment, date datetime, note varchar(255) not null, price double precision not null, time_key integer not null, time_finish datetime not null, time_start datetime not null, pitch_id bigint not null, user_id bigint not null, primary key (pitch_booking_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, cost double precision not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_booking_id bigint not null auto_increment, date datetime, note varchar(255) not null, price double precision not null, time_key integer not null, time_finish datetime not null, time_start datetime not null, pitch_id bigint not null, user_id bigint not null, primary key (pitch_booking_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, cost double precision not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_booking_id bigint not null auto_increment, date datetime, note varchar(255) not null, price double precision not null, time_key integer not null, time_finish datetime not null, time_start datetime not null, pitch_id bigint not null, user_id bigint not null, primary key (pitch_booking_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, cost double precision not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_booking_id bigint not null auto_increment, date datetime, note varchar(255) not null, price double precision not null, time_key integer not null, time_finish datetime not null, time_start datetime not null, pitch_id bigint not null, user_id bigint not null, primary key (pitch_booking_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, cost double precision not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_booking_id bigint not null auto_increment, date datetime, note varchar(255) not null, price double precision not null, time_key integer not null, time_finish datetime not null, time_start datetime not null, pitch_id bigint not null, user_id bigint not null, primary key (pitch_booking_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, cost double precision not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_booking_id bigint not null auto_increment, date datetime, note varchar(255) not null, price double precision not null, time_key integer not null, time_finish datetime not null, time_start datetime not null, pitch_id bigint not null, user_id bigint not null, primary key (pitch_booking_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, cost double precision not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_booking_id bigint not null auto_increment, date datetime, note varchar(255) not null, price double precision not null, time_key integer not null, time_finish datetime not null, time_start datetime not null, pitch_id bigint not null, user_id bigint not null, primary key (pitch_booking_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, cost double precision not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_booking_id bigint not null auto_increment, date datetime, note varchar(255) not null, price double precision not null, time_key integer not null, time_finish datetime not null, time_start datetime not null, pitch_id bigint not null, user_id bigint not null, primary key (pitch_booking_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, cost double precision not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_booking_id bigint not null auto_increment, note varchar(255) not null, price double precision not null, time_finish datetime not null, time_start datetime not null, pitch_id bigint not null, user_id bigint not null, primary key (pitch_booking_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, cost double precision not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_booking_id bigint not null auto_increment, note varchar(255) not null, price double precision not null, time_finish datetime not null, time_start datetime not null, pitch_id bigint not null, user_id bigint not null, primary key (pitch_booking_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, cost double precision not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_booking_id bigint not null auto_increment, note varchar(255) not null, price double precision not null, time_finish datetime not null, time_start datetime not null, pitch_id bigint not null, user_id bigint not null, primary key (pitch_booking_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, cost double precision not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_booking_id bigint not null auto_increment, note varchar(255) not null, price double precision not null, time_finish datetime not null, time_start datetime not null, pitch_id bigint not null, user_id bigint not null, primary key (pitch_booking_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, encryted_password varchar(128) not null, username varchar(36) not null, role_id bigint not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, address varchar(255) not null, cost double precision not null, description varchar(255) not null, email varchar(255) not null, image varchar(255) not null, name varchar(30) not null, phonenumber varchar(255) not null, quantity integer not null, updated_at datetime not null, primary key (pitch_id)) type=MyISAM
create table pitch_booking (pitch_booking_id bigint not null auto_increment, note varchar(255) not null, price double precision not null, time_finish datetime not null, time_start datetime not null, pitch_id bigint not null, user_id bigint not null, primary key (pitch_booking_id)) type=MyISAM
create table role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
alter table app_user add constraint APP_USER_UK unique (username)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table role add constraint ROLE_UK unique (role_name)
alter table app_user add constraint FK49hx9nj6onfot1fxtonj986ab foreign key (role_id) references role (role_id)
alter table pitch_booking add constraint FKtdh2ewm0yen9inar9tjtw1yi3 foreign key (pitch_id) references pitch (pitch_id)
alter table pitch_booking add constraint FKdka9bgwxpwm278pt1u8nfhkbv foreign key (user_id) references app_user (user_id)
