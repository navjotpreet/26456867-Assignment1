USE [master]
GO
/****** Object:  Database [BankSystem]    Script Date: 03/20/2023 23:22:05 ******/
CREATE DATABASE [BankSystem] ON  PRIMARY 
( NAME = N'BankSystem', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\BankSystem.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BankSystem_log', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\BankSystem_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BankSystem] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BankSystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BankSystem] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [BankSystem] SET ANSI_NULLS OFF
GO
ALTER DATABASE [BankSystem] SET ANSI_PADDING OFF
GO
ALTER DATABASE [BankSystem] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [BankSystem] SET ARITHABORT OFF
GO
ALTER DATABASE [BankSystem] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [BankSystem] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [BankSystem] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [BankSystem] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [BankSystem] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [BankSystem] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [BankSystem] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [BankSystem] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [BankSystem] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [BankSystem] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [BankSystem] SET  DISABLE_BROKER
GO
ALTER DATABASE [BankSystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [BankSystem] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [BankSystem] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [BankSystem] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [BankSystem] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [BankSystem] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [BankSystem] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [BankSystem] SET  READ_WRITE
GO
ALTER DATABASE [BankSystem] SET RECOVERY SIMPLE
GO
ALTER DATABASE [BankSystem] SET  MULTI_USER
GO
ALTER DATABASE [BankSystem] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [BankSystem] SET DB_CHAINING OFF
GO
USE [BankSystem]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 03/20/2023 23:22:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Username] [varchar](20) NULL,
	[Password] [varchar](20) NULL,
	[Phone] [varchar](12) NULL,
	[Email] [varchar](50) NULL,
	[DOB] [date] NULL,
	[Gender] [varchar](50) NULL,
	[Address] [varchar](200) NULL,
	[Reg_Date] [datetime] NULL,
 CONSTRAINT [PK__Customer__3214EC077F60ED59] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON
INSERT [dbo].[Customer] ([Id], [Name], [Username], [Password], [Phone], [Email], [DOB], [Gender], [Address], [Reg_Date]) VALUES (1, N'Ankit', N'anktr', N'159357', N'9874561230', N'abcd@gmail.com', CAST(0x13450B00 AS Date), NULL, N'sffsdf,sfdfsdfsdf', CAST(0x0000AFBB00B8DEEE AS DateTime))
INSERT [dbo].[Customer] ([Id], [Name], [Username], [Password], [Phone], [Email], [DOB], [Gender], [Address], [Reg_Date]) VALUES (2, N'Ankit', N'abcd', N'abcd@123', N'1316565464', N'drdrgdcfg', CAST(0x13450B00 AS Date), N'MALE', N'fghfhhfhy', CAST(0x0000AFC2016F9CC8 AS DateTime))
SET IDENTITY_INSERT [dbo].[Customer] OFF
/****** Object:  Table [dbo].[Branch]    Script Date: 03/20/2023 23:22:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Branch](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](20) NULL,
	[Description] [varchar](100) NULL,
	[IFSC] [varchar](10) NULL,
	[Phone] [varchar](12) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Branch] ON
INSERT [dbo].[Branch] ([Id], [Name], [Description], [IFSC], [Phone]) VALUES (1, N'Mumbai', N'GF, Gresham House United India Life Bldg, Sir Phirozshah Mehta Rd, Mumbai, Maharashtra 400023', N'SBIN007000', N'044-22633164')
INSERT [dbo].[Branch] ([Id], [Name], [Description], [IFSC], [Phone]) VALUES (2, N'Chennai', N'84 Rajaji Salai, Chennai, Tamilnadu 600 001', N'SBIN000080', N'044-25220141')
INSERT [dbo].[Branch] ([Id], [Name], [Description], [IFSC], [Phone]) VALUES (3, N'Delhi', N'11sansad Marg, New Delhi 110 001', N'SBIN000069', N'011-23374050')
SET IDENTITY_INSERT [dbo].[Branch] OFF
/****** Object:  Table [dbo].[Account]    Script Date: 03/20/2023 23:22:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AccNumber] [varchar](12) NULL,
	[AccType] [varchar](10) NULL,
	[Reg_Date] [datetime] NULL,
	[Balance] [real] NULL,
	[CustId] [int] NULL,
	[BranchId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Account] ON
INSERT [dbo].[Account] ([Id], [AccNumber], [AccType], [Reg_Date], [Balance], [CustId], [BranchId]) VALUES (1, N'100000000000', N'Saving', CAST(0x0000AFBB00B8DEF9 AS DateTime), 2970, 1, 3)
INSERT [dbo].[Account] ([Id], [AccNumber], [AccType], [Reg_Date], [Balance], [CustId], [BranchId]) VALUES (2, N'100000000001', N'Current', CAST(0x0000AFC2016F9CCE AS DateTime), 3020, 2, 1)
SET IDENTITY_INSERT [dbo].[Account] OFF
/****** Object:  StoredProcedure [dbo].[Pbranch]    Script Date: 03/20/2023 23:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Pbranch]
as
select * from Branch
GO
/****** Object:  StoredProcedure [dbo].[Plogin]    Script Date: 03/20/2023 23:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Plogin]
(
@Username nvarchar(50)=null,
@Password nvarchar(50)=null
)
as
select Name,Email,Username from Customer where Username=@Username and Password=@Password
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_TRANSACTION]    Script Date: 03/20/2023 23:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UPDATE_TRANSACTION]
	-- Add the parameters for the stored procedure here
(
	@Username varchar(20),
	@AccNumber varchar(12),
	@IFSC varchar(10),
	@AccHolder varchar(100),
	@Amount float,
	@text nvarchar(500) OUTPUT 
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT COUNT(*) FROM Customer C Inner Join Account A on C.Id = A.CustId Inner Join Branch B on A.BranchId = B.Id 
	WHERE A.AccNumber = @AccNumber AND B.IFSC = @IFSC AND C.Name = @AccHolder

	IF (COUNT(*) > 0)
		UPDATE Account SET Balance = Balance + @Amount WHERE AccNumber = @AccNumber
	ELSE
		SET @text = 'Transaction Failed.'

	IF (COUNT(*) > 0)
		UPDATE Account SET Balance = Balance - @Amount FROM Account A INNER JOIN Customer C on A.CustId = C.Id WHERE C.Username = @Username
	 
	
END
GO
/****** Object:  Table [dbo].[Transactions]    Script Date: 03/20/2023 23:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Transactions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TranDate] [datetime] NULL,
	[Amount] [real] NULL,
	[TranType] [varchar](10) NULL,
	[AccId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Transactions] ON
INSERT [dbo].[Transactions] ([Id], [TranDate], [Amount], [TranType], [AccId]) VALUES (1, CAST(0x0000AFC300E000C0 AS DateTime), 30, N'Credited', 1)
INSERT [dbo].[Transactions] ([Id], [TranDate], [Amount], [TranType], [AccId]) VALUES (2, CAST(0x0000AFC300E000C8 AS DateTime), 30, N'Debited', 1)
INSERT [dbo].[Transactions] ([Id], [TranDate], [Amount], [TranType], [AccId]) VALUES (3, CAST(0x0000AFC300E05BF8 AS DateTime), 30, N'Credited', 2)
INSERT [dbo].[Transactions] ([Id], [TranDate], [Amount], [TranType], [AccId]) VALUES (4, CAST(0x0000AFC300E05BF8 AS DateTime), 30, N'Debited', 1)
INSERT [dbo].[Transactions] ([Id], [TranDate], [Amount], [TranType], [AccId]) VALUES (5, CAST(0x0000AFC9010622E4 AS DateTime), 0, N'Credited', 2)
INSERT [dbo].[Transactions] ([Id], [TranDate], [Amount], [TranType], [AccId]) VALUES (6, CAST(0x0000AFC9010622E6 AS DateTime), 0, N'Debited', 2)
INSERT [dbo].[Transactions] ([Id], [TranDate], [Amount], [TranType], [AccId]) VALUES (7, CAST(0x0000AFC90106F407 AS DateTime), 0, N'Credited', 2)
INSERT [dbo].[Transactions] ([Id], [TranDate], [Amount], [TranType], [AccId]) VALUES (8, CAST(0x0000AFC90106F415 AS DateTime), 0, N'Debited', 2)
SET IDENTITY_INSERT [dbo].[Transactions] OFF
/****** Object:  StoredProcedure [dbo].[PWithdraw]    Script Date: 03/20/2023 23:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PWithdraw]
	-- Add the parameters for the stored procedure here
(
	@Username varchar(20),
	@Amount float
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	SET NOCOUNT ON;
	UPDATE Account SET Balance = Balance - @Amount FROM Account A INNER JOIN Customer C on A.CustId = C.Id 
	WHERE C.Username = @Username
	
END
GO
/****** Object:  StoredProcedure [dbo].[PDeposit]    Script Date: 03/20/2023 23:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PDeposit]
	-- Add the parameters for the stored procedure here
(
	@Username varchar(20),
	@Amount float
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	SET NOCOUNT ON;
	UPDATE Account SET Balance = Balance + @Amount FROM Account A INNER JOIN Customer C on A.CustId = C.Id 
	WHERE C.Username = @Username
	
END
GO
/****** Object:  StoredProcedure [dbo].[INSERT_INTO_BANK_TABLES]    Script Date: 03/20/2023 23:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[INSERT_INTO_BANK_TABLES]
(
	-- Add the parameters for the stored procedure here
	@name	 varchar(100),
	@username varchar(20),
	@password varchar(20),
	@phone	 varchar(12),
	@email	 varchar(50),
	@dob	 date,
	@gender  varchar(50),
	@address varchar(200),
	@branchId int,
	@accType varchar(10)
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	INSERT INTO Customer (Name, DOB, Phone, Email, Address, Username, Password,Gender, Reg_Date) VALUES (
	@name,
	@dob,
	@phone,
	@email,
	@address,
	@username,
	@password,
	@gender,
	sysdatetime()
	)

	Declare @id int
	Declare @accNumber varchar(12)
	SET @accNumber = null

	SELECT @id = Id FROM Customer WHERE Username = @username

	SELECT Top 1 @accNumber = AccNumber FROM Account ORDER BY Id DESC
	
	IF (@accNumber is null)
		SET @accNumber = '100000000000'
	ELSE
		SELECT @accNumber = CAST((CAST(@accNumber AS bigint) + 1) AS varchar)

	INSERT INTO Account (AccNumber, AccType, Reg_Date, Balance, CustId, BranchId) VALUES (
	@accNumber,
	@accType,
	sysdatetime(),
	1000.00,
	@id,
	@branchId
	)

END
GO
/****** Object:  StoredProcedure [dbo].[ADD_TRANSACTION_RECORD]    Script Date: 03/20/2023 23:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ADD_TRANSACTION_RECORD]
	-- Add the parameters for the stored procedure here
(
	@Username varchar(20),
	@AccNumber varchar(12),
	@Amount float
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @id1 int	
	DECLARE @id2 int	

    -- Insert statements for procedure here
	SELECT @id1 = Id FROM Account WHERE AccNumber = @AccNumber

	INSERT INTO Transactions(TranDate, Amount, TranType, AccId) VALUES (
	SYSDATETIME(),
	@Amount,
	'Credited',
	@id1
	)

	SELECT @id2 = A.Id FROM Account A INNER JOIN Customer C on A.CustId = C.Id WHERE C.Username = @Username

	INSERT INTO Transactions(TranDate, Amount, TranType, AccId) VALUES (
	SYSDATETIME(),
	@Amount,
	'Debited',
	@id2
	)
END
GO
/****** Object:  ForeignKey [FK__Account__BranchI__09DE7BCC]    Script Date: 03/20/2023 23:22:10 ******/
ALTER TABLE [dbo].[Account]  WITH CHECK ADD FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
/****** Object:  ForeignKey [FK__Account__CustId__08EA5793]    Script Date: 03/20/2023 23:22:10 ******/
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK__Account__CustId__08EA5793] FOREIGN KEY([CustId])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK__Account__CustId__08EA5793]
GO
/****** Object:  ForeignKey [FK__Transacti__AccId__0EA330E9]    Script Date: 03/20/2023 23:22:13 ******/
ALTER TABLE [dbo].[Transactions]  WITH CHECK ADD FOREIGN KEY([AccId])
REFERENCES [dbo].[Account] ([Id])
GO
