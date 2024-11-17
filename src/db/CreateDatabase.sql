/* MyTestDB-01Git Database Creation */
CREATE DATABASE [MyTestDB-01Git]
 ON  PRIMARY 
( NAME = N'MyTestDB-01Repo_data', FILENAME = N'/var/opt/mssql/data/MyTestDB-01Repo.mdf' , SIZE = 4MB , FILEGROWTH = 8MB )
 LOG ON 
( NAME = N'MyTestDB-01Repo_log', FILENAME = N'/var/opt/mssql/log/MyTestDB-01Repo_log.ldf' , SIZE = 4MB , FILEGROWTH = 8MB );
GO

USE [MyTestDB-01Git]
GO

