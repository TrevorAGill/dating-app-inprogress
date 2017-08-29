SET MODE PostgreSQL;

CREATE TABLE IF NOT EXISTS users (
 id int PRIMARY KEY auto_increment,
 name VARCHAR,
 age INTEGER,
 gender VARCHAR,
 genderPreference VARCHAR,
 matchminage INTEGER,
 matchmaxage INTEGER,
 zip VARCHAR,
 email VARCHAR,
 password VARCHAR
);

CREATE TABLE IF NOT EXISTS authentications (
 id int PRIMARY KEY auto_increment,
 username VARCHAR UNIQUE,
  password VARCHAR
);

CREATE TABLE IF NOT EXISTS questions (
 id int PRIMARY KEY auto_increment,
 prompt VARCHAR,
);


CREATE TABLE IF NOT EXISTS userquestions (
 id int PRIMARY KEY auto_increment,
 userid INTEGER,
 questionid INTEGER,
);