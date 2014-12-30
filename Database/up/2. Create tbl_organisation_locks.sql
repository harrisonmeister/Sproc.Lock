SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tbl_organisation_locks](
	[LockId] [nvarchar](38) NOT NULL,
	[Organisation] [nvarchar](38) NOT NULL,
	[Stale] [datetime] NOT NULL,
	[InstanceId] [uniqueidentifier] NOT NULL
) ON [PRIMARY]

GO

CREATE CLUSTERED INDEX [ic_tbl_organisation_locks_LockId_Org_Stale] ON [dbo].[tbl_organisation_locks] 
(
	[LockId] ASC,
	[Organisation] ASC,
	[Stale] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO

