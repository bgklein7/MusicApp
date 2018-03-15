USE [master]
GO
/****** Object:  Database [Music]    Script Date: 3/15/2018 11:57:59 AM ******/
CREATE DATABASE [Music]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Music', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Music.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Music_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Music_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Music] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Music].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Music] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Music] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Music] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Music] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Music] SET ARITHABORT OFF 
GO
ALTER DATABASE [Music] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Music] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Music] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Music] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Music] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Music] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Music] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Music] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Music] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Music] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Music] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Music] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Music] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Music] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Music] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Music] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Music] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Music] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Music] SET  MULTI_USER 
GO
ALTER DATABASE [Music] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Music] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Music] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Music] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Music] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Music]
GO
/****** Object:  Table [dbo].[Artist]    Script Date: 3/15/2018 11:57:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Artist](
	[ArtistID] [int] IDENTITY(1,1) NOT NULL,
	[ArtistName] [nvarchar](100) NOT NULL,
	[ArtistPhoto] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Artist] PRIMARY KEY CLUSTERED 
(
	[ArtistID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Record]    Script Date: 3/15/2018 11:57:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Record](
	[AlbumID] [int] IDENTITY(1,1) NOT NULL,
	[AlbumTitle] [nvarchar](100) NOT NULL,
	[ReleaseDate] [datetime] NOT NULL,
	[Genre] [nvarchar](50) NOT NULL,
	[ArtWork] [nvarchar](200) NOT NULL,
	[ArtistID] [int] NOT NULL,
 CONSTRAINT [PK_Record] PRIMARY KEY CLUSTERED 
(
	[AlbumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Artist] ON 

INSERT [dbo].[Artist] ([ArtistID], [ArtistName], [ArtistPhoto]) VALUES (1, N'The Gaslight Anthem', N'/Content/images/Gaslight-Anthem.jpg')
INSERT [dbo].[Artist] ([ArtistID], [ArtistName], [ArtistPhoto]) VALUES (2, N'TV On The Radio', N'/Content/images/TVOTR.jpg')
INSERT [dbo].[Artist] ([ArtistID], [ArtistName], [ArtistPhoto]) VALUES (3, N'Frightened Rabbit', N'/Content/images/Frightened-Rabbit.jpg')
SET IDENTITY_INSERT [dbo].[Artist] OFF
SET IDENTITY_INSERT [dbo].[Record] ON 

INSERT [dbo].[Record] ([AlbumID], [AlbumTitle], [ReleaseDate], [Genre], [ArtWork], [ArtistID]) VALUES (1, N'Sink or Swim', CAST(N'2007-05-29 00:00:00.000' AS DateTime), N'Folk Punk', N'/Content/images/GA_Sink.jpg', 1)
INSERT [dbo].[Record] ([AlbumID], [AlbumTitle], [ReleaseDate], [Genre], [ArtWork], [ArtistID]) VALUES (2, N'The ''59 Sound', CAST(N'2008-08-19 00:00:00.000' AS DateTime), N'Folk Punk', N'/Content/images/GA_59.jpg', 1)
INSERT [dbo].[Record] ([AlbumID], [AlbumTitle], [ReleaseDate], [Genre], [ArtWork], [ArtistID]) VALUES (3, N'Dear Science', CAST(N'2008-09-16 00:00:00.000' AS DateTime), N'Indie Rock', N'/Content/images/TVOTR_Dear_Science.jpg', 2)
INSERT [dbo].[Record] ([AlbumID], [AlbumTitle], [ReleaseDate], [Genre], [ArtWork], [ArtistID]) VALUES (4, N'Return to Cookie Mountain', CAST(N'2006-07-06 00:00:00.000' AS DateTime), N'Indie Rock', N'/Content/images/TVOTR_Return.jpg', 2)
INSERT [dbo].[Record] ([AlbumID], [AlbumTitle], [ReleaseDate], [Genre], [ArtWork], [ArtistID]) VALUES (5, N'The Midnight Organ Fight', CAST(N'2008-04-15 00:00:00.000' AS DateTime), N'Indie Folk', N'/Content/images/FR_Midnight.jpg', 3)
INSERT [dbo].[Record] ([AlbumID], [AlbumTitle], [ReleaseDate], [Genre], [ArtWork], [ArtistID]) VALUES (6, N'Pedestrian Verse', CAST(N'2013-02-04 00:00:00.000' AS DateTime), N'Indie Folk', N'/Content/images/FR_Pedestrian.jpg', 3)
SET IDENTITY_INSERT [dbo].[Record] OFF
ALTER TABLE [dbo].[Record]  WITH CHECK ADD  CONSTRAINT [FK_Record_Artist] FOREIGN KEY([ArtistID])
REFERENCES [dbo].[Artist] ([ArtistID])
GO
ALTER TABLE [dbo].[Record] CHECK CONSTRAINT [FK_Record_Artist]
GO
USE [master]
GO
ALTER DATABASE [Music] SET  READ_WRITE 
GO
