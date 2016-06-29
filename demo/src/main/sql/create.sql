-- spring demo
-- DB: PostgreSQL9.5

-- init
DROP TABLE IF EXISTS roles cascade;
DROP TABLE IF EXISTS users cascade;
DROP TABLE IF EXISTS user_roles cascade;

-- role master
create table roles(
  role_id char(7) NOT NULL,
  rolename varchar(40) NOT NULL,
  PRIMARY KEY (role_id)
);

-- user
create table users(
  user_id serial NOT NULL,
  username varchar(40) NOT NULL,
  password varchar(20) NOT NULL,
  expiry_date date,
  PRIMARY KEY (user_id)
);

-- user role
create table user_roles(
  user_id int NOT NULL references users(user_id),
  role_id char(7) NOT NULL references roles(role_id),
  expiry_date date,
  PRIMARY KEY(user_id, role_id)
);

