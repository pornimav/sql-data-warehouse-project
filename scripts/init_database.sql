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
