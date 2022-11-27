CREATE TABLE [dbo].[badaniaWyrGotUwagi]
(
	[uMatId] [int] IDENTITY (1,1) NOT NULL,
	[matId] [int] NOT NULL,
	[uwagiDoBadanSur] [nvarchar] (255) COLLATE Polish_CI_AS NULL,
	CONSTRAINT [badaniaWyrGotUwagi$PrimaryKey] PRIMARY KEY CLUSTERED
	(
		[uMatId] ASC
	) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY  = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [badaniaWyrGotUwagi$matId] ON [dbo].[badaniaWyrGotUwagi]
(
	[matId] ASC
) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY  = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
-- EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'optimus_bo.[badaniaWyrGotUwagi].[matId]' ,@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'badaniaWyrGotUwagi', @level2type=N'INDEX',@level2name=N'badaniaWyrGotUwagi$matId'
-- GO

CREATE UNIQUE NONCLUSTERED INDEX [badaniaWyrGotUwagi$uMatId] ON [dbo].[badaniaWyrGotUwagi]
(
	[uMatId] ASC
) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY  = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
-- EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'optimus_bo.[badaniaWyrGotUwagi].[uMatId]' ,@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'badaniaWyrGotUwagi', @level2type=N'INDEX',@level2name=N'badaniaWyrGotUwagi$uMatId'
-- GO
