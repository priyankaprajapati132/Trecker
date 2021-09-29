--Table
USE [Trecker]
GO

/****** Object:  Table [dbo].[user_step_point]    Script Date: 30/9/2021 1:15:23 am ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[user_step_point](
	[UserID] [nvarchar](50) NOT NULL,
	[StepDate] [datetime] NULL,
	[Steps] [int] NULL,
 CONSTRAINT [PK_user_step_point] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


--Procedure
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE SP_InsertRecord 
@UserID VARCHAR(10),
@StepDate DATETIME,
@Steps INT

AS
BEGIN

SET NOCOUNT ON;
INSERT INTO user_step_point(UserID,StepDate,Steps)
VALUES (@UserID,@StepDate,@Steps);
END
GO
