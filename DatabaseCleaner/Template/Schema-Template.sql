USE [master]
GO

/****** Object:  Database [ticketmanager_acceptance]    Script Date: 27/05/2013 17:01:56 ******/
DROP DATABASE [ticketmanager_acceptance]
GO

/****** Object:  Database [ticketmanager_acceptance]    Script Date: 27/05/2013 17:01:56 ******/
CREATE DATABASE [ticketmanager_acceptance] ON  PRIMARY 
( NAME = N'ticketmanager_acceptance', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLSERVER\MSSQL\DATA\ticketmanager_acceptance.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ticketmanager_acceptance_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLSERVER\MSSQL\DATA\ticketmanager_acceptance_log.ldf' , SIZE = 4672KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [ticketmanager_acceptance] SET COMPATIBILITY_LEVEL = 100
GO

USE [ticketmanager_acceptance]
GO
ALTER TABLE [dbo].[Template] DROP CONSTRAINT [FK_Template_User]
GO
ALTER TABLE [dbo].[SubstrateException] DROP CONSTRAINT [FK_SubstrateException_SubstrateCatalog]
GO
ALTER TABLE [dbo].[SubstrateException] DROP CONSTRAINT [FK_SubstrateException_Substrate1]
GO
ALTER TABLE [dbo].[Substrate] DROP CONSTRAINT [FK_Substrate_Template]
GO
ALTER TABLE [dbo].[SubstituteFont] DROP CONSTRAINT [FK_SubstituteFont_PrintServiceProvider]
GO
ALTER TABLE [dbo].[Separation] DROP CONSTRAINT [FK_Separation_Template]
GO
ALTER TABLE [dbo].[Page] DROP CONSTRAINT [FK_Page_Template]
GO
ALTER TABLE [dbo].[Page] DROP CONSTRAINT [FK_Page_DefaultPageSize]
GO
ALTER TABLE [dbo].[OPIImagesLocation] DROP CONSTRAINT [FK_OPIImagesLocation_PrintServiceProvider]
GO
ALTER TABLE [dbo].[OPIImagesLocation] DROP CONSTRAINT [FK_OPIImagesLocation_JobControl]
GO
ALTER TABLE [dbo].[JobDestination] DROP CONSTRAINT [FK_JobDestination_PrintServiceProvider]
GO
ALTER TABLE [dbo].[JobControl] DROP CONSTRAINT [FK_JobControl_Template]
GO
ALTER TABLE [dbo].[JobControl] DROP CONSTRAINT [FK_JobControl_SubstituteFont]
GO
ALTER TABLE [dbo].[JobControl] DROP CONSTRAINT [FK_JobControl_JobDestination]
GO
ALTER TABLE [dbo].[IccProfile] DROP CONSTRAINT [FK_IccProfile_PrintServiceProvider]
GO
ALTER TABLE [dbo].[ColorSeparationAlias] DROP CONSTRAINT [FK_ColorSeparationAlias_ColorSeparation]
GO
ALTER TABLE [dbo].[ColorSeparation] DROP CONSTRAINT [FK_ColorSeparation_SeparationSpecificLut]
GO
ALTER TABLE [dbo].[ColorSeparation] DROP CONSTRAINT [FK_ColorSeparation_Separation]
GO
ALTER TABLE [dbo].[ColorManagement] DROP CONSTRAINT [FK_ColorManagement_Template]
GO
ALTER TABLE [dbo].[ColorManagement] DROP CONSTRAINT [FK_ColorManagement_IccProfile_RGB_Input]
GO
ALTER TABLE [dbo].[ColorManagement] DROP CONSTRAINT [FK_ColorManagement_IccProfile_PressOut]
GO
ALTER TABLE [dbo].[ColorManagement] DROP CONSTRAINT [FK_ColorManagement_IccProfile_Pantone_CMYK_Press]
GO
ALTER TABLE [dbo].[ColorManagement] DROP CONSTRAINT [FK_ColorManagement_IccProfile_Gray_Input]
GO
ALTER TABLE [dbo].[ColorManagement] DROP CONSTRAINT [FK_ColorManagement_IccProfile_Emulation_Rendering]
GO
ALTER TABLE [dbo].[ColorManagement] DROP CONSTRAINT [FK_ColorManagement_IccProfile_Emulation]
GO
ALTER TABLE [dbo].[ColorManagement] DROP CONSTRAINT [FK_ColorManagement_IccProfile_CMYK_Input]
GO
ALTER TABLE [dbo].[AdditionalSheet] DROP CONSTRAINT [FK_AdditionalSheet_Template]
GO
ALTER TABLE [dbo].[Separation] DROP CONSTRAINT [DF_Separation_UseLightInksIfAvailable]
GO
ALTER TABLE [dbo].[Separation] DROP CONSTRAINT [DF_Separation_UseContinuousColorCalibration]
GO
ALTER TABLE [dbo].[Separation] DROP CONSTRAINT [DF_Separation_OverPrintGray]
GO
ALTER TABLE [dbo].[Separation] DROP CONSTRAINT [DF_Separation_DropWhiteObjects]
GO
ALTER TABLE [dbo].[Separation] DROP CONSTRAINT [DF_Separation_EnableZero]
GO
ALTER TABLE [dbo].[Separation] DROP CONSTRAINT [DF_Separation_OverPrintBlack]
GO
ALTER TABLE [dbo].[Page] DROP CONSTRAINT [DF_Page_LineThinning]
GO
ALTER TABLE [dbo].[Page] DROP CONSTRAINT [DF_Page_OrientationMirror]
GO
ALTER TABLE [dbo].[Page] DROP CONSTRAINT [DF_Page_NegativePrint]
GO
ALTER TABLE [dbo].[Page] DROP CONSTRAINT [DF_Page_UseMirrorSetting]
GO
ALTER TABLE [dbo].[Page] DROP CONSTRAINT [DF_Page_FitToPage]
GO
ALTER TABLE [dbo].[Page] DROP CONSTRAINT [DF_Page_AutoRotate]
GO
ALTER TABLE [dbo].[Page] DROP CONSTRAINT [DF_Page_JobsResolution]
GO
ALTER TABLE [dbo].[Page] DROP CONSTRAINT [DF_Page_IsSharpening]
GO
ALTER TABLE [dbo].[Page] DROP CONSTRAINT [DF_Page_PadSmallerJobs]
GO
ALTER TABLE [dbo].[JobControl] DROP CONSTRAINT [DF_JobControl_RequireExactFilenameMatch]
GO
ALTER TABLE [dbo].[JobControl] DROP CONSTRAINT [DF_JobControl_AbortReplacementFilesNotFound]
GO
ALTER TABLE [dbo].[JobControl] DROP CONSTRAINT [DF_JobControl_UseOPIForJobs]
GO
ALTER TABLE [dbo].[JobControl] DROP CONSTRAINT [DF_JobControl_Keep job on Press Controller
KeepJobOnPress]
GO
ALTER TABLE [dbo].[IccProfile] DROP CONSTRAINT [DF_IccProfile_isDefaultProfile]
GO
ALTER TABLE [dbo].[ColorSeparation] DROP CONSTRAINT [DF_ColorSeparation_UseSeparationName]
GO
ALTER TABLE [dbo].[ColorSeparation] DROP CONSTRAINT [DF_ColorSeparation_UseDefaultJobLut]
GO
ALTER TABLE [dbo].[ColorManagement] DROP CONSTRAINT [DF_ColorManagement_TreatInputColorsWithColorimetricIntent]
GO
ALTER TABLE [dbo].[ColorManagement] DROP CONSTRAINT [DF_ColorManagement_PreserveBlackOnlyCmykInputs]
GO
ALTER TABLE [dbo].[ColorManagement] DROP CONSTRAINT [DF_ColorManagement_UseLateColorManagement]
GO
ALTER TABLE [dbo].[ColorManagement] DROP CONSTRAINT [DF_ColorManagement_OverridePDFXRequirements]
GO
ALTER TABLE [dbo].[ColorManagement] DROP CONSTRAINT [DF_ColorManagement_UseBlackInkOnlyForPureBlacks]
GO
ALTER TABLE [dbo].[ColorManagement] DROP CONSTRAINT [DF_ColorManagement_UseEmbeddedColorManagement]
GO
ALTER TABLE [dbo].[ColorManagement] DROP CONSTRAINT [DF_ColorManagement_UseBlackPointCompensation]
GO
ALTER TABLE [dbo].[ColorManagement] DROP CONSTRAINT [DF_ColorManagement_UseGreen]
GO
ALTER TABLE [dbo].[ColorManagement] DROP CONSTRAINT [DF_ColorManagement_UseViolet]
GO
ALTER TABLE [dbo].[ColorManagement] DROP CONSTRAINT [DF_ColorManagement_UseOrange]
GO
/****** Object:  Table [dbo].[User]    Script Date: 27/05/2013 17:00:14 ******/
DROP TABLE [dbo].[User]
GO
/****** Object:  Table [dbo].[Template]    Script Date: 27/05/2013 17:00:14 ******/
DROP TABLE [dbo].[Template]
GO
/****** Object:  Table [dbo].[SubstrateException]    Script Date: 27/05/2013 17:00:14 ******/
DROP TABLE [dbo].[SubstrateException]
GO
/****** Object:  Table [dbo].[SubstrateCatalog]    Script Date: 27/05/2013 17:00:14 ******/
DROP TABLE [dbo].[SubstrateCatalog]
GO
/****** Object:  Table [dbo].[Substrate]    Script Date: 27/05/2013 17:00:14 ******/
DROP TABLE [dbo].[Substrate]
GO
/****** Object:  Table [dbo].[SubstituteFont]    Script Date: 27/05/2013 17:00:14 ******/
DROP TABLE [dbo].[SubstituteFont]
GO
/****** Object:  Table [dbo].[SeparationSpecificLut]    Script Date: 27/05/2013 17:00:14 ******/
DROP TABLE [dbo].[SeparationSpecificLut]
GO
/****** Object:  Table [dbo].[Separation]    Script Date: 27/05/2013 17:00:14 ******/
DROP TABLE [dbo].[Separation]
GO
/****** Object:  Table [dbo].[PrintServiceProvider]    Script Date: 27/05/2013 17:00:14 ******/
DROP TABLE [dbo].[PrintServiceProvider]
GO
/****** Object:  Table [dbo].[Page]    Script Date: 27/05/2013 17:00:14 ******/
DROP TABLE [dbo].[Page]
GO
/****** Object:  Table [dbo].[OPIImagesLocation]    Script Date: 27/05/2013 17:00:14 ******/
DROP TABLE [dbo].[OPIImagesLocation]
GO
/****** Object:  Table [dbo].[JobDestination]    Script Date: 27/05/2013 17:00:14 ******/
DROP TABLE [dbo].[JobDestination]
GO
/****** Object:  Table [dbo].[JobControl]    Script Date: 27/05/2013 17:00:14 ******/
DROP TABLE [dbo].[JobControl]
GO
/****** Object:  Table [dbo].[IccProfile]    Script Date: 27/05/2013 17:00:14 ******/
DROP TABLE [dbo].[IccProfile]
GO
/****** Object:  Table [dbo].[DefaultPageSize]    Script Date: 27/05/2013 17:00:14 ******/
DROP TABLE [dbo].[DefaultPageSize]
GO
/****** Object:  Table [dbo].[ColorSeparationAlias]    Script Date: 27/05/2013 17:00:14 ******/
DROP TABLE [dbo].[ColorSeparationAlias]
GO
/****** Object:  Table [dbo].[ColorSeparation]    Script Date: 27/05/2013 17:00:14 ******/
DROP TABLE [dbo].[ColorSeparation]
GO
/****** Object:  Table [dbo].[ColorManagement]    Script Date: 27/05/2013 17:00:14 ******/
DROP TABLE [dbo].[ColorManagement]
GO
/****** Object:  Table [dbo].[AdditionalSheet]    Script Date: 27/05/2013 17:00:14 ******/
DROP TABLE [dbo].[AdditionalSheet]
GO
/****** Object:  User [ticketmanager]    Script Date: 27/05/2013 17:00:14 ******/
DROP USER [ticketmanager]
GO
USE [master]
GO
/****** Object:  Database [ticketmanager_acceptance]    Script Date: 27/05/2013 17:00:14 ******/
DROP DATABASE [ticketmanager_acceptance]
GO
/****** Object:  Database [ticketmanager_acceptance]    Script Date: 27/05/2013 17:00:14 ******/
CREATE DATABASE [ticketmanager_acceptance] ON  PRIMARY 
( NAME = N'ticketmanager_acceptance', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLSERVER\MSSQL\DATA\ticketmanager_acceptance.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ticketmanager_acceptance_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLSERVER\MSSQL\DATA\ticketmanager_acceptance_log.ldf' , SIZE = 4672KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ticketmanager_acceptance] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ticketmanager_acceptance].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ticketmanager_acceptance] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ticketmanager_acceptance] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ticketmanager_acceptance] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ticketmanager_acceptance] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ticketmanager_acceptance] SET ARITHABORT OFF 
GO
ALTER DATABASE [ticketmanager_acceptance] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ticketmanager_acceptance] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [ticketmanager_acceptance] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ticketmanager_acceptance] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ticketmanager_acceptance] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ticketmanager_acceptance] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ticketmanager_acceptance] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ticketmanager_acceptance] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ticketmanager_acceptance] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ticketmanager_acceptance] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ticketmanager_acceptance] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ticketmanager_acceptance] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ticketmanager_acceptance] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ticketmanager_acceptance] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ticketmanager_acceptance] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ticketmanager_acceptance] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ticketmanager_acceptance] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ticketmanager_acceptance] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ticketmanager_acceptance] SET RECOVERY FULL 
GO
ALTER DATABASE [ticketmanager_acceptance] SET  MULTI_USER 
GO
ALTER DATABASE [ticketmanager_acceptance] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ticketmanager_acceptance] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ticketmanager_acceptance', N'ON'
GO
USE [ticketmanager_acceptance]
GO
/****** Object:  User [ticketmanager]    Script Date: 27/05/2013 17:00:15 ******/
CREATE USER [ticketmanager] FOR LOGIN [ticketmanager] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[AdditionalSheet]    Script Date: 27/05/2013 17:00:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdditionalSheet](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[TemplateId] [bigint] NULL,
 CONSTRAINT [PK_AdditionalSheet] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ColorManagement]    Script Date: 27/05/2013 17:00:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ColorManagement](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[TemplateId] [bigint] NOT NULL,
	[CmykInputProfile] [bigint] NULL,
	[RgbInputProfile] [bigint] NOT NULL,
	[GrayInputProfile] [bigint] NULL,
	[PressOutputProfile] [bigint] NOT NULL,
	[EmulationProfile] [bigint] NULL,
	[EmulationRenderingIntent] [bigint] NULL,
	[PantoneEmulation] [int] NOT NULL,
	[PantoneCmykPressProfile] [bigint] NULL,
	[PantoneUseOrange] [bit] NOT NULL,
	[PantoneUseViolet] [bit] NOT NULL,
	[PantoneUseGreen] [bit] NOT NULL,
	[Renderingintent] [int] NOT NULL,
	[CmykImageRenderingIntent] [int] NULL,
	[RgbImageRenderingIntent] [int] NULL,
	[UseBlackPointCompensation] [bit] NULL,
	[UseEmbeddedColorManagement] [bit] NOT NULL,
	[UseBlackInkOnlyForPureBlacks] [bit] NOT NULL,
	[OverridePDFXRequirements] [bit] NOT NULL,
	[UseLateColorManagement] [bit] NOT NULL,
	[PreserveBlackOnlyCmykInputs] [bit] NOT NULL,
	[TreatInputColorsWithColorimetricIntent] [bit] NOT NULL,
	[ColorManagementType] [int] NOT NULL,
 CONSTRAINT [PK_ColorManagement] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ColorSeparation]    Script Date: 27/05/2013 17:00:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ColorSeparation](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SeparationId] [bigint] NOT NULL,
	[SeparationName] [varchar](100) NOT NULL,
	[UseDefaultJobLut] [bit] NOT NULL,
	[SeparationSpecificLutId] [bigint] NOT NULL,
	[ScreenAngle] [int] NOT NULL,
	[UseSeparationName] [bit] NOT NULL,
	[SpecificName] [varchar](100) NULL,
	[NumberInkApplication] [int] NOT NULL,
 CONSTRAINT [PK_ColorSeparation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ColorSeparationAlias]    Script Date: 27/05/2013 17:00:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ColorSeparationAlias](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ColorSeparationId] [bigint] NOT NULL,
	[Alias] [varchar](100) NOT NULL,
 CONSTRAINT [PK_ColorSeparationAlias] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DefaultPageSize]    Script Date: 27/05/2013 17:00:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DefaultPageSize](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](256) NULL,
	[Width] [float] NOT NULL,
	[Height] [float] NOT NULL,
	[Unit] [int] NOT NULL,
	[Type] [int] NOT NULL,
 CONSTRAINT [PK_DefaultPageSize] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IccProfile]    Script Date: 27/05/2013 17:00:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IccProfile](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Filename] [varchar](255) NOT NULL,
	[IccType] [int] NOT NULL,
	[ColorSpace] [int] NOT NULL,
	[ConnectionSpace] [int] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[Version] [varchar](12) NOT NULL,
	[Data] [varbinary](max) NULL,
	[PspId] [bigint] NULL,
	[Platform] [int] NULL,
	[ProfileSurface] [int] NULL,
	[MaterialAppearance] [int] NULL,
	[MediaPolarity] [int] NULL,
	[Colour] [int] NULL,
	[Signature] [int] NULL,
	[Renderingintent] [int] NULL,
	[ProfileClass] [int] NULL,
	[isDefaultProfile] [bit] NULL,
 CONSTRAINT [PK_IccProfile] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[JobControl]    Script Date: 27/05/2013 17:00:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobControl](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[TemplateId] [bigint] NOT NULL,
	[JobDestinationId] [bigint] NOT NULL,
	[KeepJobOnPress] [bit] NOT NULL,
	[WhenJobPressPlaceAt] [int] NOT NULL,
	[UseOPIForJobs] [bit] NOT NULL,
	[AbortReplacementFilesNotFound] [bit] NOT NULL,
	[RequireExactFilenameMatch] [bit] NOT NULL,
	[MissingFontAction] [int] NOT NULL,
	[SubstituteFontId] [bigint] NULL,
 CONSTRAINT [PK_JobControl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[JobDestination]    Script Date: 27/05/2013 17:00:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[JobDestination](
	[Id] [bigint] NOT NULL,
	[DestinationType] [int] NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[PspId] [bigint] NULL,
 CONSTRAINT [PK_JobDestination] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OPIImagesLocation]    Script Date: 27/05/2013 17:00:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OPIImagesLocation](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[JobControlId] [bigint] NOT NULL,
	[PspId] [bigint] NOT NULL,
	[FolderPath] [nchar](10) NULL,
 CONSTRAINT [PK_OPIImagesLocation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Page]    Script Date: 27/05/2013 17:00:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Page](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[TemplateId] [bigint] NULL,
	[DefaultPageSizeId] [int] NULL,
	[PadSmallerJobs] [bit] NOT NULL,
	[PDFBoundingBox] [int] NOT NULL,
	[IsSharpening] [int] NOT NULL,
	[SpecifyResolution] [int] NOT NULL,
	[UseJobResolution] [bit] NOT NULL,
	[ResolutionHight] [int] NULL,
	[ResolutionLow] [int] NULL,
	[ResolutionMedium] [int] NULL,
	[ResolutionNormal] [int] NULL,
	[ScaleAutoRotate] [bit] NOT NULL,
	[ScaleType] [int] NOT NULL,
	[ScaleHorizontal] [int] NULL,
	[ScaleVertical] [int] NULL,
	[OrientationRotate] [int] NULL,
	[UseMirrorSetting] [bit] NOT NULL,
	[OrientationNegativePrint] [bit] NOT NULL,
	[OrientationMirror] [bit] NULL,
	[AdaptativeHalftoning] [int] NULL,
	[LineSmoothing] [int] NULL,
	[CustomLineThinning] [int] NULL,
	[LineThinning] [int] NULL,
 CONSTRAINT [PK_Page] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PrintServiceProvider]    Script Date: 27/05/2013 17:00:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PrintServiceProvider](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
 CONSTRAINT [PK_PrintServiceProvider] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Separation]    Script Date: 27/05/2013 17:00:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Separation](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[TemplateId] [bigint] NOT NULL,
	[OverPrintBlack] [bit] NOT NULL,
	[EnableZeroOverPrint] [bit] NOT NULL,
	[DropWhiteObjects] [bit] NOT NULL,
	[OverPrintGray] [bit] NOT NULL,
	[UseContinuousColorCalibration] [bit] NOT NULL,
	[SeparationModeId] [int] NOT NULL,
	[UseLightInksIfAvailable] [bit] NOT NULL,
 CONSTRAINT [PK_Separation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SeparationSpecificLut]    Script Date: 27/05/2013 17:00:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SeparationSpecificLut](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
 CONSTRAINT [PK_SeparationSpecificLut] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SubstituteFont]    Script Date: 27/05/2013 17:00:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SubstituteFont](
	[Id] [bigint] NOT NULL,
	[PspId] [bigint] NULL,
	[Description] [varchar](50) NOT NULL,
 CONSTRAINT [PK_SubstituteFont] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Substrate]    Script Date: 27/05/2013 17:00:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Substrate](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SubstrateType] [int] NOT NULL,
	[SubstrateCatalogId] [bigint] NULL,
	[UseSpecifiedSubstrate] [bit] NULL,
	[TemplateId] [bigint] NULL,
 CONSTRAINT [PK_Substrate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SubstrateCatalog]    Script Date: 27/05/2013 17:00:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SubstrateCatalog](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NOT NULL,
	[Length] [float] NULL,
	[Width] [float] NULL,
	[Weight] [float] NULL,
	[SubstrateCatalogType] [varchar](30) NULL,
	[Coated] [bit] NULL,
	[Loaded] [bit] NULL,
	[Press] [bit] NULL,
 CONSTRAINT [PK_SubstrateCatalog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SubstrateException]    Script Date: 27/05/2013 17:00:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SubstrateException](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SheetRange] [varchar](255) NULL,
	[OptionAttribute] [varchar](255) NULL,
	[ValueAttribute] [varchar](255) NULL,
	[SubstrateId] [bigint] NOT NULL,
	[SubstrateCatalogId] [bigint] NOT NULL,
 CONSTRAINT [PK_SubstrateException] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Template]    Script Date: 27/05/2013 17:00:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Template](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](255) NOT NULL,
	[DeviceType] [nvarchar](255) NOT NULL,
	[CreationDate] [datetime] NULL,
	[CurrentVersion] [int] NULL,
	[UserId] [bigint] NULL,
	[TemplatePriority] [int] NULL,
	[UseNumberOfCopiesInThePs] [bit] NULL,
	[NumberOfCopies] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 27/05/2013 17:00:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[Login] [nvarchar](255) NULL,
	[Password] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[ColorManagement] ON 

