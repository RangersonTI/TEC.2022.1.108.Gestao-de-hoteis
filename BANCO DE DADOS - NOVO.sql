USE [master]
GO
/****** Object:  Database [GESTAO_HOTEL]    Script Date: 12/06/2023 14:31:11 ******/
CREATE DATABASE [GESTAO_HOTEL]
GO
ALTER DATABASE [GESTAO_HOTEL] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GESTAO_HOTEL].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GESTAO_HOTEL] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GESTAO_HOTEL] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GESTAO_HOTEL] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GESTAO_HOTEL] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GESTAO_HOTEL] SET ARITHABORT OFF 
GO
ALTER DATABASE [GESTAO_HOTEL] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [GESTAO_HOTEL] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GESTAO_HOTEL] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GESTAO_HOTEL] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GESTAO_HOTEL] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GESTAO_HOTEL] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GESTAO_HOTEL] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GESTAO_HOTEL] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GESTAO_HOTEL] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GESTAO_HOTEL] SET  ENABLE_BROKER 
GO
ALTER DATABASE [GESTAO_HOTEL] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GESTAO_HOTEL] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GESTAO_HOTEL] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GESTAO_HOTEL] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GESTAO_HOTEL] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GESTAO_HOTEL] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GESTAO_HOTEL] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GESTAO_HOTEL] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [GESTAO_HOTEL] SET  MULTI_USER 
GO
ALTER DATABASE [GESTAO_HOTEL] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GESTAO_HOTEL] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GESTAO_HOTEL] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GESTAO_HOTEL] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [GESTAO_HOTEL] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [GESTAO_HOTEL] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [GESTAO_HOTEL] SET QUERY_STORE = OFF
GO
USE [GESTAO_HOTEL]
GO
/****** Object:  Schema [CHECKIN]    Script Date: 12/06/2023 14:31:11 ******/
CREATE SCHEMA [CHECKIN]
GO
/****** Object:  Schema [CHECKOUT]    Script Date: 12/06/2023 14:31:11 ******/
CREATE SCHEMA [CHECKOUT]
GO
USE [GESTAO_HOTEL]
GO
/****** Object:  Sequence [CHECKIN].[COUNTBY1]    Script Date: 12/06/2023 14:31:11 ******/
CREATE SEQUENCE [CHECKIN].[COUNTBY1] 
 AS [bigint]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -9223372036854775808
 MAXVALUE 9223372036854775807
 CACHE 
GO
USE [GESTAO_HOTEL]
GO
/****** Object:  Sequence [CHECKOUT].[COUNTBY1]    Script Date: 12/06/2023 14:31:11 ******/
CREATE SEQUENCE [CHECKOUT].[COUNTBY1] 
 AS [bigint]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -9223372036854775808
 MAXVALUE 9223372036854775807
 CACHE 
