USE [master]
GO
/****** Object:  Database [Agri-Energy_Connect_DB]    Script Date: 2025/05/13 20:08:31 ******/
CREATE DATABASE [Agri-Energy_Connect_DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Agri-Energy_Connect_DB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Agri-Energy_Connect_DB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Agri-Energy_Connect_DB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Agri-Energy_Connect_DB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Agri-Energy_Connect_DB] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Agri-Energy_Connect_DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Agri-Energy_Connect_DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Agri-Energy_Connect_DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Agri-Energy_Connect_DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Agri-Energy_Connect_DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Agri-Energy_Connect_DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [Agri-Energy_Connect_DB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Agri-Energy_Connect_DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Agri-Energy_Connect_DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Agri-Energy_Connect_DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Agri-Energy_Connect_DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Agri-Energy_Connect_DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Agri-Energy_Connect_DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Agri-Energy_Connect_DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Agri-Energy_Connect_DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Agri-Energy_Connect_DB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Agri-Energy_Connect_DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Agri-Energy_Connect_DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Agri-Energy_Connect_DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Agri-Energy_Connect_DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Agri-Energy_Connect_DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Agri-Energy_Connect_DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Agri-Energy_Connect_DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Agri-Energy_Connect_DB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Agri-Energy_Connect_DB] SET  MULTI_USER 
GO
ALTER DATABASE [Agri-Energy_Connect_DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Agri-Energy_Connect_DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Agri-Energy_Connect_DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Agri-Energy_Connect_DB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Agri-Energy_Connect_DB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Agri-Energy_Connect_DB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Agri-Energy_Connect_DB] SET QUERY_STORE = ON
GO
ALTER DATABASE [Agri-Energy_Connect_DB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Agri-Energy_Connect_DB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2025/05/13 20:08:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 2025/05/13 20:08:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2025/05/13 20:08:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2025/05/13 20:08:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2025/05/13 20:08:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2025/05/13 20:08:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2025/05/13 20:08:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Discriminator] [nvarchar](21) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 2025/05/13 20:08:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 2025/05/13 20:08:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ProductCategory] [nvarchar](max) NOT NULL,
	[ProductName] [nvarchar](max) NOT NULL,
	[ProductDescription] [nvarchar](750) NOT NULL,
	[ProductPrice] [float] NOT NULL,
	[ProductionDate] [datetime2](7) NOT NULL,
	[ImageUrl] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250510134355_IdentityTables', N'9.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250510141912_NewRegistrationColumns', N'9.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250511102346_AddProductTable', N'9.0.4')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'54db34dd-b242-493a-b181-df7d2aaf50ad', N'Farmer', N'FARMER', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'946d5ee0-f94a-40a7-bc97-d6dc30706d56', N'Employee', N'EMPLOYEE', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'14e670f4-0f5c-4e09-af74-7d913d49fd8e', N'54db34dd-b242-493a-b181-df7d2aaf50ad')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'cc75cb1b-fee8-453e-b552-0299a9e5401c', N'54db34dd-b242-493a-b181-df7d2aaf50ad')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'cffe43d2-a84b-4848-95a9-63f1f39392ba', N'54db34dd-b242-493a-b181-df7d2aaf50ad')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6fd6cf8d-8ddb-496e-ad20-ddec80fe940a', N'946d5ee0-f94a-40a7-bc97-d6dc30706d56')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c609058f-0428-4662-a6cc-ba85ccf62bd0', N'946d5ee0-f94a-40a7-bc97-d6dc30706d56')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName]) VALUES (N'14e670f4-0f5c-4e09-af74-7d913d49fd8e', N'jackstormgreen@farmingbro.co.za', N'JACKSTORMGREEN@FARMINGBRO.CO.ZA', N'jackstormgreen@farmingbro.co.za', N'JACKSTORMGREEN@FARMINGBRO.CO.ZA', 0, N'AQAAAAIAAYagAAAAEI/qlqNrwtI2jF/W6eX1ospl2AvomeGt/Chl4Irs8FZwec/QnpZTcNhFYdYgCVR7Ng==', N'MVOKFTGI3PYKDLPJ3Y2BIR5XHVU5EINM', N'825ac1e1-209b-4be0-8fe0-233a7a9a984b', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'Jack', N'Green')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName]) VALUES (N'6fd6cf8d-8ddb-496e-ad20-ddec80fe940a', N'denzylwashington@agrienergyconnect.co.za', N'DENZYLWASHINGTON@AGRIENERGYCONNECT.CO.ZA', N'denzylwashington@agrienergyconnect.co.za', N'DENZYLWASHINGTON@AGRIENERGYCONNECT.CO.ZA', 0, N'AQAAAAIAAYagAAAAEBGz1zTSuN3rdUNb6EeCK3Ztebi2v9i0AaKYkU3BCdP9TpO6OcF/rwyo1zthO2vr8g==', N'IXEYI7AFQSLJS6MWIKFOQNVYRIRUM3GL', N'3cc5a85f-ae33-4f46-bb40-bd3c5688b452', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'Denzyl', N'Washington')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName]) VALUES (N'c609058f-0428-4662-a6cc-ba85ccf62bd0', N'mickygouweloos@agrienergyconnect.co.za', N'MICKYGOUWELOOS@AGRIENERGYCONNECT.CO.ZA', N'mickygouweloos@agrienergyconnect.co.za', N'MICKYGOUWELOOS@AGRIENERGYCONNECT.CO.ZA', 0, N'AQAAAAIAAYagAAAAEF9uJvIi8LneqJAV3+Yar0/W7P4Ikb7ADjvhjzipLLnIuwvDzNsq642vtxGCLrxpTQ==', N'7CYQS2Q2LHV3HJXX422I664RB4KBFXZC', N'60f55cdf-ec6b-4802-b5c5-2507a33a27f6', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'Mick', N'Gouweloos')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName]) VALUES (N'cc75cb1b-fee8-453e-b552-0299a9e5401c', N'ashleyureko298@ashleypeacefulfarm.co.za', N'ASHLEYUREKO298@ASHLEYPEACEFULFARM.CO.ZA', N'ashleyureko298@ashleypeacefulfarm.co.za', N'ASHLEYUREKO298@ASHLEYPEACEFULFARM.CO.ZA', 0, N'AQAAAAIAAYagAAAAEJlqft2cqPv/WQ8vMm8oyYSXWTsuCWQCzFbmFxRLvsOn86TrWe9AvNnolZ4Zr5TDVA==', N'YJGA6MCGWBDSCLGB5TLOW5PHPVWK272J', N'ab331f4f-2842-42fe-81f6-ae92b95b48b1', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'Ashley', N'Ureko')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName]) VALUES (N'cffe43d2-a84b-4848-95a9-63f1f39392ba', N'jeremyclarkson@diddlysquatfarm.co.za', N'JEREMYCLARKSON@DIDDLYSQUATFARM.CO.ZA', N'jeremyclarkson@diddlysquatfarm.co.za', N'JEREMYCLARKSON@DIDDLYSQUATFARM.CO.ZA', 0, N'AQAAAAIAAYagAAAAEHsdUv95MiqSKdjZ13Fp6MFV7aH4cTrwJi7DowtHjcAQAShRFpWNCg3nv4X45mmr4w==', N'25NF7C5QORENBHADLWGHZT6YSFHUIQ3I', N'786cb06e-aa08-4cee-bea8-b2d644ec3476', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'Jeremy', N'Clarkson')
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductId], [UserId], [ProductCategory], [ProductName], [ProductDescription], [ProductPrice], [ProductionDate], [ImageUrl]) VALUES (1, N'cffe43d2-a84b-4848-95a9-63f1f39392ba', N'Tractors', N'2025 John Deere 8R410', N'It is a tractor that is capable of delivering high power at low speeds! Excellent for ploughing, cultivating the soil, planting fields, and moving heavy loads on your farm.', 2554000, CAST(N'2025-05-09T08:53:48.0000000' AS DateTime2), N'https://www.agrisales.co.za/Uploads/Photos/BAC-ODM042-407.jpeg')
INSERT [dbo].[Products] ([ProductId], [UserId], [ProductCategory], [ProductName], [ProductDescription], [ProductPrice], [ProductionDate], [ImageUrl]) VALUES (2, N'14e670f4-0f5c-4e09-af74-7d913d49fd8e', N'Water Tanks', N'2025 Rinkhals 600L tank', N'A tank that allows you to store up to 600 litres of water for all your farming needs!', 27000, CAST(N'2025-05-12T09:01:16.3953446' AS DateTime2), N'https://www.agrisales.co.za/Uploads/Photos/BAC-WH0425-37.jpeg')
INSERT [dbo].[Products] ([ProductId], [UserId], [ProductCategory], [ProductName], [ProductDescription], [ProductPrice], [ProductionDate], [ImageUrl]) VALUES (3, N'cffe43d2-a84b-4848-95a9-63f1f39392ba', N'Planters', N'Vaderstad Rapid 400C Skottel Planter', N'Need to sow seeds in rows throughout a field with your tractor in a precise manner? The Vaderstad Rapid Skottel Planter can help you do that and more, ensuring the successful planting and growth of your crops!', 80000, CAST(N'2025-05-14T13:01:42.0000000' AS DateTime2), N'https://www.agrisales.co.za/Uploads/Photos/PRV0525-4.jpg')
INSERT [dbo].[Products] ([ProductId], [UserId], [ProductCategory], [ProductName], [ProductDescription], [ProductPrice], [ProductionDate], [ImageUrl]) VALUES (4, N'14e670f4-0f5c-4e09-af74-7d913d49fd8e', N'Water Tanks', N'H 2 Go Water Tank Trailer 600L', N'Need a water tank that you can transport on your farm? Don''t worry, we got you covered with the H 2 Go Water Tank Trailer that you can easily attach to your tractor or industrial vehicle of choice! You can move up to 600 litres of water at a time.', 12600, CAST(N'2025-05-13T08:00:00.0000000' AS DateTime2), N'https://www.agrisales.co.za/Uploads/Photos/BAC-WRM042-509.jpg')
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 2025/05/13 20:08:31 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 2025/05/13 20:08:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 2025/05/13 20:08:31 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 2025/05/13 20:08:31 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 2025/05/13 20:08:31 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 2025/05/13 20:08:31 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 2025/05/13 20:08:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Products_UserId]    Script Date: 2025/05/13 20:08:31 ******/
CREATE NONCLUSTERED INDEX [IX_Products_UserId] ON [dbo].[Products]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (N'') FOR [Discriminator]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_AspNetUsers_UserId]
GO
USE [master]
GO
ALTER DATABASE [Agri-Energy_Connect_DB] SET  READ_WRITE 
GO
