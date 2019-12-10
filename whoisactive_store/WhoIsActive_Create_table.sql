USE [DBATools]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[WhoIsActive] (
	[dd hh:mm:ss.mss] [varchar](8000) NULL
	,[session_id] [smallint] NOT NULL
	,[sql_text] [xml] NULL
	,[login_name] [nvarchar](128) NOT NULL
	,[wait_info] [nvarchar](4000) NULL
	,[CPU] [varchar](30) NULL
	,[tempdb_allocations] [varchar](30) NULL
	,[tempdb_current] [varchar](30) NULL
	,[blocking_session_id] [smallint] NULL
	,[blocked_session_count] [varchar](30) NULL
	,[reads] [varchar](30) NULL
	,[writes] [varchar](30) NULL
	,[physical_reads] [varchar](30) NULL
	,[used_memory] [varchar](30) NULL
	,[status] [varchar](30) NOT NULL
	,[open_tran_count] [varchar](30) NULL
	,[percent_complete] [varchar](30) NULL
	,[host_name] [nvarchar](128) NULL
	,[database_name] [nvarchar](128) NULL
	,[program_name] [nvarchar](128) NULL
	,[start_time] [datetime] NOT NULL
	,[login_time] [datetime] NULL
	,[request_id] [int] NULL
	,[collection_time] [datetime] NOT NULL
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET ANSI_PADDING OFF
GO

CREATE CLUSTERED INDEX [IX_collection_time] ON [dbo].[WhoIsActive] ([collection_time] ASC)
	WITH (
			PAD_INDEX = OFF
			,STATISTICS_NORECOMPUTE = OFF
			,SORT_IN_TEMPDB = OFF
			,DROP_EXISTING = OFF
			,ONLINE = OFF
			,ALLOW_ROW_LOCKS = ON
			,ALLOW_PAGE_LOCKS = ON
			,FILLFACTOR = 90
			) ON [PRIMARY]
GO