GO
/****** Object:  Table [dbo].[CLASSE]    Script Date: 12/06/2023 14:31:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLASSE](
	[ID] [int] NOT NULL,
	[CLASSE] [varchar](100) NOT NULL,
 CONSTRAINT [PK_CLASSE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CLIENTE]    Script Date: 12/06/2023 14:31:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLIENTE](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NOME] [varchar](150) NOT NULL,
	[CPF] [varchar](15) NOT NULL,
	[ID_SEXO] [int] NOT NULL,
	[DATA_NASCIMENTO] [date] NOT NULL,
	[EMAIL] [varchar](50) NOT NULL,
	[CELULAR] [varchar](15) NOT NULL,
	[ENDERECO] [varchar](50) NOT NULL,
 CONSTRAINT [PK_CLIENTE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CONTAS_A_PAGAR]    Script Date: 12/06/2023 14:31:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONTAS_A_PAGAR](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DESCRICAO] [varchar](500) NULL,
	[VALOR] [decimal](10,2) NOT NULL,
	[ID_CLIENTE] [int] NULL,
	[ID_FUNCIONARIO] [int] NOT NULL,
	[DATA_VENCIMENTO] [date] NOT NULL,
	[PAGAR] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CONTAS_A_RECEBER]    Script Date: 12/06/2023 14:31:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONTAS_A_RECEBER](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DESCRICAO] [varchar](500) NULL,
	[VALOR] [decimal](10,2) NOT NULL,
	[ID_CLIENTE] [int] NOT NULL,
	[ID_FUNCIONARIO] [int] NOT NULL,
	[DATA_VENCIMENTO] [date] NOT NULL,
	[RECEBIDO] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FUNCIONARIO]    Script Date: 12/06/2023 14:31:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FUNCIONARIO](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CPF] [varchar](15) NOT NULL,
	[NOME] [varchar](150) NOT NULL,
	[EMAIL] [varchar](50) NOT NULL,
	[CELULAR] [varchar](15) NOT NULL,
	[ENDERECO] [varchar](150) NOT NULL,
	[NOME_USUARIO] [varchar](50) NOT NULL,
	[SENHA] [varchar](56) NOT NULL,
	[ID_SEXO] [int] NOT NULL,
	[ATIVO] [bit] NOT NULL,
	[DATA_NASCIMENTO] [date] NOT NULL,
 CONSTRAINT [PK_FUNCIONARIO] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FUNCIONARIO_GRUPO_FUNCIONARIO]    Script Date: 12/06/2023 14:31:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FUNCIONARIO_GRUPO_FUNCIONARIO](
	[ID_FUNCIONARIO] [int] NOT NULL,
	[ID_GRUPO_FUNCIONARIO] [int] NOT NULL,
 CONSTRAINT [PK_FUNCIONARIO_GRUPO_FUNCIONARIO] PRIMARY KEY CLUSTERED 
(
	[ID_FUNCIONARIO] ASC,
	[ID_GRUPO_FUNCIONARIO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GRUPO_FUNCIONARIO]    Script Date: 12/06/2023 14:31:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GRUPO_FUNCIONARIO](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NOME_GRUPO] [varchar](150) NOT NULL,
 CONSTRAINT [PK_GRUPO_FUNCIONARIO] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PAGAMENTO]    Script Date: 12/06/2023 14:31:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PAGAMENTO](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FORMA_PAGAMENTO] [varchar](50) NOT NULL,
 CONSTRAINT [PK_PAGAMENTO] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PERMISSAO]    Script Date: 12/06/2023 14:31:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PERMISSAO](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[DESCRICAO] [varchar](150) NOT NULL,
 CONSTRAINT [PK_PERMISSAO] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PERMISSAO_GRUPO_FUNCIONARIO]    Script Date: 12/06/2023 14:31:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PERMISSAO_GRUPO_FUNCIONARIO](
	[ID_PERMISSAO] [int] NOT NULL,
	[ID_GRUPO_FUNCIONARIO] [int] NOT NULL,
 CONSTRAINT [PK_PERMISSAO_GRUPO_FUNCIONARIO] PRIMARY KEY CLUSTERED 
(
	[ID_PERMISSAO] ASC,
	[ID_GRUPO_FUNCIONARIO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUARTO]    Script Date: 12/06/2023 14:31:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUARTO](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NUMERO] [varchar](10) NOT NULL,
	[ID_CLASSE] [int] NOT NULL,
	[DESCRICAO] [varchar](150) NOT NULL,
	[VALOR_DIARIA] [decimal](10,2) NOT NULL,
	[ANDAR] [varchar](20) NULL,
	[ID_STATUS] [int] NOT NULL,
 CONSTRAINT [PK_QUARTO] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RESERVA]    Script Date: 12/06/2023 14:31:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RESERVA](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DT_ENT_RESERVA] [date] NULL,
	[DT_SAI_RESERVA] [date] NULL,
	[VALOR_TOTAL] [decimal](10,2) NULL,
	[ID_CLIENTE] [int] NOT NULL,
	[QTD_HOSPEDES] [int] NULL,
	[ID_PAGAMENTO] [int] NOT NULL,
	[ID_FUNCIONARIO] [int] NOT NULL,
	[OBS_RESERVA] [varchar](500) NULL,
	[VALOR_ENTRADA] [decimal](10,2) NULL,
	[DATA_CHECKIN] [date] NULL,
	[DATA_CHECKOUT] [date] NULL,
	[OBS_CHECKIN] [varchar](500) NULL,
	[OBS_CHECKOUT] [varchar](500) NULL,
	[DATA_RESERVA] [date] NOT NULL,
	[VALOR_RESTANTE] [decimal](10,2) NULL,
 CONSTRAINT [PK_RESERVA] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RESERVA_QUARTO]    Script Date: 12/06/2023 14:31:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RESERVA_QUARTO](
	[ID_RESERVA] [int] NOT NULL,
	[ID_QUARTO] [int] NOT NULL,
 CONSTRAINT [PK_RESERVA_QUARTO] PRIMARY KEY CLUSTERED 
(
	[ID_RESERVA] ASC,
	[ID_QUARTO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SEXO]    Script Date: 12/06/2023 14:31:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SEXO](
	[ID] [int] NOT NULL,
	[SEXO] [varchar](30) NOT NULL,
 CONSTRAINT [PK_SEXO] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[STATUS]    Script Date: 12/06/2023 14:31:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STATUS](
	[ID] [int] NOT NULL,
	[STATUS] [varchar](30) NOT NULL,
 CONSTRAINT [PK_STATUS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IX_FUNCIONARIO_GRUPO_FUNCIONARIO]    Script Date: 12/06/2023 14:31:11 ******/