GO
INSERT [dbo].[ColorManagement] ([Id], [TemplateId], [CmykInputProfile], [RgbInputProfile], [GrayInputProfile], [PressOutputProfile], [EmulationProfile], [EmulationRenderingIntent], [PantoneEmulation], [PantoneCmykPressProfile], [PantoneUseOrange], [PantoneUseViolet], [PantoneUseGreen], [Renderingintent], [CmykImageRenderingIntent], [RgbImageRenderingIntent], [UseBlackPointCompensation], [UseEmbeddedColorManagement], [UseBlackInkOnlyForPureBlacks], [OverridePDFXRequirements], [UseLateColorManagement], [PreserveBlackOnlyCmykInputs], [TreatInputColorsWithColorimetricIntent], [ColorManagementType]) VALUES (18, 6, NULL, 6, NULL, 9, NULL, NULL, 1, NULL, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 1)
GO
SET IDENTITY_INSERT [dbo].[ColorManagement] OFF
GO
SET IDENTITY_INSERT [dbo].[ColorSeparation] ON 

GO
INSERT [dbo].[ColorSeparation] ([Id], [SeparationId], [SeparationName], [UseDefaultJobLut], [SeparationSpecificLutId], [ScreenAngle], [UseSeparationName], [SpecificName], [NumberInkApplication]) VALUES (3, 1, N'asdasd', 1, 1, 90, 1, N'sdfasdf', 3)
GO
SET IDENTITY_INSERT [dbo].[ColorSeparation] OFF
GO
SET IDENTITY_INSERT [dbo].[DefaultPageSize] ON 

