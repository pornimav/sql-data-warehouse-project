/*
================================================
Create Database and Schemas
================================================
Script Purpose :
      This script creates a new database named 'DataWarehouse' after checking if it alreday exists.
      If the database exists, it is dropped and recreated. Additionally scripts set up three schemas
      within the database : 'bronze', 'silver', 'gold'.

WARNING:
       Runing this script will drop the entire 'DataWarehouse' database if it exists.
       All data in the database will be permently deleted. Proceed with caution and
       ensure you have peoper backups before running this script.
*/

USE master;
GO
-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 from sys.databases WHERE name= 'DataWarehouse')
BEGIN 
  ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE DataWarehouse;
END;
GO

-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
Go

USE DataWarehouse;
GO

--create schemas
CREATE SCHEMA bronze;
Go
  
CREATE SCHEMA silver;
Go

CREATE SCHEMA gold;
Go
