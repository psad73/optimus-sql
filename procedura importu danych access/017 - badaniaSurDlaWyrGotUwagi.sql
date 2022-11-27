CREATE TABLE [dbo].[badaniaSurDlaWyrGotUwagi]
(
	[uMatId] [int] IDENTITY (1,1) NOT NULL,
	[matId] [int] NOT NULL,
	[uwagiDoBadanSur] [nvarchar] (255) COLLATE Polish_CI_AS NULL,
	CONSTRAINT [badaniaSurDlaWyrGotUwagi$PrimaryKey] PRIMARY KEY CLUSTERED
	(
		[uMatId] ASC
	) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY  = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [badaniaSurDlaWyrGotUwagi$matId] ON [dbo].[badaniaSurDlaWyrGotUwagi]
(
	[matId] ASC
) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY  = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
-- EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'optimus_bo.[badaniaSurDlaWyrGotUwagi].[matId]' ,@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'badaniaSurDlaWyrGotUwagi', @level2type=N'INDEX',@level2name=N'badaniaSurDlaWyrGotUwagi$matId'
-- GO

CREATE UNIQUE NONCLUSTERED INDEX [badaniaSurDlaWyrGotUwagi$uMatId] ON [dbo].[badaniaSurDlaWyrGotUwagi]
(
	[uMatId] ASC
) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY  = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
-- EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'optimus_bo.[badaniaSurDlaWyrGotUwagi].[uMatId]' ,@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'badaniaSurDlaWyrGotUwagi', @level2type=N'INDEX',@level2name=N'badaniaSurDlaWyrGotUwagi$uMatId'
-- GO