GO
INSERT [dbo].[DefaultPageSize] ([Id], [Description], [Width], [Height], [Unit], [Type]) VALUES (1, N's320x460', 10, 12, 1, 1)
GO
INSERT [dbo].[DefaultPageSize] ([Id], [Description], [Width], [Height], [Unit], [Type]) VALUES (3, N's220x360', 220, 360, 1, 1)
GO
INSERT [dbo].[DefaultPageSize] ([Id], [Description], [Width], [Height], [Unit], [Type]) VALUES (4, N'null', 233, 233, 1, 2)
GO
INSERT [dbo].[DefaultPageSize] ([Id], [Description], [Width], [Height], [Unit], [Type]) VALUES (5, N'null', 1551, 1551, 5, 2)
GO
INSERT [dbo].[DefaultPageSize] ([Id], [Description], [Width], [Height], [Unit], [Type]) VALUES (6, N'null', 789, 789, 5, 2)
GO
INSERT [dbo].[DefaultPageSize] ([Id], [Description], [Width], [Height], [Unit], [Type]) VALUES (7, N'null', 10, 20, 1, 2)
GO
INSERT [dbo].[DefaultPageSize] ([Id], [Description], [Width], [Height], [Unit], [Type]) VALUES (8, N'null', 88, 88, 1, 2)
GO
INSERT [dbo].[DefaultPageSize] ([Id], [Description], [Width], [Height], [Unit], [Type]) VALUES (9, N'null', 0, 0, 3, 2)
GO
INSERT [dbo].[DefaultPageSize] ([Id], [Description], [Width], [Height], [Unit], [Type]) VALUES (10, N'null', 777, 777, 5, 2)
GO
SET IDENTITY_INSERT [dbo].[DefaultPageSize] OFF
GO
SET IDENTITY_INSERT [dbo].[IccProfile] ON 

