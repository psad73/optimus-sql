/*
   piątek, 16 września 202216:15:10
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
--GO
--ALTER TABLE dbo.produkcja
--	DROP CONSTRAINT DF__produkcja__dataZ__5BAD9CC8
--GO
--ALTER TABLE dbo.produkcja
--	DROP CONSTRAINT DF__produkcja__reali__5CA1C101
--GO
--ALTER TABLE dbo.produkcja
--	DROP CONSTRAINT DF__produkcja__kontr__5D95E53A
--GO
--ALTER TABLE dbo.produkcja
--	DROP CONSTRAINT DF__produkcja__rozli__5E8A0973
GO
CREATE TABLE dbo.Tmp_produkcja
	(
	id int NOT NULL IDENTITY (1, 1),
	wyrobID int NULL,
	ilosc float(53) NULL,
	iloscWyprodukowano real NULL,
	dataZlecenia datetime2(0) NULL,
	dataProdukcji datetime2(0) NULL,
	holdingID int NULL,
	klientID int NULL,
	wprowadzil nvarchar(255) NULL,
	nadzorProdukcyjny int NULL,
	realizacjaStatus nvarchar(255) NULL,
	uwagi nvarchar(MAX) NULL,
	typProdukcji nvarchar(255) NULL,
	seria nvarchar(255) NULL,
	kontrolaJakosci bit NULL,
	nrPZP nvarchar(255) NULL,
	rozliczona bit NULL,
	sposobPakowaniaDoRap int NULL,
	SSMA_TimeStamp timestamp NOT NULL
	)  ON [PRIMARY]
	 TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE dbo.Tmp_produkcja SET (LOCK_ESCALATION = TABLE)
GO
DECLARE @v sql_variant 
SET @v = N'optimus_bo-20220906-2115.[produkcja]'
EXECUTE sp_addextendedproperty N'MS_SSMA_SOURCE', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_produkcja', NULL, NULL
GO
DECLARE @v sql_variant 
SET @v = N'optimus_bo-20220906-2115.[produkcja].[id]'
EXECUTE sp_addextendedproperty N'MS_SSMA_SOURCE', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_produkcja', N'COLUMN', N'id'
GO
DECLARE @v sql_variant 
SET @v = N'optimus_bo-20220906-2115.[produkcja].[wyrobID]'
EXECUTE sp_addextendedproperty N'MS_SSMA_SOURCE', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_produkcja', N'COLUMN', N'wyrobID'
GO
DECLARE @v sql_variant 
SET @v = N'optimus_bo-20220906-2115.[produkcja].[ilosc]'
EXECUTE sp_addextendedproperty N'MS_SSMA_SOURCE', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_produkcja', N'COLUMN', N'ilosc'
GO
DECLARE @v sql_variant 
SET @v = N'optimus_bo-20220906-2115.[produkcja].[iloscWyprodukowano]'
EXECUTE sp_addextendedproperty N'MS_SSMA_SOURCE', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_produkcja', N'COLUMN', N'iloscWyprodukowano'
GO
DECLARE @v sql_variant 
SET @v = N'optimus_bo-20220906-2115.[produkcja].[dataZlecenia]'
EXECUTE sp_addextendedproperty N'MS_SSMA_SOURCE', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_produkcja', N'COLUMN', N'dataZlecenia'
GO
DECLARE @v sql_variant 
SET @v = N'optimus_bo-20220906-2115.[produkcja].[dataProdukcji]'
EXECUTE sp_addextendedproperty N'MS_SSMA_SOURCE', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_produkcja', N'COLUMN', N'dataProdukcji'
GO
DECLARE @v sql_variant 
SET @v = N'optimus_bo-20220906-2115.[produkcja].[holdingID]'
EXECUTE sp_addextendedproperty N'MS_SSMA_SOURCE', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_produkcja', N'COLUMN', N'holdingID'
GO
DECLARE @v sql_variant 
SET @v = N'optimus_bo-20220906-2115.[produkcja].[klientID]'
EXECUTE sp_addextendedproperty N'MS_SSMA_SOURCE', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_produkcja', N'COLUMN', N'klientID'
GO
DECLARE @v sql_variant 
SET @v = N'optimus_bo-20220906-2115.[produkcja].[wprowadzil]'
EXECUTE sp_addextendedproperty N'MS_SSMA_SOURCE', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_produkcja', N'COLUMN', N'wprowadzil'
GO
DECLARE @v sql_variant 
SET @v = N'optimus_bo-20220906-2115.[produkcja].[nadzorProdukcyjny]'
EXECUTE sp_addextendedproperty N'MS_SSMA_SOURCE', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_produkcja', N'COLUMN', N'nadzorProdukcyjny'
GO
DECLARE @v sql_variant 
SET @v = N'optimus_bo-20220906-2115.[produkcja].[realizacjaStatus]'
EXECUTE sp_addextendedproperty N'MS_SSMA_SOURCE', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_produkcja', N'COLUMN', N'realizacjaStatus'
GO
DECLARE @v sql_variant 
SET @v = N'optimus_bo-20220906-2115.[produkcja].[uwagi]'
EXECUTE sp_addextendedproperty N'MS_SSMA_SOURCE', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_produkcja', N'COLUMN', N'uwagi'
GO
DECLARE @v sql_variant 
SET @v = N'optimus_bo-20220906-2115.[produkcja].[typProdukcji]'
EXECUTE sp_addextendedproperty N'MS_SSMA_SOURCE', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_produkcja', N'COLUMN', N'typProdukcji'
GO
DECLARE @v sql_variant 
SET @v = N'optimus_bo-20220906-2115.[produkcja].[seria]'
EXECUTE sp_addextendedproperty N'MS_SSMA_SOURCE', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_produkcja', N'COLUMN', N'seria'
GO
DECLARE @v sql_variant 
SET @v = N'optimus_bo-20220906-2115.[produkcja].[kontrolaJakosci]'
EXECUTE sp_addextendedproperty N'MS_SSMA_SOURCE', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_produkcja', N'COLUMN', N'kontrolaJakosci'
GO
DECLARE @v sql_variant 
SET @v = N'optimus_bo-20220906-2115.[produkcja].[nrPZP]'
EXECUTE sp_addextendedproperty N'MS_SSMA_SOURCE', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_produkcja', N'COLUMN', N'nrPZP'
GO
DECLARE @v sql_variant 
SET @v = N'optimus_bo-20220906-2115.[produkcja].[rozliczona]'
EXECUTE sp_addextendedproperty N'MS_SSMA_SOURCE', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_produkcja', N'COLUMN', N'rozliczona'
GO
DECLARE @v sql_variant 
SET @v = N'optimus_bo-20220906-2115.[produkcja].[sposobPakowaniaDoRap]'
EXECUTE sp_addextendedproperty N'MS_SSMA_SOURCE', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_produkcja', N'COLUMN', N'sposobPakowaniaDoRap'
GO
ALTER TABLE dbo.Tmp_produkcja ADD CONSTRAINT
	DF__produkcja__dataZ__5BAD9CC8 DEFAULT (getdate()) FOR dataZlecenia
GO
ALTER TABLE dbo.Tmp_produkcja ADD CONSTRAINT
	DF__produkcja__reali__5CA1C101 DEFAULT ('Do realizacji') FOR realizacjaStatus
GO
ALTER TABLE dbo.Tmp_produkcja ADD CONSTRAINT
	DF__produkcja__kontr__5D95E53A DEFAULT ((0)) FOR kontrolaJakosci
GO
ALTER TABLE dbo.Tmp_produkcja ADD CONSTRAINT
	DF__produkcja__rozli__5E8A0973 DEFAULT ((0)) FOR rozliczona
GO
SET IDENTITY_INSERT dbo.Tmp_produkcja ON
GO
IF EXISTS(SELECT * FROM dbo.produkcja)
	 EXEC('INSERT INTO dbo.Tmp_produkcja (id, wyrobID, ilosc, iloscWyprodukowano, dataZlecenia, dataProdukcji, holdingID, klientID, wprowadzil, nadzorProdukcyjny, realizacjaStatus, uwagi, typProdukcji, seria, kontrolaJakosci, nrPZP, rozliczona, sposobPakowaniaDoRap)
		SELECT id, wyrobID, ilosc, iloscWyprodukowano, dataZlecenia, dataProdukcji, holdingID, klientID, wprowadzil, nadzorProdukcyjny, realizacjaStatus, CONVERT(nvarchar(MAX), uwagi), typProdukcji, seria, kontrolaJakosci, nrPZP, rozliczona, sposobPakowaniaDoRap FROM dbo.produkcja WITH (HOLDLOCK TABLOCKX)')
GO
SET IDENTITY_INSERT dbo.Tmp_produkcja OFF
GO
DROP TABLE dbo.produkcja
GO
EXECUTE sp_rename N'dbo.Tmp_produkcja', N'produkcja', 'OBJECT' 
GO
ALTER TABLE dbo.produkcja ADD CONSTRAINT
	produkcja$serial# PRIMARY KEY CLUSTERED 
	(
	id
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
CREATE NONCLUSTERED INDEX produkcja$holdingID1 ON dbo.produkcja
	(
	holdingID
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
DECLARE @v sql_variant 
SET @v = N'optimus_bo-20220906-2115.[produkcja].[holdingID1]'
EXECUTE sp_addextendedproperty N'MS_SSMA_SOURCE', @v, N'SCHEMA', N'dbo', N'TABLE', N'produkcja', N'INDEX', N'produkcja$holdingID1'
GO
CREATE NONCLUSTERED INDEX produkcja$klientID ON dbo.produkcja
	(
	klientID
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
DECLARE @v sql_variant 
SET @v = N'optimus_bo-20220906-2115.[produkcja].[klientID]'
EXECUTE sp_addextendedproperty N'MS_SSMA_SOURCE', @v, N'SCHEMA', N'dbo', N'TABLE', N'produkcja', N'INDEX', N'produkcja$klientID'
GO
CREATE NONCLUSTERED INDEX produkcja$towarID ON dbo.produkcja
	(
	wyrobID
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
DECLARE @v sql_variant 
SET @v = N'optimus_bo-20220906-2115.[produkcja].[towarID]'
EXECUTE sp_addextendedproperty N'MS_SSMA_SOURCE', @v, N'SCHEMA', N'dbo', N'TABLE', N'produkcja', N'INDEX', N'produkcja$towarID'
GO
COMMIT
select Has_Perms_By_Name(N'dbo.produkcja', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.produkcja', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.produkcja', 'Object', 'CONTROL') as Contr_Per 