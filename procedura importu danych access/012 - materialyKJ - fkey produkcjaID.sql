/*
   piątek, 16 września 202217:03:57
   User: sa
   Server: EFDEV01
   Database: optimus
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
ALTER TABLE dbo.produkcja SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.produkcja', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.produkcja', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.produkcja', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.materialyKJ WITH NOCHECK ADD CONSTRAINT
	materialyKJ$Reference14 FOREIGN KEY
	(
	produkcjaID
	) REFERENCES dbo.produkcja
	(
	id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	 NOT FOR REPLICATION

GO
ALTER TABLE dbo.materialyKJ
	NOCHECK CONSTRAINT materialyKJ$Reference14
GO
ALTER TABLE dbo.materialyKJ SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.materialyKJ', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.materialyKJ', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.materialyKJ', 'Object', 'CONTROL') as Contr_Per 