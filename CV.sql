USE [master]
GO
/****** Object:  Database [CV]    Script Date: 25/01/2018 18:55:01 ******/
CREATE DATABASE [CV]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CV', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\CV.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CV_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\CV_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CV] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CV].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CV] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CV] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CV] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CV] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CV] SET ARITHABORT OFF 
GO
ALTER DATABASE [CV] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CV] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [CV] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CV] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CV] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CV] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CV] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CV] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CV] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CV] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CV] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CV] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CV] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CV] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CV] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CV] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CV] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CV] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CV] SET RECOVERY FULL 
GO
ALTER DATABASE [CV] SET  MULTI_USER 
GO
ALTER DATABASE [CV] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CV] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CV] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CV] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'CV', N'ON'
GO
USE [CV]
GO
/****** Object:  Table [dbo].[Competenze]    Script Date: 25/01/2018 18:55:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Competenze](
	[IDCompetenza] [int] IDENTITY(1,1) NOT NULL,
	[Competenza] [nvarchar](50) NULL,
 CONSTRAINT [PK_Competenze] PRIMARY KEY CLUSTERED 
(
	[IDCompetenza] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CompetenzeDiStudente]    Script Date: 25/01/2018 18:55:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompetenzeDiStudente](
	[IDCompDiStud] [int] IDENTITY(1,1) NOT NULL,
	[IDCompetenza] [int] NOT NULL,
	[IDStudente] [int] NOT NULL,
 CONSTRAINT [PK_CompetenzeDiStudente] PRIMARY KEY CLUSTERED 
(
	[IDCompDiStud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Studenti]    Script Date: 25/01/2018 18:55:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Studenti](
	[IDStudente] [int] IDENTITY(1,1) NOT NULL,
	[Cognome] [nvarchar](50) NOT NULL,
	[Nome] [nvarchar](50) NOT NULL,
	[DataNascita] [date] NOT NULL,
	[Indirizzo] [nvarchar](50) NOT NULL,
	[Telefono] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[SitoWeb] [nvarchar](50) NULL,
	[NomeCV] [nvarchar](50) NULL,
 CONSTRAINT [PK_Studenti] PRIMARY KEY CLUSTERED 
(
	[IDStudente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Competenze] ON 

INSERT [dbo].[Competenze] ([IDCompetenza], [Competenza]) VALUES (1, N'comunicare')
INSERT [dbo].[Competenze] ([IDCompetenza], [Competenza]) VALUES (2, N'parlare')
INSERT [dbo].[Competenze] ([IDCompetenza], [Competenza]) VALUES (3, N'salutare')
INSERT [dbo].[Competenze] ([IDCompetenza], [Competenza]) VALUES (4, N'ciao')
INSERT [dbo].[Competenze] ([IDCompetenza], [Competenza]) VALUES (5, N'inglese')
SET IDENTITY_INSERT [dbo].[Competenze] OFF
SET IDENTITY_INSERT [dbo].[CompetenzeDiStudente] ON 

INSERT [dbo].[CompetenzeDiStudente] ([IDCompDiStud], [IDCompetenza], [IDStudente]) VALUES (6, 1, 2)
INSERT [dbo].[CompetenzeDiStudente] ([IDCompDiStud], [IDCompetenza], [IDStudente]) VALUES (7, 2, 3)
INSERT [dbo].[CompetenzeDiStudente] ([IDCompDiStud], [IDCompetenza], [IDStudente]) VALUES (8, 2, 2)
INSERT [dbo].[CompetenzeDiStudente] ([IDCompDiStud], [IDCompetenza], [IDStudente]) VALUES (11, 3, 2)
INSERT [dbo].[CompetenzeDiStudente] ([IDCompDiStud], [IDCompetenza], [IDStudente]) VALUES (12, 4, 2)
INSERT [dbo].[CompetenzeDiStudente] ([IDCompDiStud], [IDCompetenza], [IDStudente]) VALUES (13, 5, 3)
SET IDENTITY_INSERT [dbo].[CompetenzeDiStudente] OFF
SET IDENTITY_INSERT [dbo].[Studenti] ON 

INSERT [dbo].[Studenti] ([IDStudente], [Cognome], [Nome], [DataNascita], [Indirizzo], [Telefono], [Email], [SitoWeb], [NomeCV]) VALUES (2, N'di palma', N'diego', CAST(0x02230B00 AS Date), N'casa sua', N'no', N'sì@it', N'it.it', N'CV_1')
INSERT [dbo].[Studenti] ([IDStudente], [Cognome], [Nome], [DataNascita], [Indirizzo], [Telefono], [Email], [SitoWeb], [NomeCV]) VALUES (3, N'rossi', N'marco', CAST(0x22250B00 AS Date), N'casa sua, 1', N'forse', N'boh@it.it', N'it.com', N'CV_2')
SET IDENTITY_INSERT [dbo].[Studenti] OFF
ALTER TABLE [dbo].[CompetenzeDiStudente]  WITH CHECK ADD  CONSTRAINT [FK_CompetenzeDiStudente_Competenze] FOREIGN KEY([IDCompetenza])
REFERENCES [dbo].[Competenze] ([IDCompetenza])
GO
ALTER TABLE [dbo].[CompetenzeDiStudente] CHECK CONSTRAINT [FK_CompetenzeDiStudente_Competenze]
GO
ALTER TABLE [dbo].[CompetenzeDiStudente]  WITH CHECK ADD  CONSTRAINT [FK_CompetenzeDiStudente_Studenti] FOREIGN KEY([IDStudente])
REFERENCES [dbo].[Studenti] ([IDStudente])
GO
ALTER TABLE [dbo].[CompetenzeDiStudente] CHECK CONSTRAINT [FK_CompetenzeDiStudente_Studenti]
GO
USE [master]
GO
ALTER DATABASE [CV] SET  READ_WRITE 
GO
