USE [master]
GO
/****** Object:  Database [AlmacenVideoJuegos]    Script Date: 6/10/2022 15:30:40 ******/
CREATE DATABASE [AlmacenVideoJuegos]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AlmacenVideoJuegos', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\AlmacenVideoJuegos.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AlmacenVideoJuegos_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\AlmacenVideoJuegos_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [AlmacenVideoJuegos] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AlmacenVideoJuegos].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AlmacenVideoJuegos] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AlmacenVideoJuegos] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AlmacenVideoJuegos] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AlmacenVideoJuegos] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AlmacenVideoJuegos] SET ARITHABORT OFF 
GO
ALTER DATABASE [AlmacenVideoJuegos] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AlmacenVideoJuegos] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AlmacenVideoJuegos] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AlmacenVideoJuegos] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AlmacenVideoJuegos] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AlmacenVideoJuegos] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AlmacenVideoJuegos] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AlmacenVideoJuegos] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AlmacenVideoJuegos] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AlmacenVideoJuegos] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AlmacenVideoJuegos] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AlmacenVideoJuegos] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AlmacenVideoJuegos] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AlmacenVideoJuegos] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AlmacenVideoJuegos] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AlmacenVideoJuegos] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AlmacenVideoJuegos] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AlmacenVideoJuegos] SET RECOVERY FULL 
GO
ALTER DATABASE [AlmacenVideoJuegos] SET  MULTI_USER 
GO
ALTER DATABASE [AlmacenVideoJuegos] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AlmacenVideoJuegos] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AlmacenVideoJuegos] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AlmacenVideoJuegos] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AlmacenVideoJuegos] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'AlmacenVideoJuegos', N'ON'
GO
ALTER DATABASE [AlmacenVideoJuegos] SET QUERY_STORE = OFF
GO
USE [AlmacenVideoJuegos]
GO
/****** Object:  User [alumno]    Script Date: 6/10/2022 15:30:40 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Videojuego]    Script Date: 6/10/2022 15:30:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Videojuego](
	[IdVideojuego] [int] IDENTITY(1,1) NOT NULL,
	[IdEmpresa] [int] NOT NULL,
	[fechaLanzamiento] [date] NOT NULL,
	[IdCategoria] [int] NOT NULL,
	[Nombre] [varchar](max) NOT NULL,
	[Descripción] [varchar](max) NOT NULL,
	[Logo] [image] NULL,
	[Caratula] [image] NOT NULL,
	[Banner] [image] NULL,
 CONSTRAINT [PK_Videojuego] PRIMARY KEY CLUSTERED 
(
	[IdVideojuego] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [AlmacenVideoJuegos] SET  READ_WRITE 
GO
