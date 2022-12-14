/*
   poniedziałek, 26 września 202201:54:41
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
CREATE TABLE dbo.Tmp_badaniaSurDlaWyrGot
	(
	bMatId int NOT NULL IDENTITY (1, 1),
	matId int NOT NULL,
	nazwaSurowca int NOT NULL,
	rodzajBadMetodykaLab int NULL,
	wymaganieWgSpecyfikacji nvarchar(255) NULL,
	czestotliwosc int NULL,
	platnik int NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Tmp_badaniaSurDlaWyrGot SET (LOCK_ESCALATION = TABLE)
GO
DECLARE @v sql_variant 
SET @v = N'optimus_bo.[badaniaSurDlaWyrGot]'
EXECUTE sp_addextendedproperty N'MS_SSMA_SOURCE', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_badaniaSurDlaWyrGot', NULL, NULL
GO
DECLARE @v sql_variant 
SET @v = N'optimus_bo.[badaniaSurDlaWyrGot].[bMatId]'
EXECUTE sp_addextendedproperty N'MS_SSMA_SOURCE', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_badaniaSurDlaWyrGot', N'COLUMN', N'bMatId'
GO
DECLARE @v sql_variant 
SET @v = N'optimus_bo.[badaniaSurDlaWyrGot].[matId]'
EXECUTE sp_addextendedproperty N'MS_SSMA_SOURCE', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_badaniaSurDlaWyrGot', N'COLUMN', N'matId'
GO
DECLARE @v sql_variant 
SET @v = N'optimus_bo.[badaniaSurDlaWyrGot].[nazwaSurowca]'
EXECUTE sp_addextendedproperty N'MS_SSMA_SOURCE', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_badaniaSurDlaWyrGot', N'COLUMN', N'nazwaSurowca'
GO
DECLARE @v sql_variant 
SET @v = N'optimus_bo.[badaniaSurDlaWyrGot].[rodzajBadMetodykaLab]'
EXECUTE sp_addextendedproperty N'MS_SSMA_SOURCE', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_badaniaSurDlaWyrGot', N'COLUMN', N'rodzajBadMetodykaLab'
GO
DECLARE @v sql_variant 
SET @v = N'optimus_bo.[badaniaSurDlaWyrGot].[wymaganieWgSpecyfikacji]'
EXECUTE sp_addextendedproperty N'MS_SSMA_SOURCE', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_badaniaSurDlaWyrGot', N'COLUMN', N'wymaganieWgSpecyfikacji'
GO
DECLARE @v sql_variant 
SET @v = N'optimus_bo.[badaniaSurDlaWyrGot].[czestotliwosc]'
EXECUTE sp_addextendedproperty N'MS_SSMA_SOURCE', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_badaniaSurDlaWyrGot', N'COLUMN', N'czestotliwosc'
GO
DECLARE @v sql_variant 
SET @v = N'optimus_bo.[badaniaSurDlaWyrGot].[platnik]'
EXECUTE sp_addextendedproperty N'MS_SSMA_SOURCE', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_badaniaSurDlaWyrGot', N'COLUMN', N'platnik'
GO
SET IDENTITY_INSERT dbo.Tmp_badaniaSurDlaWyrGot ON
GO
IF EXISTS(SELECT * FROM dbo.badaniaSurDlaWyrGot)
	 EXEC('INSERT INTO dbo.Tmp_badaniaSurDlaWyrGot (bMatId, matId, nazwaSurowca, rodzajBadMetodykaLab, wymaganieWgSpecyfikacji, czestotliwosc, platnik)
		SELECT bMatId, matId, nazwaSurowca, rodzajBadMetodykaLab, wymaganieWgSpecyfikacji, czestotliwosc, platnik FROM dbo.badaniaSurDlaWyrGot WITH (HOLDLOCK TABLOCKX)')
GO
SET IDENTITY_INSERT dbo.Tmp_badaniaSurDlaWyrGot OFF
GO
DROP TABLE dbo.badaniaSurDlaWyrGot
GO
EXECUTE sp_rename N'dbo.Tmp_badaniaSurDlaWyrGot', N'badaniaSurDlaWyrGot', 'OBJECT' 
GO
ALTER TABLE dbo.badaniaSurDlaWyrGot ADD CONSTRAINT
	badaniaSurDlaWyrGot$PrimaryKey PRIMARY KEY CLUSTERED 
	(
	bMatId
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
DECLARE @v sql_variant 
SET @v = N'optimus_bo.[badaniaSurDlaWyrGot].[PrimaryKey]'
EXECUTE sp_addextendedproperty N'MS_SSMA_SOURCE', @v, N'SCHEMA', N'dbo', N'TABLE', N'badaniaSurDlaWyrGot', N'CONSTRAINT', N'badaniaSurDlaWyrGot$PrimaryKey'
GO
CREATE NONCLUSTERED INDEX badaniaSurDlaWyrGot$matId ON dbo.badaniaSurDlaWyrGot
	(
	matId
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
DECLARE @v sql_variant 
SET @v = N'optimus_bo.[badaniaSurDlaWyrGot].[matId]'
EXECUTE sp_addextendedproperty N'MS_SSMA_SOURCE', @v, N'SCHEMA', N'dbo', N'TABLE', N'badaniaSurDlaWyrGot', N'INDEX', N'badaniaSurDlaWyrGot$matId'
GO
COMMIT
select Has_Perms_By_Name(N'dbo.badaniaSurDlaWyrGot', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.badaniaSurDlaWyrGot', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.badaniaSurDlaWyrGot', 'Object', 'CONTROL') as Contr_Per 