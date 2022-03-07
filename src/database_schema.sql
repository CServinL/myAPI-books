CREATE DATABASE IF NOT EXISTS myapi

USE myapi

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='books' and xtype='U')
BEGIN
    CREATE TABLE myapi.books (
        ID INT AUTO_INCREMENT PRIMARY KEY,
        ISBN VARCHAR(10) NOT NULL,
        Title VARCHAR(64) NOT NULL
    );
END