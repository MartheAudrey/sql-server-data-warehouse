/*
------------------------------------------
Create Database and Schemas
------------------------------------------
Script purpose:
  This script creates a new database named 'DataWarehouse' after checking if it already exists.
  If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
  within the database: 'bronze', 'silver', 'gold'.

WARNING:
  Running this script will drop the entire 'DataWarehouse' database if it exists.
  All data in the database will be permanently deleted. Proceed with caution and ensure
  you have proper backups before running this script.
*/
-- Create a database 'Datawarehouse'

-- Switch context to the 'master' database to perform administrative operations
USE master;
GO

-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
  ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE DataWarehouse;
END;
GO

-- Create a new database named DataWarehouse
CREATE DATABASE DataWarehouse;

-- Switch context to the newly created 'DataWarehouse' database 
USE DataWarehouse;
GO
-- Create the 'bronze' schema (typically used for raw/ingested data)
CREATE SCHEMA bronze;
GO -- Batch seperator: ensures CREATE SCHEMA runs as its own statement/batch

-- Create the 'silver' schema (typically used for cleaned/transformed data)
CREATE SCHEMA silver;
GO

-- Create the 'bronze' schema (typically used for business-ready/aggregated data)
CREATE SCHEMA gold;
GO

/*
	GO isn't actual T-SQL — it's a batch separator recognized by tools like SSMS and sqlcmd. 
	It's required here because CREATE SCHEMA must be the only statement in its batch.
*/
