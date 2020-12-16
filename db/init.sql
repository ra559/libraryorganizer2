CREATE DATABASE liborg;
USE liborg;

CREATE TABLE users(
    userid INT NOT NULL,
    useremail varchar(255) NOT NULL,
    userpasswd VARCHAR(255) NOT NULL,
    PRIMARY KEY (userid)
);

CREATE TABLE books(
    bookid INT NOT NULL,
    tittle varchar(255) NOT NULL,
    author varchar(255),
    lang varchar(255),
    genre varchar(255),
    publisher varchar(255),
    pubyear INT,
    isbn BIGINT,
    pages INT,
    PRIMARY KEY (bookid)
);

INSERT INTO books VALUES
(123456,'the next person you meet in heaven','Mitch Albom','English','Fiction','Harper',2018,9780062294449,224),
(156324,'the five people you meet in heaven','Mitch Albom','English','Fiction','Hyperion',2003,9780786868711,196),
(132546,'have a little faith','Mitch Albom','English','Fiction','Hyperion',2009,9780786868728,254);
