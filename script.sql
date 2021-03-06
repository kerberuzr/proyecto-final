USE [master]
GO
/****** Object:  Database [inventario]    Script Date: 2018-11-30 12:04:11 AM ******/
CREATE DATABASE [inventario]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'inventario', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\inventario.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'inventario_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\inventario_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [inventario] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [inventario].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [inventario] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [inventario] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [inventario] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [inventario] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [inventario] SET ARITHABORT OFF 
GO
ALTER DATABASE [inventario] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [inventario] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [inventario] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [inventario] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [inventario] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [inventario] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [inventario] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [inventario] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [inventario] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [inventario] SET  DISABLE_BROKER 
GO
ALTER DATABASE [inventario] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [inventario] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [inventario] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [inventario] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [inventario] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [inventario] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [inventario] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [inventario] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [inventario] SET  MULTI_USER 
GO
ALTER DATABASE [inventario] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [inventario] SET DB_CHAINING OFF 
GO
ALTER DATABASE [inventario] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [inventario] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [inventario] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [inventario] SET QUERY_STORE = OFF
GO
USE [inventario]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [inventario]
GO
/****** Object:  Table [dbo].[empleado]    Script Date: 2018-11-30 12:04:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empleado](
	[idempleado] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[apellido] [varchar](50) NULL,
	[sexo] [char](10) NULL,
 CONSTRAINT [PK_empleado] PRIMARY KEY CLUSTERED 
(
	[idempleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[producto]    Script Date: 2018-11-30 12:04:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producto](
	[idproducto] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[precio] [int] NULL,
	[provedor] [int] NULL,
	[cantidad] [int] NULL,
 CONSTRAINT [PK_producto] PRIMARY KEY CLUSTERED 
(
	[idproducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[provedor]    Script Date: 2018-11-30 12:04:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[provedor](
	[idprovedor] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[tipo] [varchar](50) NULL,
 CONSTRAINT [PK_provedor] PRIMARY KEY CLUSTERED 
(
	[idprovedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[empleado] ON 

INSERT [dbo].[empleado] ([idempleado], [nombre], [apellido], [sexo]) VALUES (1, N'pedro', N'soza', N'm         ')
INSERT [dbo].[empleado] ([idempleado], [nombre], [apellido], [sexo]) VALUES (2, N'luis', N'collado', N'm         ')
INSERT [dbo].[empleado] ([idempleado], [nombre], [apellido], [sexo]) VALUES (3, N'maria', N'disla', N'f         ')
INSERT [dbo].[empleado] ([idempleado], [nombre], [apellido], [sexo]) VALUES (4, N'junior', N'suarez', N'm         ')
INSERT [dbo].[empleado] ([idempleado], [nombre], [apellido], [sexo]) VALUES (5, N'julisa', N'figuerreo', N'f         ')
INSERT [dbo].[empleado] ([idempleado], [nombre], [apellido], [sexo]) VALUES (6, N'daniel', N'montez', N'm         ')
INSERT [dbo].[empleado] ([idempleado], [nombre], [apellido], [sexo]) VALUES (7, N'carlos', N'zorrila', N'm         ')
INSERT [dbo].[empleado] ([idempleado], [nombre], [apellido], [sexo]) VALUES (8, N'michelle', N'cepeda', N'f         ')
INSERT [dbo].[empleado] ([idempleado], [nombre], [apellido], [sexo]) VALUES (9, N'juan', N'division', N'm         ')
INSERT [dbo].[empleado] ([idempleado], [nombre], [apellido], [sexo]) VALUES (10, N'joel', N'lopez', N'm         ')
SET IDENTITY_INSERT [dbo].[empleado] OFF
SET IDENTITY_INSERT [dbo].[producto] ON 

INSERT [dbo].[producto] ([idproducto], [nombre], [precio], [provedor], [cantidad]) VALUES (1, N'coca cola', 25, 10, 25)
INSERT [dbo].[producto] ([idproducto], [nombre], [precio], [provedor], [cantidad]) VALUES (2, N'salami', 45, 2, 100)
INSERT [dbo].[producto] ([idproducto], [nombre], [precio], [provedor], [cantidad]) VALUES (3, N'leche', 50, 1, 41)
INSERT [dbo].[producto] ([idproducto], [nombre], [precio], [provedor], [cantidad]) VALUES (4, N'pescado', 75, 9, 64)
INSERT [dbo].[producto] ([idproducto], [nombre], [precio], [provedor], [cantidad]) VALUES (5, N'salami especial', 15, 4, 74)
INSERT [dbo].[producto] ([idproducto], [nombre], [precio], [provedor], [cantidad]) VALUES (6, N'leche condesada', 62, 1, 34)
INSERT [dbo].[producto] ([idproducto], [nombre], [precio], [provedor], [cantidad]) VALUES (7, N'queso', 35, 1, 43)
INSERT [dbo].[producto] ([idproducto], [nombre], [precio], [provedor], [cantidad]) VALUES (8, N'coca cola', 15, 10, 36)
INSERT [dbo].[producto] ([idproducto], [nombre], [precio], [provedor], [cantidad]) VALUES (9, N'latop', 25000, 4, 5)
INSERT [dbo].[producto] ([idproducto], [nombre], [precio], [provedor], [cantidad]) VALUES (10, N'pc', 17000, 5, 6)
SET IDENTITY_INSERT [dbo].[producto] OFF
SET IDENTITY_INSERT [dbo].[provedor] ON 

INSERT [dbo].[provedor] ([idprovedor], [nombre], [tipo]) VALUES (1, N'palmala', N'lechera')
INSERT [dbo].[provedor] ([idprovedor], [nombre], [tipo]) VALUES (2, N'induveca', N'embutidos')
INSERT [dbo].[provedor] ([idprovedor], [nombre], [tipo]) VALUES (3, N'rica', N'lechera')
INSERT [dbo].[provedor] ([idprovedor], [nombre], [tipo]) VALUES (4, N'cemcomsa', N'tecnologia')
INSERT [dbo].[provedor] ([idprovedor], [nombre], [tipo]) VALUES (5, N'corripio', N'tecnologia')
INSERT [dbo].[provedor] ([idprovedor], [nombre], [tipo]) VALUES (6, N'texaco', N'combustible')
INSERT [dbo].[provedor] ([idprovedor], [nombre], [tipo]) VALUES (7, N'dos pinos', N'lechera')
INSERT [dbo].[provedor] ([idprovedor], [nombre], [tipo]) VALUES (8, N'hermanos roble', N'madera')
INSERT [dbo].[provedor] ([idprovedor], [nombre], [tipo]) VALUES (9, N'industria pes', N'pesca')
INSERT [dbo].[provedor] ([idprovedor], [nombre], [tipo]) VALUES (10, N'coca cola', N'bebida')
SET IDENTITY_INSERT [dbo].[provedor] OFF
ALTER TABLE [dbo].[producto]  WITH CHECK ADD  CONSTRAINT [FK_producto_provedor] FOREIGN KEY([provedor])
REFERENCES [dbo].[provedor] ([idprovedor])
GO
ALTER TABLE [dbo].[producto] CHECK CONSTRAINT [FK_producto_provedor]
GO
USE [master]
GO
ALTER DATABASE [inventario] SET  READ_WRITE 
GO
