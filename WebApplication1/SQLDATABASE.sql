USE [master]
GO
/****** Object:  Database [webDB]    Script Date: 15/01/2022 23:51:10 ******/
CREATE DATABASE [webDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'webDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\webDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'webDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\webDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [webDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [webDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [webDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [webDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [webDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [webDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [webDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [webDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [webDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [webDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [webDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [webDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [webDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [webDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [webDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [webDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [webDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [webDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [webDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [webDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [webDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [webDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [webDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [webDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [webDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [webDB] SET  MULTI_USER 
GO
ALTER DATABASE [webDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [webDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [webDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [webDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [webDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [webDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [webDB] SET QUERY_STORE = OFF
GO
USE [webDB]
GO
/****** Object:  Table [dbo].[iletisim]    Script Date: 15/01/2022 23:51:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[iletisim](
	[iletisimID] [int] IDENTITY(1,1) NOT NULL,
	[iletisimAdSoyad] [nvarchar](50) NULL,
	[iletisimEmail] [nvarchar](50) NULL,
	[iletisimIcerik] [nvarchar](300) NULL,
	[iletisimTarih] [datetime] NULL,
 CONSTRAINT [PK_iletisim] PRIMARY KEY CLUSTERED 
(
	[iletisimID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Makale]    Script Date: 15/01/2022 23:51:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Makale](
	[makaleID] [int] NOT NULL,
	[makaleBaslik] [nvarchar](50) NULL,
	[makaleOzet] [nvarchar](max) NULL,
	[makaleIcerik] [nvarchar](max) NULL,
	[makaleResim] [nvarchar](max) NULL,
	[makaleTarih] [datetime] NULL,
 CONSTRAINT [PK_Makale] PRIMARY KEY CLUSTERED 
(
	[makaleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Odalar]    Script Date: 15/01/2022 23:51:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Odalar](
	[odaID] [int] IDENTITY(1,1) NOT NULL,
	[odaTur] [nvarchar](30) NULL,
	[odaFiyat] [nvarchar](10) NULL,
	[odaDurum] [nvarchar](10) NULL,
	[odaResim] [nvarchar](50) NULL,
 CONSTRAINT [PK_Odalar] PRIMARY KEY CLUSTERED 
(
	[odaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rezervasyon]    Script Date: 15/01/2022 23:51:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rezervasyon](
	[RezID] [int] IDENTITY(1,1) NOT NULL,
	[RezIn] [text] NULL,
	[RezOut] [text] NULL,
	[RezAd] [nvarchar](50) NULL,
	[RezSoyad] [nvarchar](50) NULL,
	[RezSayi] [int] NULL,
	[RezCocuk] [int] NULL,
	[RezTip] [nvarchar](50) NULL,
 CONSTRAINT [PK_Rezervasyon] PRIMARY KEY CLUSTERED 
(
	[RezID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sayfalar]    Script Date: 15/01/2022 23:51:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sayfalar](
	[sayfaID] [int] IDENTITY(1,1) NOT NULL,
	[sayfaBaslik] [nvarchar](10) NULL,
	[sayfaIcerik] [text] NULL,
	[sayfaDurum] [nvarchar](10) NULL,
 CONSTRAINT [PK_Sayfalar] PRIMARY KEY CLUSTERED 
(
	[sayfaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slayder]    Script Date: 15/01/2022 23:51:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slayder](
	[slayderID] [int] NOT NULL,
	[slayderBaslik] [nvarchar](30) NULL,
	[slayderOzet] [nvarchar](50) NULL,
	[slayderResim] [nvarchar](50) NULL,
 CONSTRAINT [PK_Slayder] PRIMARY KEY CLUSTERED 
(
	[slayderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teklifler]    Script Date: 15/01/2022 23:51:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teklifler](
	[teklifID] [int] NOT NULL,
	[teklifBaslik] [nvarchar](20) NULL,
	[teklifListe] [nvarchar](30) NULL,
	[teklifResim] [nvarchar](50) NULL,
 CONSTRAINT [PK_Teklifler] PRIMARY KEY CLUSTERED 
(
	[teklifID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Video]    Script Date: 15/01/2022 23:51:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Video](
	[videoID] [int] NOT NULL,
	[videoBaslik] [nvarchar](30) NULL,
	[videoOzet] [nvarchar](30) NULL,
	[videoLink] [text] NULL,
	[videoBG] [nvarchar](30) NULL,
 CONSTRAINT [PK_Video] PRIMARY KEY CLUSTERED 
(
	[videoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yonetici]    Script Date: 15/01/2022 23:51:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yonetici](
	[yoneticiID] [int] IDENTITY(1,1) NOT NULL,
	[yoneticiAdSoyad] [nvarchar](50) NULL,
	[yoneticiKullanici] [nvarchar](50) NULL,
	[yoneticiSifre] [nvarchar](50) NULL,
 CONSTRAINT [PK_Yonetici] PRIMARY KEY CLUSTERED 
(
	[yoneticiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Makale] ([makaleID], [makaleBaslik], [makaleOzet], [makaleIcerik], [makaleResim], [makaleTarih]) VALUES (1, N'Different a place!', N'Wonderfull a holiday waiting to you', N'resim1eklendi', N'img/about/about_2.png', CAST(N'2022-01-10T16:29:56.640' AS DateTime))
INSERT [dbo].[Makale] ([makaleID], [makaleBaslik], [makaleOzet], [makaleIcerik], [makaleResim], [makaleTarih]) VALUES (2, N'Near the Ayasophia', N'Beautiful Istanbul. For different a vacation experiment you should choose us.', N'resim2 eklendi', N'img/about/about_1.png', CAST(N'2022-01-10T16:31:20.050' AS DateTime))
INSERT [dbo].[Makale] ([makaleID], [makaleBaslik], [makaleOzet], [makaleIcerik], [makaleResim], [makaleTarih]) VALUES (3, N'
Delicious Food', N'We Serve Fresh and
Delicious Food', N'Suscipit libero pretium nullam potenti. Interdum, blandit phasellus consectetuer dolor ornare dapibus enim ut tincidunt rhoncus tellus sollicitudin pede nam maecenas, dolor sem. Neque sollicitudin enim. Dapibus lorem feugiat facilisi faucibus et. Rhoncus.', N'images/kahvalti.png', CAST(N'2022-01-10T17:06:14.247' AS DateTime))
INSERT [dbo].[Makale] ([makaleID], [makaleBaslik], [makaleOzet], [makaleIcerik], [makaleResim], [makaleTarih]) VALUES (4, N'Resim2', N'resim2baslıgı', N'hebelehübele', N'images/kahvalti2.png', CAST(N'2022-01-10T17:08:32.980' AS DateTime))
INSERT [dbo].[Makale] ([makaleID], [makaleBaslik], [makaleOzet], [makaleIcerik], [makaleResim], [makaleTarih]) VALUES (5, N'yilbasi', N'kaşfldsfdsf', N'rqrwtqyuıuıoyerw', N'/sresim/cropped-robotics-week-favicon-1-180x180.png', CAST(N'2022-01-11T20:24:36.467' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Odalar] ON 

INSERT [dbo].[Odalar] ([odaID], [odaTur], [odaFiyat], [odaDurum], [odaResim]) VALUES (1, N'Economic Room', N'150$', N'Bos', N'../images/economic.png')
INSERT [dbo].[Odalar] ([odaID], [odaTur], [odaFiyat], [odaDurum], [odaResim]) VALUES (2, N'Cheap Room', N'200$', N'Bos', N'../images/standart.png')
INSERT [dbo].[Odalar] ([odaID], [odaTur], [odaFiyat], [odaDurum], [odaResim]) VALUES (3, N'Deluxe Room', N'250$', N'Bos', N'../images/family.png')
INSERT [dbo].[Odalar] ([odaID], [odaTur], [odaFiyat], [odaDurum], [odaResim]) VALUES (4, N'King Room', N'300$', N'Bos', N'../images/suit.png')
INSERT [dbo].[Odalar] ([odaID], [odaTur], [odaFiyat], [odaDurum], [odaResim]) VALUES (6, N'Yeni Oda', N'800$', N'Bos', N'../images/1.jpg')
SET IDENTITY_INSERT [dbo].[Odalar] OFF
GO
SET IDENTITY_INSERT [dbo].[Rezervasyon] ON 

INSERT [dbo].[Rezervasyon] ([RezID], [RezIn], [RezOut], [RezAd], [RezSoyad], [RezSayi], [RezCocuk], [RezTip]) VALUES (4, N'15/01/2022 00:00:00', N'17/01/2022 00:00:00', N'Taha', N'Efe', 1, 1, N'Standart Room')
SET IDENTITY_INSERT [dbo].[Rezervasyon] OFF
GO
SET IDENTITY_INSERT [dbo].[Sayfalar] ON 

INSERT [dbo].[Sayfalar] ([sayfaID], [sayfaBaslik], [sayfaIcerik], [sayfaDurum]) VALUES (1, N'Home', N'Default', N'Aktif')
INSERT [dbo].[Sayfalar] ([sayfaID], [sayfaBaslik], [sayfaIcerik], [sayfaDurum]) VALUES (2, N'Rooms', N'rooms', N'Aktif')
INSERT [dbo].[Sayfalar] ([sayfaID], [sayfaBaslik], [sayfaIcerik], [sayfaDurum]) VALUES (3, N'About', N'about', N'Aktif')
SET IDENTITY_INSERT [dbo].[Sayfalar] OFF
GO
INSERT [dbo].[Slayder] ([slayderID], [slayderBaslik], [slayderOzet], [slayderResim]) VALUES (1, N'Istanbul Holiday Hotel', N'Discover Ayasofya and Istanbul with us', N'images/banner2.png')
INSERT [dbo].[Slayder] ([slayderID], [slayderBaslik], [slayderOzet], [slayderResim]) VALUES (2, N'Life is Beautiful', N'Unlock to enjoy the view of Istanbul Holiday', N'images/banner.png')
INSERT [dbo].[Slayder] ([slayderID], [slayderBaslik], [slayderOzet], [slayderResim]) VALUES (3, N'Güncelleme', N'Taşınıyoruz', N'../kresim/banner22-tn.png')
GO
INSERT [dbo].[Teklifler] ([teklifID], [teklifBaslik], [teklifListe], [teklifResim]) VALUES (1, N'The Best Option', N'Sea, Free Drink, Lux Rooms', N'/sresim/1.png')
INSERT [dbo].[Teklifler] ([teklifID], [teklifBaslik], [teklifListe], [teklifResim]) VALUES (2, N'Popular Choice', N'Speacial Beach, Child Room', N'/sresim/2.png')
INSERT [dbo].[Teklifler] ([teklifID], [teklifBaslik], [teklifListe], [teklifResim]) VALUES (3, N'Short-Time Offer', N'The cheapest vacation', N'/sresim/3.png')
GO
INSERT [dbo].[Video] ([videoID], [videoBaslik], [videoOzet], [videoLink], [videoBG]) VALUES (1, N'Istanbul Holiday Hotel', N'Relax and Feel History', N'https://www.youtube.com/watch?v=GE31_RPxVPk', N'../images/banner22.png')
GO
SET IDENTITY_INSERT [dbo].[Yonetici] ON 

INSERT [dbo].[Yonetici] ([yoneticiID], [yoneticiAdSoyad], [yoneticiKullanici], [yoneticiSifre]) VALUES (1, N'Taha Efe', N'tahaefe', N'1234')
INSERT [dbo].[Yonetici] ([yoneticiID], [yoneticiAdSoyad], [yoneticiKullanici], [yoneticiSifre]) VALUES (2, N'Guest', N'deneme', N'a')
SET IDENTITY_INSERT [dbo].[Yonetici] OFF
GO
ALTER TABLE [dbo].[iletisim] ADD  CONSTRAINT [DF_iletisim_iletisimTarih]  DEFAULT (getdate()) FOR [iletisimTarih]
GO
ALTER TABLE [dbo].[Makale] ADD  CONSTRAINT [DF_Makale_makaleTarih]  DEFAULT (getdate()) FOR [makaleTarih]
GO
USE [master]
GO
ALTER DATABASE [webDB] SET  READ_WRITE 
GO