CREATE NONCLUSTERED INDEX [IX_FUNCIONARIO_GRUPO_FUNCIONARIO] ON [dbo].[FUNCIONARIO_GRUPO_FUNCIONARIO]
(
	[ID_FUNCIONARIO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CLIENTE]  WITH CHECK ADD  CONSTRAINT [FK_CLIENTE_SEXO] FOREIGN KEY([ID_SEXO])
REFERENCES [dbo].[SEXO] ([ID])
GO
ALTER TABLE [dbo].[CLIENTE] CHECK CONSTRAINT [FK_CLIENTE_SEXO]
GO
ALTER TABLE [dbo].[CONTAS_A_PAGAR]  WITH CHECK ADD  CONSTRAINT [FK_CONTAS_A_PAGAR_CLIENTE] FOREIGN KEY([ID_CLIENTE])
REFERENCES [dbo].[CLIENTE] ([ID])
GO
ALTER TABLE [dbo].[CONTAS_A_PAGAR] CHECK CONSTRAINT [FK_CONTAS_A_PAGAR_CLIENTE]
GO
ALTER TABLE [dbo].[CONTAS_A_PAGAR]  WITH CHECK ADD  CONSTRAINT [FK_CONTAS_A_PAGAR_FUNCIONARIO] FOREIGN KEY([ID_FUNCIONARIO])
REFERENCES [dbo].[FUNCIONARIO] ([ID])
GO
ALTER TABLE [dbo].[CONTAS_A_PAGAR] CHECK CONSTRAINT [FK_CONTAS_A_PAGAR_FUNCIONARIO]
GO
ALTER TABLE [dbo].[CONTAS_A_RECEBER]  WITH CHECK ADD  CONSTRAINT [FK_CONTAS_A_RECEBER_CLIENTE] FOREIGN KEY([ID_CLIENTE])
REFERENCES [dbo].[CLIENTE] ([ID])
GO
ALTER TABLE [dbo].[CONTAS_A_RECEBER] CHECK CONSTRAINT [FK_CONTAS_A_RECEBER_CLIENTE]
GO
ALTER TABLE [dbo].[CONTAS_A_RECEBER]  WITH CHECK ADD  CONSTRAINT [FK_CONTAS_A_RECEBER_FUNCIONARIO] FOREIGN KEY([ID_FUNCIONARIO])
REFERENCES [dbo].[FUNCIONARIO] ([ID])
GO
ALTER TABLE [dbo].[CONTAS_A_RECEBER] CHECK CONSTRAINT [FK_CONTAS_A_RECEBER_FUNCIONARIO]
GO
ALTER TABLE [dbo].[FUNCIONARIO]  WITH CHECK ADD  CONSTRAINT [FK_FUNCIONARIO_SEXO] FOREIGN KEY([ID_SEXO])
REFERENCES [dbo].[SEXO] ([ID])
GO
ALTER TABLE [dbo].[FUNCIONARIO] CHECK CONSTRAINT [FK_FUNCIONARIO_SEXO]
GO
ALTER TABLE [dbo].[FUNCIONARIO_GRUPO_FUNCIONARIO]  WITH CHECK ADD  CONSTRAINT [FK_FUNCIONARIO_GRUPO_FUNCIONARIO_FUNCIONARIO] FOREIGN KEY([ID_FUNCIONARIO])
REFERENCES [dbo].[FUNCIONARIO] ([ID])
GO
ALTER TABLE [dbo].[FUNCIONARIO_GRUPO_FUNCIONARIO] CHECK CONSTRAINT [FK_FUNCIONARIO_GRUPO_FUNCIONARIO_FUNCIONARIO]
GO
ALTER TABLE [dbo].[FUNCIONARIO_GRUPO_FUNCIONARIO]  WITH CHECK ADD  CONSTRAINT [FK_FUNCIONARIO_GRUPO_FUNCIONARIO_GRUPO_FUNCIONARIO] FOREIGN KEY([ID_GRUPO_FUNCIONARIO])
REFERENCES [dbo].[GRUPO_FUNCIONARIO] ([ID])
GO
ALTER TABLE [dbo].[FUNCIONARIO_GRUPO_FUNCIONARIO] CHECK CONSTRAINT [FK_FUNCIONARIO_GRUPO_FUNCIONARIO_GRUPO_FUNCIONARIO]
GO
ALTER TABLE [dbo].[PERMISSAO_GRUPO_FUNCIONARIO]  WITH CHECK ADD  CONSTRAINT [FK_PERMISSAO_GRUPO_FUNCIONARIO_GRUPO_FUNCIONARIO] FOREIGN KEY([ID_GRUPO_FUNCIONARIO])
REFERENCES [dbo].[GRUPO_FUNCIONARIO] ([ID])
GO
ALTER TABLE [dbo].[PERMISSAO_GRUPO_FUNCIONARIO] CHECK CONSTRAINT [FK_PERMISSAO_GRUPO_FUNCIONARIO_GRUPO_FUNCIONARIO]
GO
ALTER TABLE [dbo].[PERMISSAO_GRUPO_FUNCIONARIO]  WITH CHECK ADD  CONSTRAINT [FK_PERMISSAO_GRUPO_FUNCIONARIO_PERMISSAO] FOREIGN KEY([ID_PERMISSAO])
REFERENCES [dbo].[PERMISSAO] ([ID])
GO
ALTER TABLE [dbo].[PERMISSAO_GRUPO_FUNCIONARIO] CHECK CONSTRAINT [FK_PERMISSAO_GRUPO_FUNCIONARIO_PERMISSAO]
GO
USE [master]
GO
ALTER DATABASE [GESTAO_HOTEL] SET  READ_WRITE 
GO