GO
INSERT [dbo].[IccProfile] ([Id], [Filename], [IccType], [ColorSpace], [ConnectionSpace], [CreationDate], [Version], [Data], [PspId], [Platform], [ProfileSurface], [MaterialAppearance], [MediaPolarity], [Colour], [Signature], [Renderingintent], [ProfileClass], [isDefaultProfile]) VALUES (1, N'wg9502.icc', 1, 1, 1, CAST(0x0000A08000000000 AS DateTime), N'1', NULL, 1, 0, 0, 1, 0, 0, 1163086671, 1, 1886549106, NULL)
GO
INSERT [dbo].[IccProfile] ([Id], [Filename], [IccType], [ColorSpace], [ConnectionSpace], [CreationDate], [Version], [Data], [PspId], [Platform], [ProfileSurface], [MaterialAppearance], [MediaPolarity], [Colour], [Signature], [Renderingintent], [ProfileClass], [isDefaultProfile]) VALUES (6, N'TESTRBG.icc', 2, 2, 1, CAST(0x0000A13900000000 AS DateTime), N'1.2', NULL, 1, 0, 0, 1, 0, 0, 1163086671, 1, 1835955314, NULL)
GO
INSERT [dbo].[IccProfile] ([Id], [Filename], [IccType], [ColorSpace], [ConnectionSpace], [CreationDate], [Version], [Data], [PspId], [Platform], [ProfileSurface], [MaterialAppearance], [MediaPolarity], [Colour], [Signature], [Renderingintent], [ProfileClass], [isDefaultProfile]) VALUES (7, N'TESTGRAY.icc', 3, 3, 1, CAST(0x0000A13900000000 AS DateTime), N'1.2', NULL, 1, 0, 0, 1, 0, 1, 1163086671, 1, 1886549106, NULL)
GO
INSERT [dbo].[IccProfile] ([Id], [Filename], [IccType], [ColorSpace], [ConnectionSpace], [CreationDate], [Version], [Data], [PspId], [Platform], [ProfileSurface], [MaterialAppearance], [MediaPolarity], [Colour], [Signature], [Renderingintent], [ProfileClass], [isDefaultProfile]) VALUES (8, N'TESTEmulation.icc', 4, 1, 1, CAST(0x0000A13900000000 AS DateTime), N'1.2', NULL, 1, 0, 0, 1, 0, 0, 1163086671, 1, NULL, NULL)
GO
INSERT [dbo].[IccProfile] ([Id], [Filename], [IccType], [ColorSpace], [ConnectionSpace], [CreationDate], [Version], [Data], [PspId], [Platform], [ProfileSurface], [MaterialAppearance], [MediaPolarity], [Colour], [Signature], [Renderingintent], [ProfileClass], [isDefaultProfile]) VALUES (9, N'TESTOutput.icc', 5, 1, 1, CAST(0x0000A13900000000 AS DateTime), N'1.2', NULL, 1, 0, 0, 1, 0, 0, 1163086671, 1, NULL, NULL)
GO
INSERT [dbo].[IccProfile] ([Id], [Filename], [IccType], [ColorSpace], [ConnectionSpace], [CreationDate], [Version], [Data], [PspId], [Platform], [ProfileSurface], [MaterialAppearance], [MediaPolarity], [Colour], [Signature], [Renderingintent], [ProfileClass], [isDefaultProfile]) VALUES (11, N'sRGB_IEC61966-2-1_black_scaled.icc', 2, 2, 4, CAST(0x00009BD901641954 AS DateTime), N'02000000', 0x00000BE800000000020000006D6E74725247422058595A2007D90003001B00150024001F61637370000000000000000000000000000000000000000100000000000000000000F6D6000100000000D32D0000000029F83DDEAFF255AE7842FAE4CA83390D00000000000000000000000000000000000000000000000000000000000000106465736300000144000000796258595A000001C00000001462545243000001D40000080C646D6464000009E0000000886758595A00000A680000001467545243000001D40000080C6C756D6900000A7C000000146D65617300000A9000000024626B707400000AB4000000147258595A00000AC80000001472545243000001D40000080C7465636800000ADC0000000C7675656400000AE8000000877774707400000B70000000146370727400000B84000000376368616400000BBC0000002C64657363000000000000001F735247422049454336313936362D322D3120626C61636B207363616C65640000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000058595A2000000000000024A000000F840000B6CF63757276000000000000040000000005000A000F00140019001E00230028002D00320037003B00400045004A004F00540059005E00630068006D00720077007C00810086008B00900095009A009F00A400A900AE00B200B700BC00C100C600CB00D000D500DB00E000E500EB00F000F600FB01010107010D01130119011F0125012B01320138013E0145014C0152015901600167016E0175017C0183018B0192019A01A101A901B101B901C101C901D101D901E101E901F201FA0203020C0214021D0226022F02380241024B0254025D02670271027A0284028E029802A202AC02B602C102CB02D502E002EB02F50300030B03160321032D03380343034F035A03660372037E038A039603A203AE03BA03C703D303E003EC03F9040604130420042D043B0448045504630471047E048C049A04A804B604C404D304E104F004FE050D051C052B053A05490558056705770586059605A605B505C505D505E505F6060606160627063706480659066A067B068C069D06AF06C006D106E306F507070719072B073D074F076107740786079907AC07BF07D207E507F8080B081F08320846085A086E0882089608AA08BE08D208E708FB09100925093A094F09640979098F09A409BA09CF09E509FB0A110A270A3D0A540A6A0A810A980AAE0AC50ADC0AF30B0B0B220B390B510B690B800B980BB00BC80BE10BF90C120C2A0C430C5C0C750C8E0CA70CC00CD90CF30D0D0D260D400D5A0D740D8E0DA90DC30DDE0DF80E130E2E0E490E640E7F0E9B0EB60ED20EEE0F090F250F410F5E0F7A0F960FB30FCF0FEC1009102610431061107E109B10B910D710F511131131114F116D118C11AA11C911E81207122612451264128412A312C312E31303132313431363138313A413C513E5140614271449146A148B14AD14CE14F01512153415561578159B15BD15E0160316261649166C168F16B216D616FA171D17411765178917AE17D217F7181B18401865188A18AF18D518FA19201945196B199119B719DD1A041A2A1A511A771A9E1AC51AEC1B141B3B1B631B8A1BB21BDA1C021C2A1C521C7B1CA31CCC1CF51D1E1D471D701D991DC31DEC1E161E401E6A1E941EBE1EE91F131F3E1F691F941FBF1FEA20152041206C209820C420F0211C2148217521A121CE21FB22272255228222AF22DD230A23382366239423C223F0241F244D247C24AB24DA250925382568259725C725F726272657268726B726E827182749277A27AB27DC280D283F287128A228D429062938296B299D29D02A022A352A682A9B2ACF2B022B362B692B9D2BD12C052C392C6E2CA22CD72D0C2D412D762DAB2DE12E162E4C2E822EB72EEE2F242F5A2F912FC72FFE3035306C30A430DB3112314A318231BA31F2322A3263329B32D4330D3346337F33B833F1342B3465349E34D83513354D358735C235FD3637367236AE36E937243760379C37D738143850388C38C839053942397F39BC39F93A363A743AB23AEF3B2D3B6B3BAA3BE83C273C653CA43CE33D223D613DA13DE03E203E603EA03EE03F213F613FA23FE24023406440A640E74129416A41AC41EE4230427242B542F7433A437D43C044034447448A44CE45124555459A45DE4622466746AB46F04735477B47C04805484B489148D7491D496349A949F04A374A7D4AC44B0C4B534B9A4BE24C2A4C724CBA4D024D4A4D934DDC4E254E6E4EB74F004F494F934FDD5027507150BB51065150519B51E65231527C52C75313535F53AA53F65442548F54DB5528557555C2560F565C56A956F75744579257E0582F587D58CB591A596959B85A075A565AA65AF55B455B955BE55C355C865CD65D275D785DC95E1A5E6C5EBD5F0F5F615FB36005605760AA60FC614F61A261F56249629C62F06343639763EB6440649464E9653D659265E7663D669266E8673D679367E9683F689668EC6943699A69F16A486A9F6AF76B4F6BA76BFF6C576CAF6D086D606DB96E126E6B6EC46F1E6F786FD1702B708670E0713A719571F0724B72A67301735D73B87414747074CC7528758575E1763E769B76F8775677B37811786E78CC792A798979E77A467AA57B047B637BC27C217C817CE17D417DA17E017E627EC27F237F847FE5804780A8810A816B81CD8230829282F4835783BA841D848084E3854785AB860E867286D7873B879F8804886988CE8933899989FE8A648ACA8B308B968BFC8C638CCA8D318D988DFF8E668ECE8F368F9E9006906E90D6913F91A89211927A92E3934D93B69420948A94F4955F95C99634969F970A977597E0984C98B89924999099FC9A689AD59B429BAF9C1C9C899CF79D649DD29E409EAE9F1D9F8B9FFAA069A0D8A147A1B6A226A296A306A376A3E6A456A4C7A538A5A9A61AA68BA6FDA76EA7E0A852A8C4A937A9A9AA1CAA8FAB02AB75ABE9AC5CACD0AD44ADB8AE2DAEA1AF16AF8BB000B075B0EAB160B1D6B24BB2C2B338B3AEB425B49CB513B58AB601B679B6F0B768B7E0B859B8D1B94AB9C2BA3BBAB5BB2EBBA7BC21BC9BBD15BD8FBE0ABE84BEFFBF7ABFF5C070C0ECC167C1E3C25FC2DBC358C3D4C451C4CEC54BC5C8C646C6C3C741C7BFC83DC8BCC93AC9B9CA38CAB7CB36CBB6CC35CCB5CD35CDB5CE36CEB6CF37CFB8D039D0BAD13CD1BED23FD2C1D344D3C6D449D4CBD54ED5D1D655D6D8D75CD7E0D864D8E8D96CD9F1DA76DAFBDB80DC05DC8ADD10DD96DE1CDEA2DF29DFAFE036E0BDE144E1CCE253E2DBE363E3EBE473E4FCE584E60DE696E71FE7A9E832E8BCE946E9D0EA5BEAE5EB70EBFBEC86ED11ED9CEE28EEB4EF40EFCCF058F0E5F172F1FFF28CF319F3A7F434F4C2F550F5DEF66DF6FBF78AF819F8A8F938F9C7FA57FAE7FB77FC07FC98FD29FDBAFE4BFEDCFF6DFFFF64657363000000000000002E4945432036313936362D322D312044656661756C742052474220436F6C6F7572205370616365202D20735247420000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000058595A2000000000000062990000B785000018DA58595A20000000000000000000500000000000006D656173000000000000000100000000000000000000000000000000000000000000000258595A20000000000000031600000333000002A458595A200000000000006FA2000038F50000039073696720000000004352542064657363000000000000002D5265666572656E63652056696577696E6720436F6E646974696F6E20696E204945432036313936362D322D31000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000058595A20000000000000F6D6000100000000D32D7465787400000000436F7079726967687420496E7465726E6174696F6E616C20436F6C6F7220436F6E736F727469756D2C20323030390000736633320000000000010C44000005DFFFFFF326000007940000FD8FFFFFFBA1FFFFFDA2000003DB0000C075, NULL, 0, 0, 0, 0, 0, 0, NULL, 1835955314, 0)
GO
SET IDENTITY_INSERT [dbo].[IccProfile] OFF
GO
SET IDENTITY_INSERT [dbo].[Page] ON 

