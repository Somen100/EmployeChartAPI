USE [master]
GO
/****** Object:  Database [MockChart]    Script Date: 28-03-2023 17:13:08 ******/
CREATE DATABASE [MockChart]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MockChart', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\MockChart.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MockChart_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\MockChart_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MockChart] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MockChart].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MockChart] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MockChart] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MockChart] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MockChart] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MockChart] SET ARITHABORT OFF 
GO
ALTER DATABASE [MockChart] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MockChart] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MockChart] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MockChart] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MockChart] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MockChart] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MockChart] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MockChart] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MockChart] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MockChart] SET  ENABLE_BROKER 
GO
ALTER DATABASE [MockChart] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MockChart] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MockChart] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MockChart] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MockChart] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MockChart] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MockChart] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MockChart] SET RECOVERY FULL 
GO
ALTER DATABASE [MockChart] SET  MULTI_USER 
GO
ALTER DATABASE [MockChart] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MockChart] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MockChart] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MockChart] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MockChart] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MockChart] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'MockChart', N'ON'
GO
ALTER DATABASE [MockChart] SET QUERY_STORE = OFF
GO
USE [MockChart]
GO
/****** Object:  Table [dbo].[ChartData]    Script Date: 28-03-2023 17:13:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChartData](
	[ChartDataId] [int] IDENTITY(1,1) NOT NULL,
	[EndYear] [date] NULL,
	[Intensity] [int] NULL,
	[Sector] [nvarchar](50) NULL,
	[Topic] [varchar](100) NULL,
	[Insight] [varchar](100) NULL,
	[UrlLink] [varchar](500) NOT NULL,
	[Region] [nvarchar](50) NULL,
	[StartYear] [date] NULL,
	[Impact] [nvarchar](50) NULL,
	[Added] [date] NULL,
	[Published] [date] NULL,
	[Country] [nvarchar](50) NULL,
	[Relevance] [int] NULL,
	[Pestle] [nvarchar](50) NULL,
	[Source] [nvarchar](50) NULL,
	[Title] [varchar](200) NOT NULL,
	[Likelihood] [int] NULL,
	[City] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ChartDataId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 28-03-2023 17:13:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[CityId] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [varchar](20) NULL,
	[CountryId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 28-03-2023 17:13:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[CountryId] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeDetails]    Script Date: 28-03-2023 17:13:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeDetails](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](20) NULL,
	[LastName] [varchar](20) NULL,
	[Email] [varchar](50) NULL,
	[Mobile] [varchar](50) NULL,
	[DOB] [date] NULL,
	[GenderId] [int] NULL,
	[Address] [varchar](200) NULL,
	[CountryId] [int] NULL,
	[CityId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeSkills]    Script Date: 28-03-2023 17:13:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeSkills](
	[EmployeeSkillId] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NULL,
	[SkillId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeSkillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 28-03-2023 17:13:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[GenderId] [int] IDENTITY(1,1) NOT NULL,
	[GenderName] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[GenderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OtherCity]    Script Date: 28-03-2023 17:13:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OtherCity](
	[OtherCityId] [int] IDENTITY(1,1) NOT NULL,
	[OtherCityName] [varchar](50) NULL,
	[EmployeeId] [int] NULL,
	[CountryId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[OtherCityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skills]    Script Date: 28-03-2023 17:13:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skills](
	[SkillId] [int] IDENTITY(1,1) NOT NULL,
	[SkillName] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[SkillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChartData] ON 

INSERT [dbo].[ChartData] ([ChartDataId], [EndYear], [Intensity], [Sector], [Topic], [Insight], [UrlLink], [Region], [StartYear], [Impact], [Added], [Published], [Country], [Relevance], [Pestle], [Source], [Title], [Likelihood], [City]) VALUES (6, NULL, 6, N'Energy', N'gas', N'Annual Energy Outlook', N'http://www.eia.gov/outlooks/aeo/pdf/0383(2017).pdf', N'Northern America', NULL, NULL, CAST(N'2017-01-20' AS Date), CAST(N'2017-01-09' AS Date), N'United States of America', 2, N'NULLIndustries', N'EIA', N'U.S. natural gas consumption is expected to increase during much of the projection period.', 3, N'Delhi')
INSERT [dbo].[ChartData] ([ChartDataId], [EndYear], [Intensity], [Sector], [Topic], [Insight], [UrlLink], [Region], [StartYear], [Impact], [Added], [Published], [Country], [Relevance], [Pestle], [Source], [Title], [Likelihood], [City]) VALUES (7, NULL, 6, N'Energy', N'oil', N'Annual Energy Outlook', N'http://www.eia.gov/outlooks/aeo/pdf/0383(2017).pdf', N'Northern America', NULL, NULL, CAST(N'2017-01-20' AS Date), CAST(N'2017-01-09' AS Date), N'United States of America', 2, N'Industries', N'EIA', N'Reference case U.S. crude oil production is projected to recover from recent declines.', 3, N'Mumbai')
INSERT [dbo].[ChartData] ([ChartDataId], [EndYear], [Intensity], [Sector], [Topic], [Insight], [UrlLink], [Region], [StartYear], [Impact], [Added], [Published], [Country], [Relevance], [Pestle], [Source], [Title], [Likelihood], [City]) VALUES (8, NULL, 6, N'Environment', N'consumption', N'Annual Energy Outlook', N'http://www.eia.gov/outlooks/aeo/pdf/0383(2017).pdf', N'Northern America', NULL, NULL, CAST(N'2017-01-20' AS Date), CAST(N'2017-01-09' AS Date), N'United States of America', 2, N'Industries', N'EIA', N'U.S. petroleum consumption is projected to remain below the 2005 level.', 3, N'Ontario')
INSERT [dbo].[ChartData] ([ChartDataId], [EndYear], [Intensity], [Sector], [Topic], [Insight], [UrlLink], [Region], [StartYear], [Impact], [Added], [Published], [Country], [Relevance], [Pestle], [Source], [Title], [Likelihood], [City]) VALUES (9, NULL, 6, N'Energy', N'oil', N'WRI Partnership Aims to Foster Supply Chain Transparency, Zero-Deforestation Strategies', N'http://www.sustainablebrands.com/news_and_views/supply_chain/sustainable_brands/wri_partnership_aims_foster_supply_chain_transparency', N'Central America', NULL, NULL, CAST(N'2017-01-20' AS Date), CAST(N'2017-01-18' AS Date), N'Mexico', 3, N'Environmental', N'sustainablebrands.com', N'Mars, Unilever, Cargill and Mondelez are already using GFW Commodities to assess deforestation risks in their palm oil, soy and cocoa supply chains across a collective area of land the size of Mexico.', 2, N'Chicago')
SET IDENTITY_INSERT [dbo].[ChartData] OFF
GO
SET IDENTITY_INSERT [dbo].[City] ON 

INSERT [dbo].[City] ([CityId], [CityName], [CountryId]) VALUES (1, N'New Delhi', 1)
INSERT [dbo].[City] ([CityId], [CityName], [CountryId]) VALUES (2, N'Mumbai', 1)
INSERT [dbo].[City] ([CityId], [CityName], [CountryId]) VALUES (3, N'Ontario', 2)
SET IDENTITY_INSERT [dbo].[City] OFF
GO
SET IDENTITY_INSERT [dbo].[Country] ON 

INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (1, N'India')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (2, N'Canada')
SET IDENTITY_INSERT [dbo].[Country] OFF
GO
SET IDENTITY_INSERT [dbo].[EmployeeDetails] ON 

INSERT [dbo].[EmployeeDetails] ([EmployeeId], [FirstName], [LastName], [Email], [Mobile], [DOB], [GenderId], [Address], [CountryId], [CityId]) VALUES (1, N'string', N'string', N'string', N'7485964152', CAST(N'2023-03-26' AS Date), 1, N'jh', 1, 1)
INSERT [dbo].[EmployeeDetails] ([EmployeeId], [FirstName], [LastName], [Email], [Mobile], [DOB], [GenderId], [Address], [CountryId], [CityId]) VALUES (2, N'string', N'string', N'string', N'7485964152', CAST(N'2023-03-26' AS Date), 1, N'jh', 1, 1)
INSERT [dbo].[EmployeeDetails] ([EmployeeId], [FirstName], [LastName], [Email], [Mobile], [DOB], [GenderId], [Address], [CountryId], [CityId]) VALUES (3, N'two', N'string', N'string', N'7485964152', CAST(N'2023-03-26' AS Date), 1, N'sh', 1, 1)
INSERT [dbo].[EmployeeDetails] ([EmployeeId], [FirstName], [LastName], [Email], [Mobile], [DOB], [GenderId], [Address], [CountryId], [CityId]) VALUES (4, N'three', N'string', N'string', N'7485964152', CAST(N'2023-03-26' AS Date), 1, N'sh', 1, 1)
INSERT [dbo].[EmployeeDetails] ([EmployeeId], [FirstName], [LastName], [Email], [Mobile], [DOB], [GenderId], [Address], [CountryId], [CityId]) VALUES (5, N'Somen', N'Singh', N'somensingh727@gmail.com', N'07418529638', CAST(N'2023-03-23' AS Date), 1, N'jharkhand', 1, 1)
INSERT [dbo].[EmployeeDetails] ([EmployeeId], [FirstName], [LastName], [Email], [Mobile], [DOB], [GenderId], [Address], [CountryId], [CityId]) VALUES (6, N'Somen', N'Singh', N'somensingh727@gmail.com', N'07418529638', CAST(N'2023-03-10' AS Date), 1, N'jharkhand', 1, 1)
INSERT [dbo].[EmployeeDetails] ([EmployeeId], [FirstName], [LastName], [Email], [Mobile], [DOB], [GenderId], [Address], [CountryId], [CityId]) VALUES (7, N'Somen', N'Singh', N'somensingh727@gmail.com', N'07418529000', CAST(N'2023-03-15' AS Date), 1, N'jharkhand', 1, 1)
INSERT [dbo].[EmployeeDetails] ([EmployeeId], [FirstName], [LastName], [Email], [Mobile], [DOB], [GenderId], [Address], [CountryId], [CityId]) VALUES (8, N'kiran', N'rao', N'kk727@gmail.com', N'07418529000', CAST(N'2023-03-15' AS Date), 2, N'jharkhand', 1, 1)
INSERT [dbo].[EmployeeDetails] ([EmployeeId], [FirstName], [LastName], [Email], [Mobile], [DOB], [GenderId], [Address], [CountryId], [CityId]) VALUES (9, N'bin', N'Singh', N'somensingh727@gmail.com', N'07418529638', CAST(N'2023-03-24' AS Date), 1, N'jharkhand', 1, 2)
INSERT [dbo].[EmployeeDetails] ([EmployeeId], [FirstName], [LastName], [Email], [Mobile], [DOB], [GenderId], [Address], [CountryId], [CityId]) VALUES (10, N'bin', N'Singh', N'somensingh727@gmail.com', N'07418529638', CAST(N'2023-03-24' AS Date), 1, N'jharkhand', 1, 2)
INSERT [dbo].[EmployeeDetails] ([EmployeeId], [FirstName], [LastName], [Email], [Mobile], [DOB], [GenderId], [Address], [CountryId], [CityId]) VALUES (11, N'orp', N'o', N'somensingh727@gmail.com', N'07418529638', CAST(N'2023-03-22' AS Date), 1, N'jharkhand', 1, 1)
INSERT [dbo].[EmployeeDetails] ([EmployeeId], [FirstName], [LastName], [Email], [Mobile], [DOB], [GenderId], [Address], [CountryId], [CityId]) VALUES (12, N'Somen', N'Singh', N'somensingh727@gmail.com', N'07418529638', CAST(N'2023-03-06' AS Date), 1, N'jharkhand', 1, 1)
INSERT [dbo].[EmployeeDetails] ([EmployeeId], [FirstName], [LastName], [Email], [Mobile], [DOB], [GenderId], [Address], [CountryId], [CityId]) VALUES (13, N'ss', N'Singh', N'shivsomen@gmail.com', N'08076399589', CAST(N'2023-03-18' AS Date), 1, N'jharkhand', 1, 1)
INSERT [dbo].[EmployeeDetails] ([EmployeeId], [FirstName], [LastName], [Email], [Mobile], [DOB], [GenderId], [Address], [CountryId], [CityId]) VALUES (14, N'Somen', N'Singh', N'somensingh727@gmail.com', N'07418529638', CAST(N'2023-03-10' AS Date), 1, N'jharkhand', 1, 1)
INSERT [dbo].[EmployeeDetails] ([EmployeeId], [FirstName], [LastName], [Email], [Mobile], [DOB], [GenderId], [Address], [CountryId], [CityId]) VALUES (15, N'Somen', N'Singh', N'somensingh727@gmail.com', N'07418529638', CAST(N'2023-03-16' AS Date), 1, N'jharkhand', 1, 0)
INSERT [dbo].[EmployeeDetails] ([EmployeeId], [FirstName], [LastName], [Email], [Mobile], [DOB], [GenderId], [Address], [CountryId], [CityId]) VALUES (16, N'Somen', N'Singh', N'somensingh727@gmail.com', N'07418529638', CAST(N'2023-03-09' AS Date), 1, N'jharkhand', 1, 1)
INSERT [dbo].[EmployeeDetails] ([EmployeeId], [FirstName], [LastName], [Email], [Mobile], [DOB], [GenderId], [Address], [CountryId], [CityId]) VALUES (17, N'Somen', N'Singh', N'somensingh727@gmail.com', N'07418529638', CAST(N'2023-03-09' AS Date), 1, N'jharkhand', 1, 1)
INSERT [dbo].[EmployeeDetails] ([EmployeeId], [FirstName], [LastName], [Email], [Mobile], [DOB], [GenderId], [Address], [CountryId], [CityId]) VALUES (18, N'Somen', N'Singh', N'somensingh727@gmail.com', N'07418529638', CAST(N'2023-03-09' AS Date), 1, N'jharkhand', 1, 1)
INSERT [dbo].[EmployeeDetails] ([EmployeeId], [FirstName], [LastName], [Email], [Mobile], [DOB], [GenderId], [Address], [CountryId], [CityId]) VALUES (19, N'Somen', N'Singh', N'somensingh727@gmail.com', N'07418529638', CAST(N'2023-03-10' AS Date), 0, N'jharkhand', 1, 2)
INSERT [dbo].[EmployeeDetails] ([EmployeeId], [FirstName], [LastName], [Email], [Mobile], [DOB], [GenderId], [Address], [CountryId], [CityId]) VALUES (20, N'Somen', N'Singh', N'somensingh727@gmail.com', N'07418529638', CAST(N'2023-03-10' AS Date), 0, N'jharkhand', 1, 2)
INSERT [dbo].[EmployeeDetails] ([EmployeeId], [FirstName], [LastName], [Email], [Mobile], [DOB], [GenderId], [Address], [CountryId], [CityId]) VALUES (21, N'Somen', N'Singh', N'somensingh727@gmail.com', N'07418529638', CAST(N'2023-03-15' AS Date), 1, N'jharkhand', 1, 2)
INSERT [dbo].[EmployeeDetails] ([EmployeeId], [FirstName], [LastName], [Email], [Mobile], [DOB], [GenderId], [Address], [CountryId], [CityId]) VALUES (22, N'Somen', N'Singh', N'somensingh727@gmail.com', N'07418529638', CAST(N'2023-03-10' AS Date), 1, N'jharkhand', 1, 1)
INSERT [dbo].[EmployeeDetails] ([EmployeeId], [FirstName], [LastName], [Email], [Mobile], [DOB], [GenderId], [Address], [CountryId], [CityId]) VALUES (23, N'Somen', N'Singh', N'somensingh727@gmail.com', N'07418529638', CAST(N'2023-03-10' AS Date), 1, N'jharkhand', 1, 1)
INSERT [dbo].[EmployeeDetails] ([EmployeeId], [FirstName], [LastName], [Email], [Mobile], [DOB], [GenderId], [Address], [CountryId], [CityId]) VALUES (24, N'P', N'PP', N'P@GMAIL.COM', N'7894561235', CAST(N'2023-03-27' AS Date), 1, N'string', 1, 0)
INSERT [dbo].[EmployeeDetails] ([EmployeeId], [FirstName], [LastName], [Email], [Mobile], [DOB], [GenderId], [Address], [CountryId], [CityId]) VALUES (25, N'P', N'PP', N'P@GMAIL.COM', N'7894561235', CAST(N'2023-03-27' AS Date), 1, N'string', 1, 0)
INSERT [dbo].[EmployeeDetails] ([EmployeeId], [FirstName], [LastName], [Email], [Mobile], [DOB], [GenderId], [Address], [CountryId], [CityId]) VALUES (26, N'P', N'PP', N'P@GMAIL.COM', N'7894561235', CAST(N'2023-03-27' AS Date), 1, N'string', 2, 0)
INSERT [dbo].[EmployeeDetails] ([EmployeeId], [FirstName], [LastName], [Email], [Mobile], [DOB], [GenderId], [Address], [CountryId], [CityId]) VALUES (27, N'testing', N'two', N'somensh727fdvf@gmail.com', N'7418029638', CAST(N'2023-03-11' AS Date), 2, N'jharkhand', 1, 0)
INSERT [dbo].[EmployeeDetails] ([EmployeeId], [FirstName], [LastName], [Email], [Mobile], [DOB], [GenderId], [Address], [CountryId], [CityId]) VALUES (28, N'asdd', N'dgg', N'somensingh727fdvf@gmail.com', N'7418529638', CAST(N'2023-03-08' AS Date), 1, N'sg', 1, 0)
INSERT [dbo].[EmployeeDetails] ([EmployeeId], [FirstName], [LastName], [Email], [Mobile], [DOB], [GenderId], [Address], [CountryId], [CityId]) VALUES (29, N'Somen', N'Singh', N'somensingh727@gmail.com', N'07418529638', CAST(N'2023-03-10' AS Date), 2, N'jharkhand', 1, 0)
INSERT [dbo].[EmployeeDetails] ([EmployeeId], [FirstName], [LastName], [Email], [Mobile], [DOB], [GenderId], [Address], [CountryId], [CityId]) VALUES (30, N'swarn', N'Singh', N'somensingh727@gmail.com', N'07418529638', CAST(N'2023-03-18' AS Date), 2, N'jharkhand', 1, 0)
INSERT [dbo].[EmployeeDetails] ([EmployeeId], [FirstName], [LastName], [Email], [Mobile], [DOB], [GenderId], [Address], [CountryId], [CityId]) VALUES (31, N'yuy', N'Singh', N'somensingh727@gmail.com', N'07418529638', CAST(N'2023-03-17' AS Date), 1, N'jharkhand', 1, 0)
INSERT [dbo].[EmployeeDetails] ([EmployeeId], [FirstName], [LastName], [Email], [Mobile], [DOB], [GenderId], [Address], [CountryId], [CityId]) VALUES (32, N'aaaaaa', N'fsf', N'ghd@GMAIL.COM', N'07418529638', CAST(N'2023-03-25' AS Date), 0, N'jharkhand', 1, 0)
INSERT [dbo].[EmployeeDetails] ([EmployeeId], [FirstName], [LastName], [Email], [Mobile], [DOB], [GenderId], [Address], [CountryId], [CityId]) VALUES (33, N'Birendra', N'Besra', N'bIRENDRA@GMAIL.COM', N'07418529638', CAST(N'2023-03-07' AS Date), 1, N'jharkhand', 1, 1)
INSERT [dbo].[EmployeeDetails] ([EmployeeId], [FirstName], [LastName], [Email], [Mobile], [DOB], [GenderId], [Address], [CountryId], [CityId]) VALUES (34, N'Birendra', N'Besra', N'bIRENDRA@GMAIL.COM', N'07410529634', CAST(N'2023-03-16' AS Date), 1, N'jharkhand', 1, 1)
INSERT [dbo].[EmployeeDetails] ([EmployeeId], [FirstName], [LastName], [Email], [Mobile], [DOB], [GenderId], [Address], [CountryId], [CityId]) VALUES (35, N'ttttttt', N'Besra', N'bIRENDRA@GMAIL.COM', N'07410529634', CAST(N'2023-03-16' AS Date), 1, N'jharkhand', 1, 1)
INSERT [dbo].[EmployeeDetails] ([EmployeeId], [FirstName], [LastName], [Email], [Mobile], [DOB], [GenderId], [Address], [CountryId], [CityId]) VALUES (36, N'Birendra', N'Besra', N'bIRENDRA@GMAIL.COM', N'07418529638', CAST(N'2023-03-17' AS Date), 1, N'jharkhand', 1, 0)
INSERT [dbo].[EmployeeDetails] ([EmployeeId], [FirstName], [LastName], [Email], [Mobile], [DOB], [GenderId], [Address], [CountryId], [CityId]) VALUES (37, N'Birendra', N'Besra', N'bIRENDRA@GMAIL.COM', N'07418529638', CAST(N'2023-03-23' AS Date), 1, N'jharkhand', 1, 0)
INSERT [dbo].[EmployeeDetails] ([EmployeeId], [FirstName], [LastName], [Email], [Mobile], [DOB], [GenderId], [Address], [CountryId], [CityId]) VALUES (38, N'pp', N'Besra', N'bIRENDRA@GMAIL.COM', N'07418529638', CAST(N'2023-03-16' AS Date), 2, N'', 1, 1)
INSERT [dbo].[EmployeeDetails] ([EmployeeId], [FirstName], [LastName], [Email], [Mobile], [DOB], [GenderId], [Address], [CountryId], [CityId]) VALUES (39, N'pp', N'Besra', N'bIRENDRA@GMAIL.COM', N'07418529638', CAST(N'2023-03-10' AS Date), 1, N'', 1, 1)
INSERT [dbo].[EmployeeDetails] ([EmployeeId], [FirstName], [LastName], [Email], [Mobile], [DOB], [GenderId], [Address], [CountryId], [CityId]) VALUES (40, N'Birendra', N'Besra', N'bIRENDRA@GMAIL.COM', N'07418529638', CAST(N'2023-03-10' AS Date), 1, N'jharkhand', 1, 0)
INSERT [dbo].[EmployeeDetails] ([EmployeeId], [FirstName], [LastName], [Email], [Mobile], [DOB], [GenderId], [Address], [CountryId], [CityId]) VALUES (41, N'Birendra', N'Besra', N'bIRENDRA@GMAIL.COM', N'07418529638', CAST(N'2023-03-02' AS Date), 1, N'jharkhand', 1, 0)
SET IDENTITY_INSERT [dbo].[EmployeeDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[EmployeeSkills] ON 

INSERT [dbo].[EmployeeSkills] ([EmployeeSkillId], [EmployeeId], [SkillId]) VALUES (1, 2, 1)
INSERT [dbo].[EmployeeSkills] ([EmployeeSkillId], [EmployeeId], [SkillId]) VALUES (2, 3, 1)
INSERT [dbo].[EmployeeSkills] ([EmployeeSkillId], [EmployeeId], [SkillId]) VALUES (3, 3, 2)
INSERT [dbo].[EmployeeSkills] ([EmployeeSkillId], [EmployeeId], [SkillId]) VALUES (4, 4, 1)
INSERT [dbo].[EmployeeSkills] ([EmployeeSkillId], [EmployeeId], [SkillId]) VALUES (5, 4, 2)
INSERT [dbo].[EmployeeSkills] ([EmployeeSkillId], [EmployeeId], [SkillId]) VALUES (7, 16, 2)
INSERT [dbo].[EmployeeSkills] ([EmployeeSkillId], [EmployeeId], [SkillId]) VALUES (8, 16, 4)
INSERT [dbo].[EmployeeSkills] ([EmployeeSkillId], [EmployeeId], [SkillId]) VALUES (9, 16, 3)
INSERT [dbo].[EmployeeSkills] ([EmployeeSkillId], [EmployeeId], [SkillId]) VALUES (10, 16, 5)
INSERT [dbo].[EmployeeSkills] ([EmployeeSkillId], [EmployeeId], [SkillId]) VALUES (12, 17, 3)
INSERT [dbo].[EmployeeSkills] ([EmployeeSkillId], [EmployeeId], [SkillId]) VALUES (13, 17, 4)
INSERT [dbo].[EmployeeSkills] ([EmployeeSkillId], [EmployeeId], [SkillId]) VALUES (14, 17, 5)
INSERT [dbo].[EmployeeSkills] ([EmployeeSkillId], [EmployeeId], [SkillId]) VALUES (15, 17, 6)
INSERT [dbo].[EmployeeSkills] ([EmployeeSkillId], [EmployeeId], [SkillId]) VALUES (16, 18, 3)
INSERT [dbo].[EmployeeSkills] ([EmployeeSkillId], [EmployeeId], [SkillId]) VALUES (17, 18, 4)
INSERT [dbo].[EmployeeSkills] ([EmployeeSkillId], [EmployeeId], [SkillId]) VALUES (18, 18, 5)
INSERT [dbo].[EmployeeSkills] ([EmployeeSkillId], [EmployeeId], [SkillId]) VALUES (19, 18, 6)
INSERT [dbo].[EmployeeSkills] ([EmployeeSkillId], [EmployeeId], [SkillId]) VALUES (20, 19, 1)
INSERT [dbo].[EmployeeSkills] ([EmployeeSkillId], [EmployeeId], [SkillId]) VALUES (21, 19, 2)
INSERT [dbo].[EmployeeSkills] ([EmployeeSkillId], [EmployeeId], [SkillId]) VALUES (22, 20, 1)
INSERT [dbo].[EmployeeSkills] ([EmployeeSkillId], [EmployeeId], [SkillId]) VALUES (23, 20, 2)
INSERT [dbo].[EmployeeSkills] ([EmployeeSkillId], [EmployeeId], [SkillId]) VALUES (24, 21, 3)
INSERT [dbo].[EmployeeSkills] ([EmployeeSkillId], [EmployeeId], [SkillId]) VALUES (25, 21, 2)
INSERT [dbo].[EmployeeSkills] ([EmployeeSkillId], [EmployeeId], [SkillId]) VALUES (26, 21, 1)
INSERT [dbo].[EmployeeSkills] ([EmployeeSkillId], [EmployeeId], [SkillId]) VALUES (27, 22, 1)
INSERT [dbo].[EmployeeSkills] ([EmployeeSkillId], [EmployeeId], [SkillId]) VALUES (28, 22, 2)
INSERT [dbo].[EmployeeSkills] ([EmployeeSkillId], [EmployeeId], [SkillId]) VALUES (29, 23, 1)
INSERT [dbo].[EmployeeSkills] ([EmployeeSkillId], [EmployeeId], [SkillId]) VALUES (30, 23, 2)
INSERT [dbo].[EmployeeSkills] ([EmployeeSkillId], [EmployeeId], [SkillId]) VALUES (38, 25, 1)
INSERT [dbo].[EmployeeSkills] ([EmployeeSkillId], [EmployeeId], [SkillId]) VALUES (39, 26, 1)
INSERT [dbo].[EmployeeSkills] ([EmployeeSkillId], [EmployeeId], [SkillId]) VALUES (40, 27, 2)
INSERT [dbo].[EmployeeSkills] ([EmployeeSkillId], [EmployeeId], [SkillId]) VALUES (41, 27, 1)
INSERT [dbo].[EmployeeSkills] ([EmployeeSkillId], [EmployeeId], [SkillId]) VALUES (42, 28, 1)
INSERT [dbo].[EmployeeSkills] ([EmployeeSkillId], [EmployeeId], [SkillId]) VALUES (43, 28, 6)
INSERT [dbo].[EmployeeSkills] ([EmployeeSkillId], [EmployeeId], [SkillId]) VALUES (44, 29, 2)
INSERT [dbo].[EmployeeSkills] ([EmployeeSkillId], [EmployeeId], [SkillId]) VALUES (45, 30, 1)
INSERT [dbo].[EmployeeSkills] ([EmployeeSkillId], [EmployeeId], [SkillId]) VALUES (46, 30, 2)
INSERT [dbo].[EmployeeSkills] ([EmployeeSkillId], [EmployeeId], [SkillId]) VALUES (47, 31, 1)
INSERT [dbo].[EmployeeSkills] ([EmployeeSkillId], [EmployeeId], [SkillId]) VALUES (48, 31, 2)
INSERT [dbo].[EmployeeSkills] ([EmployeeSkillId], [EmployeeId], [SkillId]) VALUES (49, 32, 4)
INSERT [dbo].[EmployeeSkills] ([EmployeeSkillId], [EmployeeId], [SkillId]) VALUES (50, 33, 1)
INSERT [dbo].[EmployeeSkills] ([EmployeeSkillId], [EmployeeId], [SkillId]) VALUES (51, 34, 1)
INSERT [dbo].[EmployeeSkills] ([EmployeeSkillId], [EmployeeId], [SkillId]) VALUES (52, 35, 1)
INSERT [dbo].[EmployeeSkills] ([EmployeeSkillId], [EmployeeId], [SkillId]) VALUES (53, 36, 1)
INSERT [dbo].[EmployeeSkills] ([EmployeeSkillId], [EmployeeId], [SkillId]) VALUES (54, 36, 2)
INSERT [dbo].[EmployeeSkills] ([EmployeeSkillId], [EmployeeId], [SkillId]) VALUES (55, 37, 3)
INSERT [dbo].[EmployeeSkills] ([EmployeeSkillId], [EmployeeId], [SkillId]) VALUES (56, 37, 5)
INSERT [dbo].[EmployeeSkills] ([EmployeeSkillId], [EmployeeId], [SkillId]) VALUES (57, 37, 6)
INSERT [dbo].[EmployeeSkills] ([EmployeeSkillId], [EmployeeId], [SkillId]) VALUES (58, 38, 2)
INSERT [dbo].[EmployeeSkills] ([EmployeeSkillId], [EmployeeId], [SkillId]) VALUES (59, 38, 3)
INSERT [dbo].[EmployeeSkills] ([EmployeeSkillId], [EmployeeId], [SkillId]) VALUES (60, 39, 2)
INSERT [dbo].[EmployeeSkills] ([EmployeeSkillId], [EmployeeId], [SkillId]) VALUES (61, 39, 3)
INSERT [dbo].[EmployeeSkills] ([EmployeeSkillId], [EmployeeId], [SkillId]) VALUES (62, 40, 2)
INSERT [dbo].[EmployeeSkills] ([EmployeeSkillId], [EmployeeId], [SkillId]) VALUES (63, 40, 4)
INSERT [dbo].[EmployeeSkills] ([EmployeeSkillId], [EmployeeId], [SkillId]) VALUES (64, 41, 4)
INSERT [dbo].[EmployeeSkills] ([EmployeeSkillId], [EmployeeId], [SkillId]) VALUES (65, 41, 5)
SET IDENTITY_INSERT [dbo].[EmployeeSkills] OFF
GO
SET IDENTITY_INSERT [dbo].[Gender] ON 

INSERT [dbo].[Gender] ([GenderId], [GenderName]) VALUES (1, N'Male')
INSERT [dbo].[Gender] ([GenderId], [GenderName]) VALUES (2, N'Female')
SET IDENTITY_INSERT [dbo].[Gender] OFF
GO
SET IDENTITY_INSERT [dbo].[OtherCity] ON 

INSERT [dbo].[OtherCity] ([OtherCityId], [OtherCityName], [EmployeeId], [CountryId]) VALUES (1, N'Gurgaon', 24, 1)
INSERT [dbo].[OtherCity] ([OtherCityId], [OtherCityName], [EmployeeId], [CountryId]) VALUES (2, N'Gurgaon', 25, 1)
INSERT [dbo].[OtherCity] ([OtherCityId], [OtherCityName], [EmployeeId], [CountryId]) VALUES (3, N'dehri onsone', 26, 2)
INSERT [dbo].[OtherCity] ([OtherCityId], [OtherCityName], [EmployeeId], [CountryId]) VALUES (4, N'Pittsburg', 27, 1)
INSERT [dbo].[OtherCity] ([OtherCityId], [OtherCityName], [EmployeeId], [CountryId]) VALUES (5, N'banglore', 28, 1)
INSERT [dbo].[OtherCity] ([OtherCityId], [OtherCityName], [EmployeeId], [CountryId]) VALUES (6, N'ip', 29, 1)
INSERT [dbo].[OtherCity] ([OtherCityId], [OtherCityName], [EmployeeId], [CountryId]) VALUES (7, N' ', 30, 1)
INSERT [dbo].[OtherCity] ([OtherCityId], [OtherCityName], [EmployeeId], [CountryId]) VALUES (8, N' ', 31, 1)
INSERT [dbo].[OtherCity] ([OtherCityId], [OtherCityName], [EmployeeId], [CountryId]) VALUES (9, N'to', 32, 1)
INSERT [dbo].[OtherCity] ([OtherCityId], [OtherCityName], [EmployeeId], [CountryId]) VALUES (10, N'PUNE', 36, 1)
INSERT [dbo].[OtherCity] ([OtherCityId], [OtherCityName], [EmployeeId], [CountryId]) VALUES (11, N'Nagpur', 37, 1)
INSERT [dbo].[OtherCity] ([OtherCityId], [OtherCityName], [EmployeeId], [CountryId]) VALUES (12, N'bIRENDRA@GMAIL.COM', 40, 1)
INSERT [dbo].[OtherCity] ([OtherCityId], [OtherCityName], [EmployeeId], [CountryId]) VALUES (13, N'', 41, 1)
SET IDENTITY_INSERT [dbo].[OtherCity] OFF
GO
SET IDENTITY_INSERT [dbo].[Skills] ON 

INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (1, N'
AWS')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (2, N'DevOps')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (3, N'Full Stack Developer')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (4, N'Middleware')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (5, N'Webservices')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (6, N'QA-Automation')
SET IDENTITY_INSERT [dbo].[Skills] OFF
GO
ALTER TABLE [dbo].[EmployeeDetails]  WITH CHECK ADD FOREIGN KEY([CountryId])
REFERENCES [dbo].[Country] ([CountryId])
GO
ALTER TABLE [dbo].[EmployeeSkills]  WITH CHECK ADD FOREIGN KEY([SkillId])
REFERENCES [dbo].[Skills] ([SkillId])
GO
ALTER TABLE [dbo].[OtherCity]  WITH CHECK ADD FOREIGN KEY([CountryId])
REFERENCES [dbo].[Country] ([CountryId])
GO
ALTER TABLE [dbo].[OtherCity]  WITH CHECK ADD FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[EmployeeDetails] ([EmployeeId])
GO
/****** Object:  StoredProcedure [dbo].[getallCities]    Script Date: 28-03-2023 17:13:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getallCities] 

as
begin
select distinct city from ChartData
end

GO
/****** Object:  StoredProcedure [dbo].[GetAllCountries]    Script Date: 28-03-2023 17:13:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GetAllCountries]
@searchText nvarchar(max)=''
AS BEGIN 
SELECT CountryId, CountryName from  
Country
END
GO
/****** Object:  StoredProcedure [dbo].[getalldata]    Script Date: 28-03-2023 17:13:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getalldata] 
@searchText nvarchar(max) = ''
as
begin
select * from ChartData
end
GO
/****** Object:  StoredProcedure [dbo].[getAllExportContractDta]    Script Date: 28-03-2023 17:13:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[getAllExportContractDta] 
as begin 
execute [GetData]
end
GO
/****** Object:  StoredProcedure [dbo].[GetAllGenders]    Script Date: 28-03-2023 17:13:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GetAllGenders]
AS BEGIN 
SELECT GenderId, GenderName from  
Gender
END
GO
/****** Object:  StoredProcedure [dbo].[getallSkils]    Script Date: 28-03-2023 17:13:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getallSkils] 
as
begin
select * from Skills
end
GO
/****** Object:  StoredProcedure [dbo].[GetCitiesByCountryId]    Script Date: 28-03-2023 17:13:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[GetCitiesByCountryId] 
(@CountryId int)
AS BEGIN 
SELECT c1.CityId, c1.CityName, c1.CountryId FROM City c1
JOIN Country c2 ON c1.CountryId=c2.CountryId 
where @countryId=c2.CountryId
END
GO
/****** Object:  StoredProcedure [dbo].[sp_CreateEmployee]    Script Date: 28-03-2023 17:13:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROCEDURE [dbo].[sp_CreateEmployee] 
(
	@FirstName nvarchar(20),
	@LastName nvarchar(20),
	@Email nvarchar(50),
	@Mobile nvarchar(50),
	@Address nvarchar(50),
	@DOB date,
	@GenderId INT,
	@CountryId INT,
	@CityId INT,
	@SkillId INT,
	@Id INT OUTPUT ,
	@OtherCityName nvarchar(50)
)
AS
BEGIN 
INSERT INTO [EmployeeDetails](
	FirstName,
	LastName,
	Email,
	Mobile ,
	Address ,
	DOB,
	GenderId ,
	CountryId,
	CityId
)

	VALUES ( 
	@FirstName,
	@LastName,
	@Email,
	@Mobile ,
	@Address ,
	@DOB,
	@GenderId ,
	@CountryId,
	@CityId 
	)

SET @Id = SCOPE_IDENTITY();


IF((@CityId=0)OR (@CityId=NULL))
BEGIN 
INSERT INTO [OtherCity](
	OtherCityName,
	EmployeeId,
	CountryId
)

	VALUES ( 
	@OtherCityName,
	@Id,
	@CountryId
	)
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_CreateEmployeeSkills]    Script Date: 28-03-2023 17:13:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_CreateEmployeeSkills] 
(
	@EmployeeId  INT,
	@SkillId  INT
)
AS
BEGIN 
INSERT INTO [dbo].[EmployeeSkills](
	EmployeeId,
	SkillId )

	VALUES ( 
	@EmployeeId,
	@SkillId
	)
END
GO
USE [master]
GO
ALTER DATABASE [MockChart] SET  READ_WRITE 
GO
