/****** Object:  Table [dbo].[dim_channel]    Script Date: 28-10-2018 22:10:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dim_channel](
	[channel_id] [int] IDENTITY(1,1) NOT NULL,
	[channel] [varchar](100) NULL,
 CONSTRAINT [PK_dim_channel] PRIMARY KEY CLUSTERED 
(
	[channel_id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dim_time](
	[TimeNo] [int] IDENTITY(1,1) NOT NULL,
	[Day] [int] NULL,
	[Month] [int] NULL,
	[Year] [int] NULL,
 CONSTRAINT [PK_dim_time] PRIMARY KEY CLUSTERED 
(
	[TimeNo] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[fact_interactions](
	[InteractionID] [int] IDENTITY(1,1) NOT NULL,
	[FacebookLikes] [int] NULL,
	[FacebookComments] [int] NULL,
	[TotalInteractions] [int] NULL,
	[TImeNo] [int] NOT NULL,
	[ChannelID] [int] NOT NULL,
 CONSTRAINT [PK_fact_interactions] PRIMARY KEY CLUSTERED 
(
	[InteractionID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

