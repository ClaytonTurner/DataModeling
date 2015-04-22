DROP DATABASE schs;
CREATE DATABASE schs;
USE schs;
CREATE TABLE IF NOT EXISTS Constituents
(
id int not null primary key auto_increment,
lastName varchar(255),
firstName varchar(255),
address varchar(255),
city varchar(255),
state varchar(255),
zip int,
phone int,
email varchar(255)
);

CREATE TABLE IF NOT EXISTS Mailing
(
id int not null primary key auto_increment,
date_sent datetime,
type_of varchar(255),
constituent_id int,
foreign key (constituent_id) references Constituents(id)
	ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS Revenue
(
id int not null primary key auto_increment,
amount float not null,
payment_type text, 
constituent_paid int,
foreign key (constituent_paid) references Constituents(id)
	ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS Event
(
Name varchar(255) not null primary key,
description varchar(255),
address varchar(255)
);

CREATE TABLE IF NOT EXISTS Company_Account
(
account_number int not null primary key,
designation varchar(255)
);

CREATE TABLE IF NOT EXISTS Pays
(
id INT not null primary key auto_increment,
dateSent datetime,
typeOf varchar(255),
constituent_id int,
revenue_id int,
foreign key (revenue_id) references Revenue(id)
	ON DELETE CASCADE,
foreign key (constituent_id) references constituents(id)
	ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS Deposits
(
id INT not null primary key auto_increment,
account_number int,
revenue_id int,
foreign key (account_number) references Company_Account(account_number)
	ON DELETE CASCADE,
foreign key (revenue_id) references Revenue(id)
	ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS Funds
(
id INT not null primary key auto_increment,
account_number int not null,
date_sent datetime,
event_name varchar(255),
revenue_id int,
foreign key (event_name) references Event(Name)
	ON DELETE CASCADE,
foreign key (revenue_id) references Revenue(id)
	ON DELETE CASCADE
);