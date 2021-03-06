/*
   Saturday, October 17, 20153:36:19 AM
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
CREATE TABLE dbo.Payment
	(
	First_Name nvarchar(MAX) NOT NULL,
	Last_Name nvarchar(MAX) NOT NULL,
	CardNo int NOT NULL,
	CCV int NOT NULL
	)  ON [PRIMARY]
	 TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE dbo.Payment ADD CONSTRAINT
	PK_Payment PRIMARY KEY CLUSTERED 
	(
	CardNo
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.Payment SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.Payment', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.Payment', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.Payment', 'Object', 'CONTROL') as Contr_Per 