USE [SmartParking]
GO
/****** Object:  Table [dbo].[Masina]    Script Date: 7/8/2016 5:27:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Masina](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ModelID] [int] NOT NULL,
	[NumarInmatriculare] [nvarchar](50) NOT NULL,
	[Culoare] [nvarchar](50) NULL,
 CONSTRAINT [PK_Masina] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Model]    Script Date: 7/8/2016 5:27:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Model](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nume] [nvarchar](100) NOT NULL,
	[ProducatorID] [int] NOT NULL,
	[An] [int] NOT NULL,
	[Activ] [bit] NULL,
 CONSTRAINT [PK__Model__3214EC2707B0DA29] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Producator]    Script Date: 7/8/2016 5:27:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producator](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nume] [nvarchar](100) NOT NULL,
	[Activ] [bit] NULL,
 CONSTRAINT [PK_Producator] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Vizita]    Script Date: 7/8/2016 5:27:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vizita](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MasinaID] [int] NOT NULL,
	[DataSosire] [datetime2](7) NOT NULL,
	[DataPlecare] [datetime2](7) NULL,
	[Durata]  AS (datediff(minute,[DataSosire],[DataPlecare])/(60.0)),
 CONSTRAINT [PK_Vizita] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Masina] ON 

INSERT [dbo].[Masina] ([ID], [ModelID], [NumarInmatriculare], [Culoare]) VALUES (1, 5, N'B14BHC', N'Argintiu')
INSERT [dbo].[Masina] ([ID], [ModelID], [NumarInmatriculare], [Culoare]) VALUES (2, 9, N'B92ISJ', N'Fuchsia')
INSERT [dbo].[Masina] ([ID], [ModelID], [NumarInmatriculare], [Culoare]) VALUES (3, 1, N'B12PWC', N'Rosu')
INSERT [dbo].[Masina] ([ID], [ModelID], [NumarInmatriculare], [Culoare]) VALUES (4, 8, N'TL84MSS', N'Albastru')
INSERT [dbo].[Masina] ([ID], [ModelID], [NumarInmatriculare], [Culoare]) VALUES (5, 2, N'VN51HIE', N'Negru')
INSERT [dbo].[Masina] ([ID], [ModelID], [NumarInmatriculare], [Culoare]) VALUES (6, 2, N'B02TYM', N'Alb')
INSERT [dbo].[Masina] ([ID], [ModelID], [NumarInmatriculare], [Culoare]) VALUES (7, 13, N'B08HSW', N'Rosu')
INSERT [dbo].[Masina] ([ID], [ModelID], [NumarInmatriculare], [Culoare]) VALUES (8, 11, N'B95QPC', N'Mov')
INSERT [dbo].[Masina] ([ID], [ModelID], [NumarInmatriculare], [Culoare]) VALUES (9, 15, N'IF44SUE', N'Albastru')
INSERT [dbo].[Masina] ([ID], [ModelID], [NumarInmatriculare], [Culoare]) VALUES (10, 6, N'CJ99BEZ', N'Verde')
INSERT [dbo].[Masina] ([ID], [ModelID], [NumarInmatriculare], [Culoare]) VALUES (11, 3, N'GR81NGD', N'Alb')
INSERT [dbo].[Masina] ([ID], [ModelID], [NumarInmatriculare], [Culoare]) VALUES (12, 5, N'B52ITP', N'Albastru')
INSERT [dbo].[Masina] ([ID], [ModelID], [NumarInmatriculare], [Culoare]) VALUES (13, 6, N'B72NSB', N'Maro')
INSERT [dbo].[Masina] ([ID], [ModelID], [NumarInmatriculare], [Culoare]) VALUES (14, 5, N'B19WID', N'Portocaliu')
INSERT [dbo].[Masina] ([ID], [ModelID], [NumarInmatriculare], [Culoare]) VALUES (15, 12, N'TM29PUA', N'Magenta')
INSERT [dbo].[Masina] ([ID], [ModelID], [NumarInmatriculare], [Culoare]) VALUES (17, 14, N'B58ASD', N'Rosu')
INSERT [dbo].[Masina] ([ID], [ModelID], [NumarInmatriculare], [Culoare]) VALUES (18, 9, N'IF29EYR', N'Negru')
INSERT [dbo].[Masina] ([ID], [ModelID], [NumarInmatriculare], [Culoare]) VALUES (19, 4, N'GJ84LZS', N'Galben')
INSERT [dbo].[Masina] ([ID], [ModelID], [NumarInmatriculare], [Culoare]) VALUES (20, 10, N'MS71UNF', N'Rosu')
SET IDENTITY_INSERT [dbo].[Masina] OFF
SET IDENTITY_INSERT [dbo].[Model] ON 

INSERT [dbo].[Model] ([ID], [Nume], [ProducatorID], [An], [Activ]) VALUES (1, N'Focus', 1, 2015, 1)
INSERT [dbo].[Model] ([ID], [Nume], [ProducatorID], [An], [Activ]) VALUES (2, N'Fiesta', 1, 2014, 1)
INSERT [dbo].[Model] ([ID], [Nume], [ProducatorID], [An], [Activ]) VALUES (3, N'Mustang', 1, 2015, 1)
INSERT [dbo].[Model] ([ID], [Nume], [ProducatorID], [An], [Activ]) VALUES (4, N'Viper', 2, 2014, 1)
INSERT [dbo].[Model] ([ID], [Nume], [ProducatorID], [An], [Activ]) VALUES (5, N'Logan', 3, 2015, 1)
INSERT [dbo].[Model] ([ID], [Nume], [ProducatorID], [An], [Activ]) VALUES (6, N'Duster', 3, 2016, 1)
INSERT [dbo].[Model] ([ID], [Nume], [ProducatorID], [An], [Activ]) VALUES (7, N'Astra', 4, 2012, 1)
INSERT [dbo].[Model] ([ID], [Nume], [ProducatorID], [An], [Activ]) VALUES (8, N'Patriot', 5, 2015, 1)
INSERT [dbo].[Model] ([ID], [Nume], [ProducatorID], [An], [Activ]) VALUES (9, N'Qashqai', 6, 2014, 1)
INSERT [dbo].[Model] ([ID], [Nume], [ProducatorID], [An], [Activ]) VALUES (10, N'Passat', 7, 2015, 1)
INSERT [dbo].[Model] ([ID], [Nume], [ProducatorID], [An], [Activ]) VALUES (11, N'Golf', 7, 2014, 1)
INSERT [dbo].[Model] ([ID], [Nume], [ProducatorID], [An], [Activ]) VALUES (12, N'X5', 8, 2013, 1)
INSERT [dbo].[Model] ([ID], [Nume], [ProducatorID], [An], [Activ]) VALUES (13, N'X6', 8, 2015, 1)
INSERT [dbo].[Model] ([ID], [Nume], [ProducatorID], [An], [Activ]) VALUES (14, N'A4', 9, 2013, 1)
INSERT [dbo].[Model] ([ID], [Nume], [ProducatorID], [An], [Activ]) VALUES (15, N'A5', 9, 2015, 1)
SET IDENTITY_INSERT [dbo].[Model] OFF
SET IDENTITY_INSERT [dbo].[Producator] ON 

INSERT [dbo].[Producator] ([ID], [Nume], [Activ]) VALUES (1, N'Ford', 1)
INSERT [dbo].[Producator] ([ID], [Nume], [Activ]) VALUES (2, N'Dodge', 1)
INSERT [dbo].[Producator] ([ID], [Nume], [Activ]) VALUES (3, N'Dacia', 1)
INSERT [dbo].[Producator] ([ID], [Nume], [Activ]) VALUES (4, N'Opel', 1)
INSERT [dbo].[Producator] ([ID], [Nume], [Activ]) VALUES (5, N'Jeep', 1)
INSERT [dbo].[Producator] ([ID], [Nume], [Activ]) VALUES (6, N'Nissan', 1)
INSERT [dbo].[Producator] ([ID], [Nume], [Activ]) VALUES (7, N'Volkswagen', 1)
INSERT [dbo].[Producator] ([ID], [Nume], [Activ]) VALUES (8, N'Porsche', 1)
INSERT [dbo].[Producator] ([ID], [Nume], [Activ]) VALUES (9, N'BMW', 1)
INSERT [dbo].[Producator] ([ID], [Nume], [Activ]) VALUES (10, N'Audi', 1)
SET IDENTITY_INSERT [dbo].[Producator] OFF
SET IDENTITY_INSERT [dbo].[Vizita] ON 

INSERT [dbo].[Vizita] ([ID], [MasinaID], [DataSosire], [DataPlecare]) VALUES (1, 11, CAST(N'2016-07-03 09:00:00.0000000' AS DateTime2), CAST(N'2016-07-03 11:40:00.0000000' AS DateTime2))
INSERT [dbo].[Vizita] ([ID], [MasinaID], [DataSosire], [DataPlecare]) VALUES (2, 4, CAST(N'2016-07-03 12:00:00.0000000' AS DateTime2), CAST(N'2016-07-03 13:40:00.0000000' AS DateTime2))
INSERT [dbo].[Vizita] ([ID], [MasinaID], [DataSosire], [DataPlecare]) VALUES (3, 2, CAST(N'2016-07-03 14:30:00.0000000' AS DateTime2), CAST(N'2016-07-03 17:22:00.0000000' AS DateTime2))
INSERT [dbo].[Vizita] ([ID], [MasinaID], [DataSosire], [DataPlecare]) VALUES (4, 9, CAST(N'2016-07-03 19:30:00.0000000' AS DateTime2), CAST(N'2016-07-03 22:32:00.0000000' AS DateTime2))
INSERT [dbo].[Vizita] ([ID], [MasinaID], [DataSosire], [DataPlecare]) VALUES (5, 4, CAST(N'2016-07-04 09:30:00.0000000' AS DateTime2), CAST(N'2016-07-04 10:20:00.0000000' AS DateTime2))
INSERT [dbo].[Vizita] ([ID], [MasinaID], [DataSosire], [DataPlecare]) VALUES (6, 7, CAST(N'2016-07-04 10:14:00.0000000' AS DateTime2), CAST(N'2016-07-04 14:20:00.0000000' AS DateTime2))
INSERT [dbo].[Vizita] ([ID], [MasinaID], [DataSosire], [DataPlecare]) VALUES (7, 1, CAST(N'2016-07-04 10:34:00.0000000' AS DateTime2), CAST(N'2016-07-04 12:01:00.0000000' AS DateTime2))
INSERT [dbo].[Vizita] ([ID], [MasinaID], [DataSosire], [DataPlecare]) VALUES (9, 17, CAST(N'2016-07-04 12:20:00.0000000' AS DateTime2), CAST(N'2016-07-04 15:20:00.0000000' AS DateTime2))
INSERT [dbo].[Vizita] ([ID], [MasinaID], [DataSosire], [DataPlecare]) VALUES (12, 19, CAST(N'2016-07-04 13:02:00.0000000' AS DateTime2), CAST(N'2016-07-04 14:20:00.0000000' AS DateTime2))
INSERT [dbo].[Vizita] ([ID], [MasinaID], [DataSosire], [DataPlecare]) VALUES (13, 5, CAST(N'2016-07-04 14:39:00.0000000' AS DateTime2), CAST(N'2016-07-04 15:52:00.0000000' AS DateTime2))
INSERT [dbo].[Vizita] ([ID], [MasinaID], [DataSosire], [DataPlecare]) VALUES (14, 6, CAST(N'2016-07-04 16:11:00.0000000' AS DateTime2), CAST(N'2016-07-04 19:41:00.0000000' AS DateTime2))
INSERT [dbo].[Vizita] ([ID], [MasinaID], [DataSosire], [DataPlecare]) VALUES (15, 14, CAST(N'2016-07-04 18:19:00.0000000' AS DateTime2), CAST(N'2016-07-04 19:59:00.0000000' AS DateTime2))
INSERT [dbo].[Vizita] ([ID], [MasinaID], [DataSosire], [DataPlecare]) VALUES (19, 10, CAST(N'2016-07-04 19:43:00.0000000' AS DateTime2), CAST(N'2016-07-04 21:07:00.0000000' AS DateTime2))
INSERT [dbo].[Vizita] ([ID], [MasinaID], [DataSosire], [DataPlecare]) VALUES (20, 3, CAST(N'2016-07-04 20:34:00.0000000' AS DateTime2), CAST(N'2016-07-04 22:57:00.0000000' AS DateTime2))
INSERT [dbo].[Vizita] ([ID], [MasinaID], [DataSosire], [DataPlecare]) VALUES (21, 8, CAST(N'2016-07-04 20:47:00.0000000' AS DateTime2), CAST(N'2016-07-04 22:02:00.0000000' AS DateTime2))
INSERT [dbo].[Vizita] ([ID], [MasinaID], [DataSosire], [DataPlecare]) VALUES (22, 13, CAST(N'2016-07-05 09:11:00.0000000' AS DateTime2), CAST(N'2016-07-05 09:56:00.0000000' AS DateTime2))
INSERT [dbo].[Vizita] ([ID], [MasinaID], [DataSosire], [DataPlecare]) VALUES (23, 15, CAST(N'2016-07-05 10:20:00.0000000' AS DateTime2), CAST(N'2016-07-05 12:06:00.0000000' AS DateTime2))
INSERT [dbo].[Vizita] ([ID], [MasinaID], [DataSosire], [DataPlecare]) VALUES (24, 18, CAST(N'2016-07-05 10:45:00.0000000' AS DateTime2), CAST(N'2016-07-05 13:14:00.0000000' AS DateTime2))
INSERT [dbo].[Vizita] ([ID], [MasinaID], [DataSosire], [DataPlecare]) VALUES (25, 20, CAST(N'2016-07-05 11:42:00.0000000' AS DateTime2), CAST(N'2016-07-05 13:49:00.0000000' AS DateTime2))
INSERT [dbo].[Vizita] ([ID], [MasinaID], [DataSosire], [DataPlecare]) VALUES (26, 5, CAST(N'2016-07-05 13:05:00.0000000' AS DateTime2), CAST(N'2016-07-05 14:52:00.0000000' AS DateTime2))
INSERT [dbo].[Vizita] ([ID], [MasinaID], [DataSosire], [DataPlecare]) VALUES (27, 3, CAST(N'2016-07-05 14:54:00.0000000' AS DateTime2), CAST(N'2016-07-05 16:51:00.0000000' AS DateTime2))
INSERT [dbo].[Vizita] ([ID], [MasinaID], [DataSosire], [DataPlecare]) VALUES (28, 4, CAST(N'2016-07-05 15:23:00.0000000' AS DateTime2), CAST(N'2016-07-05 17:55:00.0000000' AS DateTime2))
INSERT [dbo].[Vizita] ([ID], [MasinaID], [DataSosire], [DataPlecare]) VALUES (29, 6, CAST(N'2016-07-05 17:29:00.0000000' AS DateTime2), CAST(N'2016-07-05 19:00:00.0000000' AS DateTime2))
INSERT [dbo].[Vizita] ([ID], [MasinaID], [DataSosire], [DataPlecare]) VALUES (30, 12, CAST(N'2016-07-05 18:20:00.0000000' AS DateTime2), CAST(N'2016-07-05 21:50:00.0000000' AS DateTime2))
INSERT [dbo].[Vizita] ([ID], [MasinaID], [DataSosire], [DataPlecare]) VALUES (31, 17, CAST(N'2016-07-05 19:38:00.0000000' AS DateTime2), CAST(N'2016-07-05 22:32:00.0000000' AS DateTime2))
INSERT [dbo].[Vizita] ([ID], [MasinaID], [DataSosire], [DataPlecare]) VALUES (32, 15, CAST(N'2016-07-06 09:22:00.0000000' AS DateTime2), CAST(N'2016-07-06 12:41:00.0000000' AS DateTime2))
INSERT [dbo].[Vizita] ([ID], [MasinaID], [DataSosire], [DataPlecare]) VALUES (33, 1, CAST(N'2016-07-06 10:30:00.0000000' AS DateTime2), CAST(N'2016-07-06 11:22:00.0000000' AS DateTime2))
INSERT [dbo].[Vizita] ([ID], [MasinaID], [DataSosire], [DataPlecare]) VALUES (34, 4, CAST(N'2016-07-06 11:42:00.0000000' AS DateTime2), CAST(N'2016-07-06 13:45:00.0000000' AS DateTime2))
INSERT [dbo].[Vizita] ([ID], [MasinaID], [DataSosire], [DataPlecare]) VALUES (35, 9, CAST(N'2016-07-06 12:54:00.0000000' AS DateTime2), CAST(N'2016-07-06 14:22:00.0000000' AS DateTime2))
INSERT [dbo].[Vizita] ([ID], [MasinaID], [DataSosire], [DataPlecare]) VALUES (36, 13, CAST(N'2016-07-06 13:49:00.0000000' AS DateTime2), CAST(N'2016-07-06 16:11:00.0000000' AS DateTime2))
INSERT [dbo].[Vizita] ([ID], [MasinaID], [DataSosire], [DataPlecare]) VALUES (37, 8, CAST(N'2016-07-06 15:52:00.0000000' AS DateTime2), CAST(N'2016-07-06 19:03:00.0000000' AS DateTime2))
INSERT [dbo].[Vizita] ([ID], [MasinaID], [DataSosire], [DataPlecare]) VALUES (38, 18, CAST(N'2016-07-06 16:57:00.0000000' AS DateTime2), CAST(N'2016-07-06 18:41:00.0000000' AS DateTime2))
INSERT [dbo].[Vizita] ([ID], [MasinaID], [DataSosire], [DataPlecare]) VALUES (39, 20, CAST(N'2016-07-06 18:03:00.0000000' AS DateTime2), CAST(N'2016-07-06 21:43:00.0000000' AS DateTime2))
INSERT [dbo].[Vizita] ([ID], [MasinaID], [DataSosire], [DataPlecare]) VALUES (40, 4, CAST(N'2016-07-06 19:00:00.0000000' AS DateTime2), CAST(N'2016-07-06 21:29:00.0000000' AS DateTime2))
INSERT [dbo].[Vizita] ([ID], [MasinaID], [DataSosire], [DataPlecare]) VALUES (41, 11, CAST(N'2016-07-06 19:31:00.0000000' AS DateTime2), CAST(N'2016-07-06 21:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Vizita] OFF
ALTER TABLE [dbo].[Masina]  WITH CHECK ADD  CONSTRAINT [FK_Masina_Model] FOREIGN KEY([ModelID])
REFERENCES [dbo].[Model] ([ID])
GO
ALTER TABLE [dbo].[Masina] CHECK CONSTRAINT [FK_Masina_Model]
GO
ALTER TABLE [dbo].[Model]  WITH CHECK ADD  CONSTRAINT [FK_Model_Producator] FOREIGN KEY([ProducatorID])
REFERENCES [dbo].[Producator] ([ID])
GO
ALTER TABLE [dbo].[Model] CHECK CONSTRAINT [FK_Model_Producator]
GO
ALTER TABLE [dbo].[Vizita]  WITH CHECK ADD  CONSTRAINT [FK_Vizita_Masina] FOREIGN KEY([MasinaID])
REFERENCES [dbo].[Masina] ([ID])
GO
ALTER TABLE [dbo].[Vizita] CHECK CONSTRAINT [FK_Vizita_Masina]
GO
