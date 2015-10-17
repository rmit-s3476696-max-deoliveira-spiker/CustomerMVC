/*
   Saturday, October 17, 20153:07:11 AM
   User: 
   Server: DESKTOP-GDRRLOJ
   Database: Assignment2
   Application: 
*/

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Booking ADD
	Poster nvarchar(MAX) NULL
GO
ALTER TABLE dbo.Booking SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.Booking', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.Booking', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.Booking', 'Object', 'CONTROL') as Contr_Per 