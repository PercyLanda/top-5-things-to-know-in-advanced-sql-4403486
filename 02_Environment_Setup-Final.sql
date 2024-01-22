-- Step 1: Create a new database to upload your datasets into
USE master;
GO
CREATE DATABASE Red30TechDB;

-- Step 2: Switch to using the new database you just created
USE Red30TechDB; 

-- Step 3: Upload the datasets as tables into SSMS
-- Follow along with demo in video. Ensure you close out and reopen SSMS when completed. Make sure that you run USE Red30Tech again if you exit and re-enter SSMS!
-- -------------------------------------------------------------
-- done
-- -------------------------------------------------------------
-- Step 4:  Add Primary Key Constraints
  --- SET PK FOR ONLINE RETAIL SALES
  -- First, Make cols Non-Nullable
  ALTER TABLE dbo.Online_Retail_Sales
  ALTER COLUMN OrderNum float NOT NULL
  GO
  -- Identify OrderNum as the Primary Key of this table
  ALTER TABLE dbo.Online_Retail_Sales add primary key (OrderNum) 
  GO
-- ------------------------------------------------------------------------------------
-- done
-- ------------------------------------------------------------------------------------
  --- SET PK FOR SESSION INFO 
  -- First, Make cols Non-Nullable
  ALTER TABLE dbo.Session_Info
  ALTER COLUMN Start Date datetime NOT NULL
  GO 
  ALTER TABLE dbo.Session_Info
  ALTER COLUMN End Date datetime NOT NULL
  GO
  ALTER TABLE dbo.Session_Info
  ALTER COLUMN Session Name nvarchar(255) NOT NULL
  GO
  -- Identify Start Date, End Date, and Session name as the Primary Key of this table
  ALTER TABLE dbo.Session_Info add primary key (Start Date,End Date,Session Name) 
  GO
---------------------------------------------------------------
-- done
---------------------------------------------------------------  
  --- SET PK FOR SPEAKER INFO
  -- First, Make cols Non-Nullable
  ALTER TABLE dbo.SpeakerInfo$
  ALTER COLUMN Name nvarchar(255) NOT NULL
  GO 

  ALTER TABLE dbo.SpeakerInfo$
  ALTER COLUMN Session Name nvarchar(255) NOT NULL
  GO

  -- Identify Name and Session Name as the Primary Key of this table
  -- Some session topics are duplicates of each other but they are delivered by different speakers
  ALTER TABLE dbo.SpeakerInfo$ add primary key (Name,Session Name) 
  GO
---------------------------------------------------------------
-- done
---------------------------------------------------------------  
  --- SET PK FOR CONFERENCE ATTENDEES
  -- First, Make cols Non-Nullable
  ALTER TABLE dbo.Convention_Attendees
  ALTER COLUMN Email nvarchar(255)  NOT NULL
  GO
  -- Identify Email as the Primary Key of this table
  ALTER TABLE dbo.Convention_Attendees add primary key (Email) 
  GO
-- --------------------------------------------------------------------  
-- done
-- --------------------------------------------------------------------  
  --- SET PK FOR INVENTORY
  -- First, Make cols Non-Nullable
  ALTER TABLE dbo.Inventory
  ALTER COLUMN ProdNumber nvarchar(255) NOT NULL
  GO
  ALTER TABLE dbo.Inventory
  ALTER COLUMN ProdName nvarchar(255) NOT NULL
  GO
  -- Identify ProdNumber and ProdName as the composite Primary Key of this table
  ALTER TABLE dbo.Inventory add primary key (ProdNumber, ProdName)
  GO
-- --------------------------------------------------------------------
-- done
-- --------------------------------------------------------------------
  --- SET PK FOR EMPLOYEE DIRECTORY
  -- First, Make cols Non-Nullable
  ALTER TABLE dbo.Employee_Directory
  ALTER COLUMN EmployeeID nvarchar(255) NOT NULL
  GO
  -- Identify EmployeeID as the composite Primary Key of this table
  ALTER TABLE dbo.Employee_Directory add primary key (EmployeeID)
  GO
-- --------------------------------------------------------------------
  -- NOTE: You may need to refresh your connection to see this change under the Keys section. If that does not work, you may need to exit out of SSMS and re-enter. 
  -- Make sure that you run USE Red30Tech again if you exit and re-enter SSMS!

-- You're ready to start querying!