GO
INSERT [dbo].[Page] ([Id], [TemplateId], [DefaultPageSizeId], [PadSmallerJobs], [PDFBoundingBox], [IsSharpening], [SpecifyResolution], [UseJobResolution], [ResolutionHight], [ResolutionLow], [ResolutionMedium], [ResolutionNormal], [ScaleAutoRotate], [ScaleType], [ScaleHorizontal], [ScaleVertical], [OrientationRotate], [UseMirrorSetting], [OrientationNegativePrint], [OrientationMirror], [AdaptativeHalftoning], [LineSmoothing], [CustomLineThinning], [LineThinning]) VALUES (1, 6, 3, 0, 1, 2, 0, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, 1, 0, 0, 0, 9, 0)
GO
INSERT [dbo].[Page] ([Id], [TemplateId], [DefaultPageSizeId], [PadSmallerJobs], [PDFBoundingBox], [IsSharpening], [SpecifyResolution], [UseJobResolution], [ResolutionHight], [ResolutionLow], [ResolutionMedium], [ResolutionNormal], [ScaleAutoRotate], [ScaleType], [ScaleHorizontal], [ScaleVertical], [OrientationRotate], [UseMirrorSetting], [OrientationNegativePrint], [OrientationMirror], [AdaptativeHalftoning], [LineSmoothing], [CustomLineThinning], [LineThinning]) VALUES (3, 7, 3, 1, 3, 1, 1, 0, 3, 2, 4, 5, 1, 1, 123, 123, 90, 0, 0, 1, 1, 1, -7, 1)
GO
INSERT [dbo].[Page] ([Id], [TemplateId], [DefaultPageSizeId], [PadSmallerJobs], [PDFBoundingBox], [IsSharpening], [SpecifyResolution], [UseJobResolution], [ResolutionHight], [ResolutionLow], [ResolutionMedium], [ResolutionNormal], [ScaleAutoRotate], [ScaleType], [ScaleHorizontal], [ScaleVertical], [OrientationRotate], [UseMirrorSetting], [OrientationNegativePrint], [OrientationMirror], [AdaptativeHalftoning], [LineSmoothing], [CustomLineThinning], [LineThinning]) VALUES (4, 66, 3, 1, 3, 1, 2, 0, 4, 3, 4, 5, 1, 1, 123, 123, 180, 0, 0, 1, 1, 1, -4, 1)
GO
INSERT [dbo].[Page] ([Id], [TemplateId], [DefaultPageSizeId], [PadSmallerJobs], [PDFBoundingBox], [IsSharpening], [SpecifyResolution], [UseJobResolution], [ResolutionHight], [ResolutionLow], [ResolutionMedium], [ResolutionNormal], [ScaleAutoRotate], [ScaleType], [ScaleHorizontal], [ScaleVertical], [OrientationRotate], [UseMirrorSetting], [OrientationNegativePrint], [OrientationMirror], [AdaptativeHalftoning], [LineSmoothing], [CustomLineThinning], [LineThinning]) VALUES (5, 67, 1, 1, 4, 1, 5, 0, 5, 5, 5, 5, 1, 1, 333, 333, 270, 0, 0, 1, 1, 1, 6, 1)
GO
INSERT [dbo].[Page] ([Id], [TemplateId], [DefaultPageSizeId], [PadSmallerJobs], [PDFBoundingBox], [IsSharpening], [SpecifyResolution], [UseJobResolution], [ResolutionHight], [ResolutionLow], [ResolutionMedium], [ResolutionNormal], [ScaleAutoRotate], [ScaleType], [ScaleHorizontal], [ScaleVertical], [OrientationRotate], [UseMirrorSetting], [OrientationNegativePrint], [OrientationMirror], [AdaptativeHalftoning], [LineSmoothing], [CustomLineThinning], [LineThinning]) VALUES (6, 22, 4, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 7, 0)
GO
INSERT [dbo].[Page] ([Id], [TemplateId], [DefaultPageSizeId], [PadSmallerJobs], [PDFBoundingBox], [IsSharpening], [SpecifyResolution], [UseJobResolution], [ResolutionHight], [ResolutionLow], [ResolutionMedium], [ResolutionNormal], [ScaleAutoRotate], [ScaleType], [ScaleHorizontal], [ScaleVertical], [OrientationRotate], [UseMirrorSetting], [OrientationNegativePrint], [OrientationMirror], [AdaptativeHalftoning], [LineSmoothing], [CustomLineThinning], [LineThinning]) VALUES (7, NULL, 5, 1, 4, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1551, 1551, 270, 0, 0, 1, 1, 1, 10, 1)
GO
INSERT [dbo].[Page] ([Id], [TemplateId], [DefaultPageSizeId], [PadSmallerJobs], [PDFBoundingBox], [IsSharpening], [SpecifyResolution], [UseJobResolution], [ResolutionHight], [ResolutionLow], [ResolutionMedium], [ResolutionNormal], [ScaleAutoRotate], [ScaleType], [ScaleHorizontal], [ScaleVertical], [OrientationRotate], [UseMirrorSetting], [OrientationNegativePrint], [OrientationMirror], [AdaptativeHalftoning], [LineSmoothing], [CustomLineThinning], [LineThinning]) VALUES (8, 69, 6, 1, 4, 1, 3, 0, 3, 3, 3, 3, 0, 1, 789, 789, 180, 0, 0, 1, 1, 1, 10, 1)
GO
INSERT [dbo].[Page] ([Id], [TemplateId], [DefaultPageSizeId], [PadSmallerJobs], [PDFBoundingBox], [IsSharpening], [SpecifyResolution], [UseJobResolution], [ResolutionHight], [ResolutionLow], [ResolutionMedium], [ResolutionNormal], [ScaleAutoRotate], [ScaleType], [ScaleHorizontal], [ScaleVertical], [OrientationRotate], [UseMirrorSetting], [OrientationNegativePrint], [OrientationMirror], [AdaptativeHalftoning], [LineSmoothing], [CustomLineThinning], [LineThinning]) VALUES (10, 70, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Page] ([Id], [TemplateId], [DefaultPageSizeId], [PadSmallerJobs], [PDFBoundingBox], [IsSharpening], [SpecifyResolution], [UseJobResolution], [ResolutionHight], [ResolutionLow], [ResolutionMedium], [ResolutionNormal], [ScaleAutoRotate], [ScaleType], [ScaleHorizontal], [ScaleVertical], [OrientationRotate], [UseMirrorSetting], [OrientationNegativePrint], [OrientationMirror], [AdaptativeHalftoning], [LineSmoothing], [CustomLineThinning], [LineThinning]) VALUES (11, 71, 8, 1, 4, 1, 1, 0, 1, 1, 1, 1, 1, 1, 88, 88, 270, 0, 0, 1, 1, 1, 7, 1)
GO
INSERT [dbo].[Page] ([Id], [TemplateId], [DefaultPageSizeId], [PadSmallerJobs], [PDFBoundingBox], [IsSharpening], [SpecifyResolution], [UseJobResolution], [ResolutionHight], [ResolutionLow], [ResolutionMedium], [ResolutionNormal], [ScaleAutoRotate], [ScaleType], [ScaleHorizontal], [ScaleVertical], [OrientationRotate], [UseMirrorSetting], [OrientationNegativePrint], [OrientationMirror], [AdaptativeHalftoning], [LineSmoothing], [CustomLineThinning], [LineThinning]) VALUES (12, NULL, 9, 1, 0, 0, 2, 0, 5, 5, 5, 5, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Page] ([Id], [TemplateId], [DefaultPageSizeId], [PadSmallerJobs], [PDFBoundingBox], [IsSharpening], [SpecifyResolution], [UseJobResolution], [ResolutionHight], [ResolutionLow], [ResolutionMedium], [ResolutionNormal], [ScaleAutoRotate], [ScaleType], [ScaleHorizontal], [ScaleVertical], [OrientationRotate], [UseMirrorSetting], [OrientationNegativePrint], [OrientationMirror], [AdaptativeHalftoning], [LineSmoothing], [CustomLineThinning], [LineThinning]) VALUES (13, 73, 10, 0, 4, 1, 5, 0, 5, 5, 5, 5, 1, 1, 777, 777, 270, 0, 1, 1, 1, 1, 10, 1)
GO
SET IDENTITY_INSERT [dbo].[Page] OFF
GO
SET IDENTITY_INSERT [dbo].[PrintServiceProvider] ON 

GO
INSERT [dbo].[PrintServiceProvider] ([Id], [Name]) VALUES (1, N'MVP')
GO
SET IDENTITY_INSERT [dbo].[PrintServiceProvider] OFF
GO
SET IDENTITY_INSERT [dbo].[Separation] ON 

GO
INSERT [dbo].[Separation] ([Id], [TemplateId], [OverPrintBlack], [EnableZeroOverPrint], [DropWhiteObjects], [OverPrintGray], [UseContinuousColorCalibration], [SeparationModeId], [UseLightInksIfAvailable]) VALUES (1, 6, 1, 1, 1, 1, 1, 80, 1)
GO
SET IDENTITY_INSERT [dbo].[Separation] OFF
GO
SET IDENTITY_INSERT [dbo].[SeparationSpecificLut] ON 

GO
INSERT [dbo].[SeparationSpecificLut] ([Id], [Description]) VALUES (1, N'desclut')
GO
SET IDENTITY_INSERT [dbo].[SeparationSpecificLut] OFF
GO
SET IDENTITY_INSERT [dbo].[Substrate] ON 

GO
INSERT [dbo].[Substrate] ([Id], [SubstrateType], [SubstrateCatalogId], [UseSpecifiedSubstrate], [TemplateId]) VALUES (10, 1, NULL, 0, NULL)
GO
INSERT [dbo].[Substrate] ([Id], [SubstrateType], [SubstrateCatalogId], [UseSpecifiedSubstrate], [TemplateId]) VALUES (14, 1, 1, 0, NULL)
GO
INSERT [dbo].[Substrate] ([Id], [SubstrateType], [SubstrateCatalogId], [UseSpecifiedSubstrate], [TemplateId]) VALUES (15, 0, 1, 0, NULL)
GO
INSERT [dbo].[Substrate] ([Id], [SubstrateType], [SubstrateCatalogId], [UseSpecifiedSubstrate], [TemplateId]) VALUES (36, 1, 1, 0, 6)
GO
INSERT [dbo].[Substrate] ([Id], [SubstrateType], [SubstrateCatalogId], [UseSpecifiedSubstrate], [TemplateId]) VALUES (70, 0, 1, 0, NULL)
GO
INSERT [dbo].[Substrate] ([Id], [SubstrateType], [SubstrateCatalogId], [UseSpecifiedSubstrate], [TemplateId]) VALUES (71, 2, 1, 0, NULL)
GO
INSERT [dbo].[Substrate] ([Id], [SubstrateType], [SubstrateCatalogId], [UseSpecifiedSubstrate], [TemplateId]) VALUES (72, 2, 1, 0, NULL)
GO
INSERT [dbo].[Substrate] ([Id], [SubstrateType], [SubstrateCatalogId], [UseSpecifiedSubstrate], [TemplateId]) VALUES (73, 0, 1, 0, NULL)
GO
INSERT [dbo].[Substrate] ([Id], [SubstrateType], [SubstrateCatalogId], [UseSpecifiedSubstrate], [TemplateId]) VALUES (74, 0, 1, 0, NULL)
GO
INSERT [dbo].[Substrate] ([Id], [SubstrateType], [SubstrateCatalogId], [UseSpecifiedSubstrate], [TemplateId]) VALUES (75, 0, 1, 0, NULL)
GO
INSERT [dbo].[Substrate] ([Id], [SubstrateType], [SubstrateCatalogId], [UseSpecifiedSubstrate], [TemplateId]) VALUES (76, 0, 1, 0, NULL)
GO
INSERT [dbo].[Substrate] ([Id], [SubstrateType], [SubstrateCatalogId], [UseSpecifiedSubstrate], [TemplateId]) VALUES (77, 0, 1, 0, NULL)
GO
INSERT [dbo].[Substrate] ([Id], [SubstrateType], [SubstrateCatalogId], [UseSpecifiedSubstrate], [TemplateId]) VALUES (78, 0, 1, 0, NULL)
GO
SET IDENTITY_INSERT [dbo].[Substrate] OFF
GO
SET IDENTITY_INSERT [dbo].[SubstrateCatalog] ON 

GO
INSERT [dbo].[SubstrateCatalog] ([Id], [Name], [Length], [Width], [Weight], [SubstrateCatalogType], [Coated], [Loaded], [Press]) VALUES (1, N'5x10', 10, 5, 10, N'Glossy', 1, 1, 1)
GO
INSERT [dbo].[SubstrateCatalog] ([Id], [Name], [Length], [Width], [Weight], [SubstrateCatalogType], [Coated], [Loaded], [Press]) VALUES (2, N'10x10', 10, 10, 10, N'Matte', 0, 0, 0)
GO
SET IDENTITY_INSERT [dbo].[SubstrateCatalog] OFF
GO
SET IDENTITY_INSERT [dbo].[SubstrateException] ON 

GO
INSERT [dbo].[SubstrateException] ([Id], [SheetRange], [OptionAttribute], [ValueAttribute], [SubstrateId], [SubstrateCatalogId]) VALUES (76, NULL, NULL, NULL, 71, 1)
GO
SET IDENTITY_INSERT [dbo].[SubstrateException] OFF
GO
SET IDENTITY_INSERT [dbo].[Template] ON 

GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (6, N'asdasdasdk', N'fdgdfgdfg', N'', CAST(0x0000A1CB00C71604 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (7, N'alineh', N'aline', N'', CAST(0x0000A1CB00E65410 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (8, N'taltal', N'fdgdfgdfg', N'', CAST(0x0000A1BD00F26E80 AS DateTime), 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (9, N'taltal', N'fdgdfgdfg', N'', CAST(0x0000A1BA00D86F6C AS DateTime), 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (10, N'taltal', N'fdgdfgdfg', N'', CAST(0x0000A1BA00D86F6C AS DateTime), 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (11, N'taltal', N'fdgdfgdfg', N'', CAST(0x0000A1BA00D86F6C AS DateTime), 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (12, N'taltal', N'fdgdfgdfg', N'', CAST(0x0000A1BA00D86F6C AS DateTime), 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (13, N'taltal', N'fdgdfgdfg', N'', CAST(0x0000A1BA00D86F6C AS DateTime), 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (14, N'taltal', N'fdgdfgdfg', N'', CAST(0x0000A1BA00D86F6C AS DateTime), 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (15, N'taltal', N'fdgdfgdfg', N'', CAST(0x0000A1BA00D86F6C AS DateTime), 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (16, N'taltal', N'fdgdfgdfg', N'', CAST(0x0000A1BA00D86F6C AS DateTime), 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (17, N'taltal', N'fdgdfgdfg', N'', CAST(0x0000A1BA00D86F6C AS DateTime), 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (18, N'taltal', N'fdgdfgdfg', N'', CAST(0x0000A1BE00F801D8 AS DateTime), 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (20, N'taltal', N'fdgdfgdfg', N'', CAST(0x0000A1C000E5BA8C AS DateTime), 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (22, N'taltal', N'fdgdfgdfg', N'', CAST(0x0000A1BA00D86F6C AS DateTime), 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (23, N'taltal', N'fdgdfgdfg', N'', CAST(0x0000A1BA00D86F6C AS DateTime), 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (24, N'taltal', N'fdgdfgdfg', N'', CAST(0x0000A1BA00D86F6C AS DateTime), 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (25, N'taltal', N'fdgdfgdfg', N'', CAST(0x0000A1BA00D86F6C AS DateTime), 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (26, N'taltal', N'fdgdfgdfg', N'', CAST(0x0000A1BA00D86F6C AS DateTime), 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (27, N'taltal', N'fdgdfgdfg', N'', CAST(0x0000A1BA00D86F6C AS DateTime), 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (28, N'taltal', N'fdgdfgdfg', N'', CAST(0x0000A1BA00D86F6C AS DateTime), 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (29, N'taltal', N'fdgdfgdfg', N'', CAST(0x0000A1BA00D86F6C AS DateTime), 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (30, N'taltal', N'fdgdfgdfg', N'', CAST(0x0000A1BA00D86F6C AS DateTime), 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (31, N'taltal', N'fdgdfgdfg', N'', CAST(0x0000A1BA00D86F6C AS DateTime), 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (32, N'taltal', N'fdgdfgdfg', N'', CAST(0x0000A1BA00D86F6C AS DateTime), 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (33, N'taltal', N'fdgdfgdfg', N'', CAST(0x0000A1BA00D86F6C AS DateTime), 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (34, N'taltal', N'fdgdfgdfg', N'', CAST(0x0000A1BA00D86F6C AS DateTime), 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (35, N'taltal', N'fdgdfgdfg', N'', CAST(0x0000A1BA00D86F6C AS DateTime), 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (36, N'taltal', N'fdgdfgdfg', N'', CAST(0x0000A1BA00D86F6C AS DateTime), 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (37, N'taltal', N'fdgdfgdfg', N'', CAST(0x0000A1BA00D86F6C AS DateTime), 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (38, N'taltal', N'fdgdfgdfg', N'', CAST(0x0000A1BA00D86F6C AS DateTime), 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (39, N'taltal', N'fdgdfgdfg', N'', CAST(0x0000A1BA00D86F6C AS DateTime), 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (40, N'taltal', N'fdgdfgdfg', N'', CAST(0x0000A1BA00D86F6C AS DateTime), 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (41, N'taltal', N'fdgdfgdfg', N'', CAST(0x0000A1BA00D86F6C AS DateTime), 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (42, N'taltal', N'fdgdfgdfg', N'', CAST(0x0000A1BA00D86F6C AS DateTime), 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (43, N'taltal', N'fdgdfgdfg', N'', CAST(0x0000A1BA00D86F6C AS DateTime), 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (44, N'taltal', N'fdgdfgdfg', N'', CAST(0x0000A1BA00D86F6C AS DateTime), 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (45, N'taltal', N'fdgdfgdfg', N'', CAST(0x0000A1BA00D86F6C AS DateTime), 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (46, N'taltal', N'fdgdfgdfg', N'', CAST(0x0000A1BA00D86F6C AS DateTime), 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (47, N'taltal', N'fdgdfgdfg', N'', CAST(0x0000A1BA00D86F6C AS DateTime), 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (48, N'teste011', N'teste01', N'', CAST(0x0000A1BE010818FC AS DateTime), 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (49, N'teste', N'fdgdfgdfg', N'', CAST(0x0000A1BD00B76150 AS DateTime), 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (50, N'teste', N'fdgdfgdfg', N'', CAST(0x0000A1C4006D5768 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (51, N'', N'fdgdfgdfg', N'', CAST(0x0000A1BD00B95B90 AS DateTime), 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (52, N'asdfqwer', N'asdfqwerqwer', N'', CAST(0x0000A1BE00E246F4 AS DateTime), 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (53, N'huhuhu', N'huhuhu', N'', CAST(0x0000A1BE00E3B494 AS DateTime), 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (54, N'dxvxdvxcv', N'fdgdfgdfg', N'', CAST(0x0000A1C400A5B388 AS DateTime), 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (55, N'dfdfd', N'fdgdfgdfg', N'', CAST(0x0000A1C400A5CE7C AS DateTime), 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (56, N'@.*"   "', N'fdgdfgdfg', N'', CAST(0x0000A1C400A9239C AS DateTime), 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (57, N'"    "', N'fdgdfgdfg', N'', CAST(0x0000A1C400A93C38 AS DateTime), 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (58, N'teste ', N'fdgdfgdfg', N'', CAST(0x0000A1C400A95F60 AS DateTime), 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (59, N'', N'fdgdfgdfg', N'', CAST(0x0000A1C400A98990 AS DateTime), 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (60, N'teste1', N'teste', N'', CAST(0x0000A1C40069C684 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (61, N'teste ', N'fdgdfgdfg', N'', CAST(0x0000A1C4006C41AC AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (62, N'teste', N'fdgdfgdfg', N'', CAST(0x0000A1C4006D2630 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (63, N'', N'fdgdfgdfg', N'', CAST(0x0000A1C4006EE830 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (64, N'" "', N'""', N'', CAST(0x0000A1C40073B900 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (65, N'Ticket Name', N'Ticket Name', N'', CAST(0x0000A1C40094AFAC AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (66, N'chica', N'dular', N'', CAST(0x0000A1C4010E59C4 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (67, N'teste123', N'teste123', N'', CAST(0x0000A1C4010F1EA4 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (68, N'cvbvcbcvbc', N'fdgdfgdfg', N'', CAST(0x0000A1C500767370 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (69, N'789789', N'789789', N'', CAST(0x0000A1C501002A20 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (70, N'78988', N'789788', N'', CAST(0x0000A1C501027410 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (71, N'TTeste', N'TTeste', N'', CAST(0x0000A1C50103CB6C AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (72, N'gg', N'fdgdfgdfg', N'', CAST(0x0000A1C500CA4B80 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (73, N'Gen1', N'Gen1', N'', CAST(0x0000A1C50126C810 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (74, N'bla', N'fdgdfgdfg', N'', CAST(0x0000A1C600526110 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (75, N'    a', N'    a', N'', CAST(0x0000A1C6009A3BFC AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (76, N'asasas', N'asasas', N'', CAST(0x0000A1C6009B2788 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (77, N'sdf', N'sfds', N'', CAST(0x0000A1C800A4FDE4 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (78, N'', N'fdgdfgdfg', N'', CAST(0x0000A1C800E2A838 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (79, N'', N'aline', N'', CAST(0x0000A1C800E2F20C AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (80, N'hahahaahahahahahah', N'aline', N'', CAST(0x0000A1C800E51C58 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (81, N'ppppppppp', N'aline', N'', CAST(0x0000A1C800E540AC AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (82, N'lalalalalalaal', N'aline', N'', CAST(0x0000A1C800E5C194 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (83, N'aadasdasdsadada', N'aline', N'', CAST(0x0000A1C800E5CE78 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (84, N'adasdasdasd', N'aline', N'', CAST(0x0000A1C800E61BD0 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (85, N'aline1', N'bla', N'', CAST(0x0000A1C800ECA798 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (86, N'aline3', N'3', N'', CAST(0x0000A1C800ECCAC0 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (87, N'asdasd', N'dasdasdsa', N'', CAST(0x0000A1C800F527C4 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (88, N'asdasdasd', N'adsadasdas', N'', CAST(0x0000A1C800F76F5C AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (89, N'tal*', N'ahahah', N'', CAST(0x0000A1C800F7821C AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (90, N'uhu', N'huhu', N'', CAST(0x0000A1C8012EA684 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (91, N'lalalaala', N'lalalaalalala', N'', CAST(0x0000A1C8012FF930 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (92, N'ahahahuhaueaue', N'aheuhaeaue', N'', CAST(0x0000A1C801303F80 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (93, N'asdasdasdk', N'fdgdfgdfg', N'', CAST(0x0000A1CB00B1D884 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (94, N'asdasdasdk', N'fdgdfgdfg', N'', CAST(0x0000A1CB00B1FF30 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (95, N'asdasdasdk', N'fdgdfgdfg', N'', CAST(0x0000A1CB00B20AE8 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (96, N'asdasdasdk', N'fdgdfgdfg', N'', CAST(0x0000A1CB00B23770 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (97, N'asdasdasdk', N'fdgdfgdfg', N'', CAST(0x0000A1CB00B2C410 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (98, N'asdasdasdk', N'fdgdfgdfg', N'', CAST(0x0000A1CB00B2D5A4 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (99, N'asdasdasdk', N'fdgdfgdfg', N'', CAST(0x0000A1CB00B2FB24 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (100, N'asdasdasdk', N'fdgdfgdfg', N'', CAST(0x0000A1CB00B32D88 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (101, N'asdasdasdk', N'fdgdfgdfg', N'', CAST(0x0000A1CB00B35EC0 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (102, N'asdasdasdk', N'fdgdfgdfg', N'', CAST(0x0000A1CB00B79D14 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (103, N'asdasdasdk', N'fdgdfgdfg', N'', CAST(0x0000A1CB00B7C870 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (104, N'asdasdasdk', N'fdgdfgdfg', N'', CAST(0x0000A1CB00B7ECC4 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (105, N'asdasdasdk', N'fdgdfgdfg', N'', CAST(0x0000A1CB00B82D38 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (106, N'asdasdasdk', N'fdgdfgdfg', N'', CAST(0x0000A1CB00B8B3FC AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (107, N'asdasdasdk', N'fdgdfgdfg', N'', CAST(0x0000A1CB00B8D97C AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (108, N'asdasdasdk', N'fdgdfgdfg', N'', CAST(0x0000A1CB00B8E534 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (109, N'asdasdasdk', N'fdgdfgdfg', N'', CAST(0x0000A1CB00B8FB78 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (110, N'asdasdasdk', N'fdgdfgdfg', N'', CAST(0x0000A1CB00BAE7A8 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (111, N'asdasdasdk', N'fdgdfgdfg', N'', CAST(0x0000A1CB00BB1B38 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (112, N'asdasdasdk', N'fdgdfgdfg', N'', CAST(0x0000A1CB00BB3F8C AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (113, N'asdasdasdk', N'fdgdfgdfg', N'', CAST(0x0000A1CB00BB71F0 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (114, N'asdasdasdk', N'fdgdfgdfg', N'', CAST(0x0000A1CB00C03384 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (115, N'asdasdasdk', N'fdgdfgdfg', N'', CAST(0x0000A1CB00C06A98 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (116, N'asdasdasdk', N'fdgdfgdfg', N'', CAST(0x0000A1CB00C078A8 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (117, N'asdasdasdk', N'fdgdfgdfg', N'', CAST(0x0000A1CB00C09018 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (118, N'alineh', N'aline', N'', CAST(0x0000A1CB00E65410 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (119, N'asdasdasdk', N'fdgdfgdfg', N'', CAST(0x0000A1CB00E6A3C0 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (120, N'asdasdasdk', N'fdgdfgdfg', N'', CAST(0x0000A1CB00E6CA6C AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (121, N'asdasdasdk', N'fdgdfgdfg', N'', CAST(0x0000A1CB00E6D750 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (122, N'asdasdasdk', N'fdgdfgdfg', N'', CAST(0x0000A1CB00E7DB78 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (123, N'asdasdasdk', N'fdgdfgdfg', N'', CAST(0x0000A1CB00E7E988 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (124, N'asdasdasdk', N'fdgdfgdfg', N'', CAST(0x0000A1CB00E81034 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (125, N'asdasdasdk', N'fdgdfgdfg', N'', CAST(0x0000A1CB00E81D18 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (126, N'asdasdasdk', N'fdgdfgdfg', N'', CAST(0x0000A1CB00E94210 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (127, N'asdasdasdk', N'fdgdfgdfg', N'', CAST(0x0000A1CB00E9FC64 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (128, N'asdasdasdk', N'fdgdfgdfg', N'', CAST(0x0000A1CB00EA1F8C AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (129, N'asdasdasdk', N'fdgdfgdfg', N'', CAST(0x0000A1CB00EA2C70 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (130, N'asdasdasdk', N'fdgdfgdfg', N'', CAST(0x0000A1CB00EA6258 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (131, N'asdasdasdk', N'fdgdfgdfg', N'', CAST(0x0000A1CB00EAD404 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (132, N'asdasdasdk', N'fdgdfgdfg', N'', CAST(0x0000A1CB00EAF858 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (133, N'asdasdasdk', N'fdgdfgdfg', N'', CAST(0x0000A1CB00EB32F0 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (134, N'asdasdasdk', N'fdgdfgdfg', N'', CAST(0x0000A1CB00EB46DC AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (135, N'asdasdasdk', N'fdgdfgdfg', N'', CAST(0x0000A1CB00ED5E68 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (136, N'asdasdasdk', N'fdgdfgdfg', N'', CAST(0x0000A1CB00ED68F4 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (137, N'asdasdasdk', N'fdgdfgdfg', N'', CAST(0x0000A1CB00ED8C1C AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (138, N'asdasdasdk', N'fdgdfgdfg', N'', CAST(0x0000A1CB00ED97D4 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (139, N'123456', N'fdgdfgdfg', N'', CAST(0x0000A1CB00FD4328 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (140, N'asdasdasdk', N'fdgdfgdfg', N'', CAST(0x0000A1CB00C68BBC AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (141, N'asdasdasdk', N'fdgdfgdfg', N'', CAST(0x0000A1CB00C699CC AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (142, N'asdasdasdk', N'fdgdfgdfg', N'', CAST(0x0000A1CB00C6C3FC AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (143, N'asdasdasdk', N'fdgdfgdfg', N'', CAST(0x0000A1CB00C6D338 AS DateTime), 1, 1, NULL, 0, 0)
GO
INSERT [dbo].[Template] ([Id], [Name], [Description], [DeviceType], [CreationDate], [CurrentVersion], [UserId], [TemplatePriority], [UseNumberOfCopiesInThePs], [NumberOfCopies]) VALUES (144, N'asdasdasdk', N'fdgdfgdfg', N'', CAST(0x0000A1CB00C71604 AS DateTime), 1, 1, NULL, 0, 0)
GO
SET IDENTITY_INSERT [dbo].[Template] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

GO
INSERT [dbo].[User] ([Id], [Name], [Email], [Login], [Password]) VALUES (1, N'Test User', N'Test User', N'Test User', N'Test User')
GO
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[ColorManagement] ADD  CONSTRAINT [DF_ColorManagement_UseOrange]  DEFAULT ((0)) FOR [PantoneUseOrange]
GO
ALTER TABLE [dbo].[ColorManagement] ADD  CONSTRAINT [DF_ColorManagement_UseViolet]  DEFAULT ((0)) FOR [PantoneUseViolet]
GO
ALTER TABLE [dbo].[ColorManagement] ADD  CONSTRAINT [DF_ColorManagement_UseGreen]  DEFAULT ((0)) FOR [PantoneUseGreen]
GO
ALTER TABLE [dbo].[ColorManagement] ADD  CONSTRAINT [DF_ColorManagement_UseBlackPointCompensation]  DEFAULT ((0)) FOR [UseBlackPointCompensation]
GO
ALTER TABLE [dbo].[ColorManagement] ADD  CONSTRAINT [DF_ColorManagement_UseEmbeddedColorManagement]  DEFAULT ((0)) FOR [UseEmbeddedColorManagement]
GO
ALTER TABLE [dbo].[ColorManagement] ADD  CONSTRAINT [DF_ColorManagement_UseBlackInkOnlyForPureBlacks]  DEFAULT ((0)) FOR [UseBlackInkOnlyForPureBlacks]
GO
ALTER TABLE [dbo].[ColorManagement] ADD  CONSTRAINT [DF_ColorManagement_OverridePDFXRequirements]  DEFAULT ((0)) FOR [OverridePDFXRequirements]
GO
ALTER TABLE [dbo].[ColorManagement] ADD  CONSTRAINT [DF_ColorManagement_UseLateColorManagement]  DEFAULT ((0)) FOR [UseLateColorManagement]
GO
ALTER TABLE [dbo].[ColorManagement] ADD  CONSTRAINT [DF_ColorManagement_PreserveBlackOnlyCmykInputs]  DEFAULT ((0)) FOR [PreserveBlackOnlyCmykInputs]
GO
ALTER TABLE [dbo].[ColorManagement] ADD  CONSTRAINT [DF_ColorManagement_TreatInputColorsWithColorimetricIntent]  DEFAULT ((0)) FOR [TreatInputColorsWithColorimetricIntent]
GO
ALTER TABLE [dbo].[ColorSeparation] ADD  CONSTRAINT [DF_ColorSeparation_UseDefaultJobLut]  DEFAULT ((1)) FOR [UseDefaultJobLut]
GO
ALTER TABLE [dbo].[ColorSeparation] ADD  CONSTRAINT [DF_ColorSeparation_UseSeparationName]  DEFAULT ((1)) FOR [UseSeparationName]
GO
ALTER TABLE [dbo].[IccProfile] ADD  CONSTRAINT [DF_IccProfile_isDefaultProfile]  DEFAULT ((0)) FOR [isDefaultProfile]
GO
ALTER TABLE [dbo].[JobControl] ADD  CONSTRAINT [DF_JobControl_Keep job on Press Controller
KeepJobOnPress]  DEFAULT ((0)) FOR [KeepJobOnPress]
GO
ALTER TABLE [dbo].[JobControl] ADD  CONSTRAINT [DF_JobControl_UseOPIForJobs]  DEFAULT ((0)) FOR [UseOPIForJobs]
GO
ALTER TABLE [dbo].[JobControl] ADD  CONSTRAINT [DF_JobControl_AbortReplacementFilesNotFound]  DEFAULT ((0)) FOR [AbortReplacementFilesNotFound]
GO
ALTER TABLE [dbo].[JobControl] ADD  CONSTRAINT [DF_JobControl_RequireExactFilenameMatch]  DEFAULT ((0)) FOR [RequireExactFilenameMatch]
GO
ALTER TABLE [dbo].[Page] ADD  CONSTRAINT [DF_Page_PadSmallerJobs]  DEFAULT ((0)) FOR [PadSmallerJobs]
GO
ALTER TABLE [dbo].[Page] ADD  CONSTRAINT [DF_Page_IsSharpening]  DEFAULT ((0)) FOR [IsSharpening]
GO
ALTER TABLE [dbo].[Page] ADD  CONSTRAINT [DF_Page_JobsResolution]  DEFAULT ((0)) FOR [UseJobResolution]
GO
ALTER TABLE [dbo].[Page] ADD  CONSTRAINT [DF_Page_AutoRotate]  DEFAULT ((0)) FOR [ScaleAutoRotate]
GO
ALTER TABLE [dbo].[Page] ADD  CONSTRAINT [DF_Page_FitToPage]  DEFAULT ((0)) FOR [ScaleType]
GO
ALTER TABLE [dbo].[Page] ADD  CONSTRAINT [DF_Page_UseMirrorSetting]  DEFAULT ((0)) FOR [UseMirrorSetting]
GO
ALTER TABLE [dbo].[Page] ADD  CONSTRAINT [DF_Page_NegativePrint]  DEFAULT ((0)) FOR [OrientationNegativePrint]
GO
ALTER TABLE [dbo].[Page] ADD  CONSTRAINT [DF_Page_OrientationMirror]  DEFAULT ((0)) FOR [OrientationMirror]
GO
ALTER TABLE [dbo].[Page] ADD  CONSTRAINT [DF_Page_LineThinning]  DEFAULT ((0)) FOR [CustomLineThinning]
GO
ALTER TABLE [dbo].[Separation] ADD  CONSTRAINT [DF_Separation_OverPrintBlack]  DEFAULT ((0)) FOR [OverPrintBlack]
GO
ALTER TABLE [dbo].[Separation] ADD  CONSTRAINT [DF_Separation_EnableZero]  DEFAULT ((0)) FOR [EnableZeroOverPrint]
GO
ALTER TABLE [dbo].[Separation] ADD  CONSTRAINT [DF_Separation_DropWhiteObjects]  DEFAULT ((0)) FOR [DropWhiteObjects]
GO
ALTER TABLE [dbo].[Separation] ADD  CONSTRAINT [DF_Separation_OverPrintGray]  DEFAULT ((0)) FOR [OverPrintGray]
GO
ALTER TABLE [dbo].[Separation] ADD  CONSTRAINT [DF_Separation_UseContinuousColorCalibration]  DEFAULT ((0)) FOR [UseContinuousColorCalibration]
GO
ALTER TABLE [dbo].[Separation] ADD  CONSTRAINT [DF_Separation_UseLightInksIfAvailable]  DEFAULT ((0)) FOR [UseLightInksIfAvailable]
GO
ALTER TABLE [dbo].[AdditionalSheet]  WITH CHECK ADD  CONSTRAINT [FK_AdditionalSheet_Template] FOREIGN KEY([TemplateId])
REFERENCES [dbo].[Template] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AdditionalSheet] CHECK CONSTRAINT [FK_AdditionalSheet_Template]
GO
ALTER TABLE [dbo].[ColorManagement]  WITH CHECK ADD  CONSTRAINT [FK_ColorManagement_IccProfile_CMYK_Input] FOREIGN KEY([CmykInputProfile])
REFERENCES [dbo].[IccProfile] ([Id])
GO
ALTER TABLE [dbo].[ColorManagement] CHECK CONSTRAINT [FK_ColorManagement_IccProfile_CMYK_Input]
GO
ALTER TABLE [dbo].[ColorManagement]  WITH CHECK ADD  CONSTRAINT [FK_ColorManagement_IccProfile_Emulation] FOREIGN KEY([EmulationProfile])
REFERENCES [dbo].[IccProfile] ([Id])
GO
ALTER TABLE [dbo].[ColorManagement] CHECK CONSTRAINT [FK_ColorManagement_IccProfile_Emulation]
GO
ALTER TABLE [dbo].[ColorManagement]  WITH CHECK ADD  CONSTRAINT [FK_ColorManagement_IccProfile_Emulation_Rendering] FOREIGN KEY([EmulationRenderingIntent])
REFERENCES [dbo].[IccProfile] ([Id])
GO
ALTER TABLE [dbo].[ColorManagement] CHECK CONSTRAINT [FK_ColorManagement_IccProfile_Emulation_Rendering]
GO
ALTER TABLE [dbo].[ColorManagement]  WITH CHECK ADD  CONSTRAINT [FK_ColorManagement_IccProfile_Gray_Input] FOREIGN KEY([GrayInputProfile])
REFERENCES [dbo].[IccProfile] ([Id])
GO
ALTER TABLE [dbo].[ColorManagement] CHECK CONSTRAINT [FK_ColorManagement_IccProfile_Gray_Input]
GO
ALTER TABLE [dbo].[ColorManagement]  WITH CHECK ADD  CONSTRAINT [FK_ColorManagement_IccProfile_Pantone_CMYK_Press] FOREIGN KEY([PantoneCmykPressProfile])
REFERENCES [dbo].[IccProfile] ([Id])
GO
ALTER TABLE [dbo].[ColorManagement] CHECK CONSTRAINT [FK_ColorManagement_IccProfile_Pantone_CMYK_Press]
GO
ALTER TABLE [dbo].[ColorManagement]  WITH CHECK ADD  CONSTRAINT [FK_ColorManagement_IccProfile_PressOut] FOREIGN KEY([PressOutputProfile])
REFERENCES [dbo].[IccProfile] ([Id])
GO
ALTER TABLE [dbo].[ColorManagement] CHECK CONSTRAINT [FK_ColorManagement_IccProfile_PressOut]
GO
ALTER TABLE [dbo].[ColorManagement]  WITH CHECK ADD  CONSTRAINT [FK_ColorManagement_IccProfile_RGB_Input] FOREIGN KEY([RgbInputProfile])
REFERENCES [dbo].[IccProfile] ([Id])
GO
ALTER TABLE [dbo].[ColorManagement] CHECK CONSTRAINT [FK_ColorManagement_IccProfile_RGB_Input]
GO
ALTER TABLE [dbo].[ColorManagement]  WITH CHECK ADD  CONSTRAINT [FK_ColorManagement_Template] FOREIGN KEY([TemplateId])
REFERENCES [dbo].[Template] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ColorManagement] CHECK CONSTRAINT [FK_ColorManagement_Template]
GO
ALTER TABLE [dbo].[ColorSeparation]  WITH CHECK ADD  CONSTRAINT [FK_ColorSeparation_Separation] FOREIGN KEY([SeparationId])
REFERENCES [dbo].[Separation] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ColorSeparation] CHECK CONSTRAINT [FK_ColorSeparation_Separation]
GO
ALTER TABLE [dbo].[ColorSeparation]  WITH CHECK ADD  CONSTRAINT [FK_ColorSeparation_SeparationSpecificLut] FOREIGN KEY([SeparationSpecificLutId])
REFERENCES [dbo].[SeparationSpecificLut] ([Id])
GO
ALTER TABLE [dbo].[ColorSeparation] CHECK CONSTRAINT [FK_ColorSeparation_SeparationSpecificLut]
GO
ALTER TABLE [dbo].[ColorSeparationAlias]  WITH CHECK ADD  CONSTRAINT [FK_ColorSeparationAlias_ColorSeparation] FOREIGN KEY([ColorSeparationId])
REFERENCES [dbo].[ColorSeparation] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ColorSeparationAlias] CHECK CONSTRAINT [FK_ColorSeparationAlias_ColorSeparation]
GO
ALTER TABLE [dbo].[IccProfile]  WITH CHECK ADD  CONSTRAINT [FK_IccProfile_PrintServiceProvider] FOREIGN KEY([PspId])
REFERENCES [dbo].[PrintServiceProvider] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[IccProfile] CHECK CONSTRAINT [FK_IccProfile_PrintServiceProvider]
GO
ALTER TABLE [dbo].[JobControl]  WITH CHECK ADD  CONSTRAINT [FK_JobControl_JobDestination] FOREIGN KEY([JobDestinationId])
REFERENCES [dbo].[JobDestination] ([Id])
GO
ALTER TABLE [dbo].[JobControl] CHECK CONSTRAINT [FK_JobControl_JobDestination]
GO
ALTER TABLE [dbo].[JobControl]  WITH CHECK ADD  CONSTRAINT [FK_JobControl_SubstituteFont] FOREIGN KEY([SubstituteFontId])
REFERENCES [dbo].[SubstituteFont] ([Id])
GO
ALTER TABLE [dbo].[JobControl] CHECK CONSTRAINT [FK_JobControl_SubstituteFont]
GO
ALTER TABLE [dbo].[JobControl]  WITH CHECK ADD  CONSTRAINT [FK_JobControl_Template] FOREIGN KEY([TemplateId])
REFERENCES [dbo].[Template] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[JobControl] CHECK CONSTRAINT [FK_JobControl_Template]
GO
ALTER TABLE [dbo].[JobDestination]  WITH CHECK ADD  CONSTRAINT [FK_JobDestination_PrintServiceProvider] FOREIGN KEY([PspId])
REFERENCES [dbo].[PrintServiceProvider] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[JobDestination] CHECK CONSTRAINT [FK_JobDestination_PrintServiceProvider]
GO
ALTER TABLE [dbo].[OPIImagesLocation]  WITH CHECK ADD  CONSTRAINT [FK_OPIImagesLocation_JobControl] FOREIGN KEY([JobControlId])
REFERENCES [dbo].[JobControl] ([Id])
GO
ALTER TABLE [dbo].[OPIImagesLocation] CHECK CONSTRAINT [FK_OPIImagesLocation_JobControl]
GO
ALTER TABLE [dbo].[OPIImagesLocation]  WITH CHECK ADD  CONSTRAINT [FK_OPIImagesLocation_PrintServiceProvider] FOREIGN KEY([PspId])
REFERENCES [dbo].[PrintServiceProvider] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OPIImagesLocation] CHECK CONSTRAINT [FK_OPIImagesLocation_PrintServiceProvider]
GO
ALTER TABLE [dbo].[Page]  WITH CHECK ADD  CONSTRAINT [FK_Page_DefaultPageSize] FOREIGN KEY([DefaultPageSizeId])
REFERENCES [dbo].[DefaultPageSize] ([Id])
GO
ALTER TABLE [dbo].[Page] CHECK CONSTRAINT [FK_Page_DefaultPageSize]
GO
ALTER TABLE [dbo].[Page]  WITH CHECK ADD  CONSTRAINT [FK_Page_Template] FOREIGN KEY([TemplateId])
REFERENCES [dbo].[Template] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Page] CHECK CONSTRAINT [FK_Page_Template]
GO
ALTER TABLE [dbo].[Separation]  WITH CHECK ADD  CONSTRAINT [FK_Separation_Template] FOREIGN KEY([TemplateId])
REFERENCES [dbo].[Template] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Separation] CHECK CONSTRAINT [FK_Separation_Template]
GO
ALTER TABLE [dbo].[SubstituteFont]  WITH CHECK ADD  CONSTRAINT [FK_SubstituteFont_PrintServiceProvider] FOREIGN KEY([PspId])
REFERENCES [dbo].[PrintServiceProvider] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SubstituteFont] CHECK CONSTRAINT [FK_SubstituteFont_PrintServiceProvider]
GO
ALTER TABLE [dbo].[Substrate]  WITH CHECK ADD  CONSTRAINT [FK_Substrate_Template] FOREIGN KEY([TemplateId])
REFERENCES [dbo].[Template] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Substrate] CHECK CONSTRAINT [FK_Substrate_Template]
GO
ALTER TABLE [dbo].[SubstrateException]  WITH CHECK ADD  CONSTRAINT [FK_SubstrateException_Substrate1] FOREIGN KEY([SubstrateId])
REFERENCES [dbo].[Substrate] ([Id])
GO
ALTER TABLE [dbo].[SubstrateException] CHECK CONSTRAINT [FK_SubstrateException_Substrate1]
GO
ALTER TABLE [dbo].[SubstrateException]  WITH CHECK ADD  CONSTRAINT [FK_SubstrateException_SubstrateCatalog] FOREIGN KEY([SubstrateCatalogId])
REFERENCES [dbo].[SubstrateCatalog] ([Id])
GO
ALTER TABLE [dbo].[SubstrateException] CHECK CONSTRAINT [FK_SubstrateException_SubstrateCatalog]
GO
ALTER TABLE [dbo].[Template]  WITH CHECK ADD  CONSTRAINT [FK_Template_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Template] CHECK CONSTRAINT [FK_Template_User]
GO
USE [master]
GO
ALTER DATABASE [ticketmanager_acceptance] SET  READ_WRITE 
GO
