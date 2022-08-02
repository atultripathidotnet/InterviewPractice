
USE [master]
GO
CREATE TABLE [dbo].[Employees](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Gender] [nvarchar](50) NULL,
	[Salary] [int] NULL,
	[Department] [varchar](50) NULL
	)
GO
USE [master]
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 
GO
INSERT [dbo].[Employees] ([ID], [FirstName], [LastName], [Gender], [Salary], [Department]) VALUES (1, N'Ben', N'Hoskins', N'Male', 70000, N'IT')
GO
INSERT [dbo].[Employees] ([ID], [FirstName], [LastName], [Gender], [Salary], [Department]) VALUES (2, N'Mark', N'Hastings', N'Male', 60000, N'ADMIN')
GO
INSERT [dbo].[Employees] ([ID], [FirstName], [LastName], [Gender], [Salary], [Department]) VALUES (3, N'Steve', N'Pound', N'Male', 45000, N'IT')
GO
INSERT [dbo].[Employees] ([ID], [FirstName], [LastName], [Gender], [Salary], [Department]) VALUES (4, N'Ben', N'Hoskins', N'Male', 70000, N'ADMIN')
GO
INSERT [dbo].[Employees] ([ID], [FirstName], [LastName], [Gender], [Salary], [Department]) VALUES (5, N'Philip', N'Hastings', N'Male', 45000, N'IT')
GO
INSERT [dbo].[Employees] ([ID], [FirstName], [LastName], [Gender], [Salary], [Department]) VALUES (6, N'Mary', N'Lambeth', N'Female', 30000, N'ADMIN')
GO
INSERT [dbo].[Employees] ([ID], [FirstName], [LastName], [Gender], [Salary], [Department]) VALUES (7, N'Valarie', N'Vikings', N'Female', 35000, N'ADMIN')
GO
INSERT [dbo].[Employees] ([ID], [FirstName], [LastName], [Gender], [Salary], [Department]) VALUES (8, N'John', N'Stanmore', N'Male', 80000, N'IT')
GO
INSERT [dbo].[Employees] ([ID], [FirstName], [LastName], [Gender], [Salary], [Department]) VALUES (9, N'Ben', N'Hoskins', N'Male', 70000, N'ADMIN')
GO
SET IDENTITY_INSERT [dbo].[Employees] OFF
GO
