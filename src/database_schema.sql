IF NOT EXISTS(SELECT * FROM sys.databases WHERE name = 'myAPI')
BEGIN
    CREATE DATABASE [DataBase]
END

USE [DataBase]

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='books' and xtype='U')
BEGIN
    CREATE TABLE library.books (
        ID INT AUTO_INCREMENT PRIMARY KEY,
        ISBN VARCHAR(10) NOT NULL,
        Title VARCHAR(64) NOT NULL
    );
END