/*
   piątek, 16 września 202215:56:55
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
ALTER TABLE dbo.sposobyPakowania
	DROP CONSTRAINT sposobyPakowania$Reference2
GO
ALTER TABLE dbo.sposobyPakowaniaLista SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.sposobyPakowaniaLista', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.sposobyPakowaniaLista', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.sposobyPakowaniaLista', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.sposobyPakowania
	DROP CONSTRAINT sposobyPakowania$Reference
GO
ALTER TABLE dbo.receptury SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.receptury', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.receptury', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.receptury', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.sposobyPakowania
	DROP CONSTRAINT sposobyPakowania$materialysposobyPakowania
GO
ALTER TABLE dbo.materialy SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.materialy', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.materialy', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.materialy', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
CREATE TABLE dbo.Tmp_sposobyPakowania
	(
	sMatID int NOT NULL IDENTITY (1, 1),
	matID int NULL,
	sposobPakowania int NULL,
	recepturaPakowania int NULL,
	odbiorcaID int NULL,
	opis nvarchar(MAX) NULL,
	cena real NULL,
	symPID int NULL,
	symBID int NULL,
	SSMA_TimeStamp timestamp NOT NULL
	)  ON [PRIMARY]
	 TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE dbo.Tmp_sposobyPakowania SET (LOCK_ESCALATION = TABLE)
GO
DECLARE @v sql_variant 
SET @v = N'optimus_bo-20220906-2115.[sposobyPakowania]'
EXECUTE sp_addextendedproperty N'MS_SSMA_SOURCE', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_sposobyPakowania', NULL, NULL
GO
DECLARE @v sql_variant 
SET @v = N'optimus_bo-20220906-2115.[sposobyPakowania].[sMatID]'
EXECUTE sp_addextendedproperty N'MS_SSMA_SOURCE', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_sposobyPakowania', N'COLUMN', N'sMatID'
GO
DECLARE @v sql_variant 
SET @v = N'optimus_bo-20220906-2115.[sposobyPakowania].[matID]'
EXECUTE sp_addextendedproperty N'MS_SSMA_SOURCE', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_sposobyPakowania', N'COLUMN', N'matID'
GO
DECLARE @v sql_variant 
SET @v = N'optimus_bo-20220906-2115.[sposobyPakowania].[sposobPakowania]'
EXECUTE sp_addextendedproperty N'MS_SSMA_SOURCE', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_sposobyPakowania', N'COLUMN', N'sposobPakowania'
GO
DECLARE @v sql_variant 
SET @v = N'optimus_bo-20220906-2115.[sposobyPakowania].[recepturaPakowania]'
EXECUTE sp_addextendedproperty N'MS_SSMA_SOURCE', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_sposobyPakowania', N'COLUMN', N'recepturaPakowania'
GO
DECLARE @v sql_variant 
SET @v = N'optimus_bo-20220906-2115.[sposobyPakowania].[odbiorcaID]'
EXECUTE sp_addextendedproperty N'MS_SSMA_SOURCE', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_sposobyPakowania', N'COLUMN', N'odbiorcaID'
GO
DECLARE @v sql_variant 
SET @v = N'optimus_bo-20220906-2115.[sposobyPakowania].[opis]'
EXECUTE sp_addextendedproperty N'MS_SSMA_SOURCE', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_sposobyPakowania', N'COLUMN', N'opis'
GO
DECLARE @v sql_variant 
SET @v = N'optimus_bo-20220906-2115.[sposobyPakowania].[cena]'
EXECUTE sp_addextendedproperty N'MS_SSMA_SOURCE', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_sposobyPakowania', N'COLUMN', N'cena'
GO
DECLARE @v sql_variant 
SET @v = N'optimus_bo-20220906-2115.[sposobyPakowania].[symPID]'
EXECUTE sp_addextendedproperty N'MS_SSMA_SOURCE', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_sposobyPakowania', N'COLUMN', N'symPID'
GO
DECLARE @v sql_variant 
SET @v = N'optimus_bo-20220906-2115.[sposobyPakowania].[symBID]'
EXECUTE sp_addextendedproperty N'MS_SSMA_SOURCE', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_sposobyPakowania', N'COLUMN', N'symBID'
GO
SET IDENTITY_INSERT dbo.Tmp_sposobyPakowania ON
GO
IF EXISTS(SELECT * FROM dbo.sposobyPakowania)
	 EXEC('INSERT INTO dbo.Tmp_sposobyPakowania (sMatID, matID, sposobPakowania, recepturaPakowania, odbiorcaID, opis, cena, symPID, symBID)
		SELECT sMatID, matID, sposobPakowania, recepturaPakowania, odbiorcaID, CONVERT(nvarchar(MAX), opis), cena, symPID, symBID FROM dbo.sposobyPakowania WITH (HOLDLOCK TABLOCKX)')
GO
SET IDENTITY_INSERT dbo.Tmp_sposobyPakowania OFF
GO
ALTER TABLE dbo.rozliczenieProdukcji
	DROP CONSTRAINT rozliczenieProdukcji$Reference15
GO
ALTER TABLE dbo.planySzczegoly
	DROP CONSTRAINT planySzczegoly$sposobyPakowaniaplanySzczegoly
GO
DROP TABLE dbo.sposobyPakowania
GO
EXECUTE sp_rename N'dbo.Tmp_sposobyPakowania', N'sposobyPakowania', 'OBJECT' 
GO
ALTER TABLE dbo.sposobyPakowania ADD CONSTRAINT
	sposobyPakowania$PrimaryKey PRIMARY KEY CLUSTERED 
	(
	sMatID
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
DECLARE @v sql_variant 
SET @v = N'optimus_bo-20220906-2115.[sposobyPakowania].[PrimaryKey]'
EXECUTE sp_addextendedproperty N'MS_SSMA_SOURCE', @v, N'SCHEMA', N'dbo', N'TABLE', N'sposobyPakowania', N'CONSTRAINT', N'sposobyPakowania$PrimaryKey'
GO
CREATE NONCLUSTERED INDEX sposobyPakowania$matID ON dbo.sposobyPakowania
	(
	matID
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
DECLARE @v sql_variant 
SET @v = N'optimus_bo-20220906-2115.[sposobyPakowania].[matID]'
EXECUTE sp_addextendedproperty N'MS_SSMA_SOURCE', @v, N'SCHEMA', N'dbo', N'TABLE', N'sposobyPakowania', N'INDEX', N'sposobyPakowania$matID'
GO
CREATE NONCLUSTERED INDEX sposobyPakowania$odbiorcaID ON dbo.sposobyPakowania
	(
	odbiorcaID
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
DECLARE @v sql_variant 
SET @v = N'optimus_bo-20220906-2115.[sposobyPakowania].[odbiorcaID]'
EXECUTE sp_addextendedproperty N'MS_SSMA_SOURCE', @v, N'SCHEMA', N'dbo', N'TABLE', N'sposobyPakowania', N'INDEX', N'sposobyPakowania$odbiorcaID'
GO
CREATE NONCLUSTERED INDEX sposobyPakowania$symPID ON dbo.sposobyPakowania
	(
	symPID
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
DECLARE @v sql_variant 
SET @v = N'optimus_bo-20220906-2115.[sposobyPakowania].[symPID]'
EXECUTE sp_addextendedproperty N'MS_SSMA_SOURCE', @v, N'SCHEMA', N'dbo', N'TABLE', N'sposobyPakowania', N'INDEX', N'sposobyPakowania$symPID'
GO
ALTER TABLE dbo.sposobyPakowania WITH NOCHECK ADD CONSTRAINT
	sposobyPakowania$materialysposobyPakowania FOREIGN KEY
	(
	matID
	) REFERENCES dbo.materialy
	(
	matID
	) ON UPDATE  CASCADE 
	 ON DELETE  CASCADE 
	
GO
DECLARE @v sql_variant 
SET @v = N'optimus_bo-20220906-2115.[sposobyPakowania].[materialysposobyPakowania]'
EXECUTE sp_addextendedproperty N'MS_SSMA_SOURCE', @v, N'SCHEMA', N'dbo', N'TABLE', N'sposobyPakowania', N'CONSTRAINT', N'sposobyPakowania$materialysposobyPakowania'
GO
ALTER TABLE dbo.sposobyPakowania WITH NOCHECK ADD CONSTRAINT
	sposobyPakowania$Reference FOREIGN KEY
	(
	recepturaPakowania
	) REFERENCES dbo.receptury
	(
	recID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
DECLARE @v sql_variant 
SET @v = N'optimus_bo-20220906-2115.[sposobyPakowania].[Reference]'
EXECUTE sp_addextendedproperty N'MS_SSMA_SOURCE', @v, N'SCHEMA', N'dbo', N'TABLE', N'sposobyPakowania', N'CONSTRAINT', N'sposobyPakowania$Reference'
GO
ALTER TABLE dbo.sposobyPakowania WITH NOCHECK ADD CONSTRAINT
	sposobyPakowania$Reference2 FOREIGN KEY
	(
	sposobPakowania
	) REFERENCES dbo.sposobyPakowaniaLista
	(
	id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
DECLARE @v sql_variant 
SET @v = N'optimus_bo-20220906-2115.[sposobyPakowania].[Reference2]'
EXECUTE sp_addextendedproperty N'MS_SSMA_SOURCE', @v, N'SCHEMA', N'dbo', N'TABLE', N'sposobyPakowania', N'CONSTRAINT', N'sposobyPakowania$Reference2'
GO
COMMIT
select Has_Perms_By_Name(N'dbo.sposobyPakowania', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.sposobyPakowania', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.sposobyPakowania', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.planySzczegoly WITH NOCHECK ADD CONSTRAINT
	planySzczegoly$sposobyPakowaniaplanySzczegoly FOREIGN KEY
	(
	sMatID
	) REFERENCES dbo.sposobyPakowania
	(
	sMatID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
DECLARE @v sql_variant 
SET @v = N'optimus_bo-20220906-2115.[planySzczegoly].[sposobyPakowaniaplanySzczegoly]'
EXECUTE sp_addextendedproperty N'MS_SSMA_SOURCE', @v, N'SCHEMA', N'dbo', N'TABLE', N'planySzczegoly', N'CONSTRAINT', N'planySzczegoly$sposobyPakowaniaplanySzczegoly'
GO
ALTER TABLE dbo.planySzczegoly SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.planySzczegoly', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.planySzczegoly', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.planySzczegoly', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.rozliczenieProdukcji WITH NOCHECK ADD CONSTRAINT
	rozliczenieProdukcji$Reference15 FOREIGN KEY
	(
	sMatID
	) REFERENCES dbo.sposobyPakowania
	(
	sMatID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
DECLARE @v sql_variant 
SET @v = N'optimus_bo-20220906-2115.[rozliczenieProdukcji].[Reference15]'
EXECUTE sp_addextendedproperty N'MS_SSMA_SOURCE', @v, N'SCHEMA', N'dbo', N'TABLE', N'rozliczenieProdukcji', N'CONSTRAINT', N'rozliczenieProdukcji$Reference15'
GO
ALTER TABLE dbo.rozliczenieProdukcji SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.rozliczenieProdukcji', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.rozliczenieProdukcji', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.rozliczenieProdukcji', 'Object', 'CONTROL') as Contr_Per 