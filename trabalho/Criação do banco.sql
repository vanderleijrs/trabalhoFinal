CREATE DATABASE web;

CREATE TABLE assalto(
id int(11) AUTO_INCREMENT,
bairro varchar(100) NOT NULL,
rua varchar(100)NOT NULL,
data date,
PRIMARY KEY (id)
);

CREATE TABLE ruas(
id int(11) AUTO_INCREMENT,
bairro varchar(100) NOT NULL,
rua varchar(100) NOT NULL,
problema varchar(100)NOT NULL,
PRIMARY KEY (id)
);