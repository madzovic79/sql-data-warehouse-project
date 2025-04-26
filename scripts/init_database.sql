/*
============================================
Create Database and Schemas
============================================
Script Purpose:
    This script creates a new database named 'DataWarehouse' after checking if it already exists.
    If the datbase exists, it s dropped and recreated. Additionally, the script sets up three 
    schemas with the datbase: 'bronze', 'silver', and 'gold'.

WARNING:
    Running this script will drop the enitre 'DataWarehouse' database if it exists.
    All data in the database will be permanently deleted. Proceed with caution
    and esnure you have proper backups before running this script.
*/

--Create Database 'DataWarehouse'

USE master;

--Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE; 
    DROP DATABASE DataWarehouse;
END;
GO
--Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO
USE DataWarehouse;
GO

--Create Schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
